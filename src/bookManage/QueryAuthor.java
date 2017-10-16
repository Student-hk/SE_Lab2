package bookManage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class QueryAuthor extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String name;
	private List<Book> books = new ArrayList<Book>();
	private String info = "";
    
    public String getInfo() {
		return this.info;
	}
    
	public String getName() {
		return this.name+"的";
	}
	
    public void setName(String name) {
    	this.name = name;
    }
    
    public List<Book> getBooks() {
		return this.books;
	}
    
    public String execute() throws Exception {
    	Connection con = MySQLConnector.getConnection();
		String authorID = null;
		try {
			Statement statement1 = con.createStatement();
			Statement statement2 = con.createStatement();
			String sql = "select * from Author where Name = \"" + name + "\"";
			ResultSet result1 = statement1.executeQuery(sql);
			ResultSet result2 = null;
			Book bookTmp=null;
			while (result1.next()) {
				authorID = result1.getString("AuthorID");
				if (authorID != null) {
					String sql2 = "select * from Book,Author where Book.AuthorID=Author.AuthorID and Author.AuthorID = " + authorID;
					result2 = statement2.executeQuery(sql2);
					
					while (result2.next()) {
						bookTmp=new Book();
						bookTmp.setTitle(result2.getString("Title"));
						bookTmp.setName(result2.getString("Name"));
						bookTmp.setPublisher(result2.getString("Publisher"));
						bookTmp.setISBN(result2.getString("ISBN"));
						bookTmp.setPrice(result2.getString("Price"));
						books.add(bookTmp);
					}
					
				}
			}
			if(books.size()==0) {
				info="该作者没有任何图书，可以添加该作者的图书到管理库";
				statement1.close();
				statement2.close();
				con.close();
				return "fail";
			}
			statement1.close();
			statement2.close();
			con.close();
		}catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		return "success";
	}
}