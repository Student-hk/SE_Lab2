package bookManage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class AllBook extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private List<Book> books = new ArrayList<Book>();
    
    public List<Book> getBooks() {
		return this.books;
	}
    
    private String info = "";
    
    public String getInfo() {
		return this.info;
	}
    
    public String execute() throws Exception {
    	Connection con = MySQLConnector.getConnection();
		try {
			Statement statement = con.createStatement();
			String sql = "select * from Book,Author where Book.AuthorID=Author.AuthorID";
			ResultSet result = statement.executeQuery(sql);
					
			Book bookTmp=null;
			while (result.next()) {
				bookTmp=new Book();
				bookTmp.setTitle(result.getString("Title"));
				bookTmp.setName(result.getString("Name"));
				bookTmp.setPublisher(result.getString("Publisher"));
				bookTmp.setISBN(result.getString("ISBN"));
				bookTmp.setPrice(result.getString("Price"));
				books.add(bookTmp);
			}
			
			if(books.size()==0) {
				info="现在没有任何图书，可以添加图书到管理库";
			}
			
			statement.close();
			con.close();
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

}