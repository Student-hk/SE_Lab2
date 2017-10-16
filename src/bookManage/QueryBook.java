package bookManage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class QueryBook extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String title;
	private String ISBN;
	private String authorID;
	private String publisher;
	private String publishDate;
	private double price;
	
	private String name;
	private int age;
	private String country;
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getTitle() {
		return this.title;
	}
	
	public String getISBN() {
		return this.ISBN;
	}
	
	public String getAuthorID() {
		return this.authorID;
	}
	
	public String getPublisher() {
		return this.publisher;
	}
	
	public String getPublishDate() {
		return this.publishDate;
	}
	
	public double getPrice() {
		return this.price;
	}
	
	public String getName() {
		return this.name;
	}
	
	public int getAge() {
		return this.age;
	}
	
	public String getCountry() {
		return this.country;
	}
	
	public String execute() throws Exception {
		Connection con = MySQLConnector.getConnection();
		try {
			Statement statement = con.createStatement();
			String sql = "select * from Book where Title = \"" + title +"\"";
			ResultSet result = statement.executeQuery(sql);
			if(result.first()) {
				ISBN = result.getString("ISBN");
				authorID = result.getString("AuthorID");
				publisher = result.getString("Publisher");
				publishDate = result.getDate("PublishDate").toString();
				price = result.getDouble("price");
			}
			else {
				return "error";
			}
			
			String sql2 = "select * from Author where AuthorID = \""+authorID+"\"";
			result = statement.executeQuery(sql2);
			if(result.first()) {
				name = result.getString("Name");
				age = result.getInt("Age");
				country = result.getString("country");
			}
			else {
				return "error";
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
