package lab2;

import com.opensymphony.xwork2.ActionSupport;

public class Action_viewinf extends ActionSupport{
	private String booktitle;
	Book bookinf = new Book();
	
	public void setBooktitle(String booktitle){
		this.booktitle =booktitle;
	}
	
	public Book getBookinf(){
		return bookinf;
	}
	
	public String setBooktitle(){
		return this.booktitle;
	}
	
	public String execute(){
		Function book = new Function();
		bookinf = book.view_book_inf(booktitle);
		return SUCCESS;
	}
}
