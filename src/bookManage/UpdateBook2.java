package bookManage;

import java.sql.Connection;
import java.sql.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateBook2 extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String title;
	
	private String ISBN;
	private String newTitle;
    private String authorID;
    private String publisher;
    private String publishDate;
    private double price;
    
    public void setTitle(String title) {
		this.title=title;
	}
    
    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }
    
    public void setNewTitle(String newTitle) {
        this.newTitle = newTitle;
    }
    
    public void setAuthorID(String authorID) {
        this.authorID = authorID;
    }
    
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
    
    public void setPublishDate(String publishDate) { 
        this.publishDate = publishDate;
    }
    
    public void setPrice(double price) {
        this.price = price;
    }
	
	public String execute() throws Exception {
		Connection con = MySQLConnector.getConnection();
		Statement statement = con.createStatement();
		try {
			String sql = "update Book set Title=\"" + newTitle
					+ "\",AuthorID=\"" + authorID
					+ "\",ISBN=\"" + ISBN
					+ "\",Publisher=\"" + publisher
					+ "\",PublishDate=\"" + publishDate
					+ "\",Price=\"" + price
					+ "\" where Title = \""+title+"\"";
			statement.executeUpdate(sql);
			statement.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		return "success";
	}
}