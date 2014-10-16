package lab2;

import com.opensymphony.xwork2.ActionSupport;

public class Action_delete extends ActionSupport{
	private String booktitle = "";
	public void setBooktitle(String booktitle){
		this.booktitle = booktitle;
	}
	public String setBooktitle(){
		return this.booktitle;
	}
	public String execute(){ 
		Function book = new Function();
		book.deletebook(booktitle); 
		return SUCCESS;
	}

}
