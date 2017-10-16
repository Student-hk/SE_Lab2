package bookManage;

import java.sql.Connection;
import java.sql.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class AddAuthor extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String authorID;
    private String name;
    private int age;
    private String country;
    
    public void setAuthorID(String authorID) {
    	this.authorID = authorID;
    }
    
    public void setName(String name) {
    	this.name = name;
    }
    
    public void setAge(int age) {
    	this.age = age;
    }
    
    public void setCountry(String country) {
    	this.country = country;
    }
    
    public String getName(){
    	return this.name+"的";
    }
    
    public String execute() throws Exception {
    	Connection con = MySQLConnector.getConnection();
    	try {
    		Statement statement = con.createStatement();
    		String sql = "insert into Author (AuthorID, Name, Age, Country) values ("
    						+ authorID + ",\""
        		    		+ name + "\", "
        		    		+ age + ", \"" 
        		    		+ country + "\")";
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
