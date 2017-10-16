package bookManage;

import com.opensymphony.xwork2.ActionSupport;

public class UpdateBook1 extends ActionSupport{
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
		return "success";
	}
}