package bookManage;

import java.sql.Connection;
import java.sql.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteBook extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String title;
	
	public String getTitle() {
		return this.title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String execute() throws Exception {
		Connection con = MySQLConnector.getConnection();
		Statement statement = con.createStatement();
		try {
			String sql = "delete from Book where Title = \"" + title + "\"";
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