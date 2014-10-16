package lab2;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class Action_viewlist extends ActionSupport {
	private List<String> booklist = null;
	private String authorname;
	
	public void setAuthorname(String authorname){
		this.authorname = authorname;
	}
	
	public List<String> getBooklist(){
		return booklist;
	}
	
	public String setAuthorname(){
		return this.authorname;
	}
	
	public String execute(){
		Function book = new Function();
		booklist = book.viewlist(authorname);
		return SUCCESS;
	}
}
