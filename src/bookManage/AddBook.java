package bookManage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.opensymphony.xwork2.ActionSupport;


public class AddBook extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String ISBN;
    private String title;
    private String authorID;
    private String publisher;
    private String publishDate;
    private double price;
    
    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }
    
    public void setTitle(String title) {
        this.title = title;
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
    
    public String getTitle() {
    	return this.title;
    }
    
    public String execute() throws Exception {
    	Connection con = MySQLConnector.getConnection();
        try {
            Statement statement = con.createStatement();
            String sql = "insert into Book (ISBN, Title, AuthorID, Publisher, PublishDate, Price) values (\"" 
                + ISBN + "\", \"" 
            	+ title + "\", \"" 
                + authorID + "\", \"" 
            	+ publisher + "\", \""
                + publishDate + "\", "
                + price + ")";
            statement.executeUpdate(sql);
            
            String sql2 = "select * from Author where AuthorID = \"" + authorID + "\"";
            ResultSet result = statement.executeQuery(sql2);
            if (!result.first()) {
                return "addBookAuthor";
            }
            statement.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }
}
