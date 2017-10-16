package bookManage;

import com.opensymphony.xwork2.ActionSupport;

public class Book extends ActionSupport{
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String title;
	private String name;
	private String publisher;
	private String ISBN;
	private String price;
	 
	public String getTitle() {
		return this.title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return this.name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPublisher() {
		return this.publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getISBN() {
		return this.ISBN;
	}
	public void setISBN(String ISBN) {
		this.ISBN = ISBN;
	}
	public String getPrice() {
		return this.price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
}


