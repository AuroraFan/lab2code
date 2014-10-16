package lab2;
import com.opensymphony.xwork2.ActionSupport;
public class Action_update extends ActionSupport{
	Book updateinf = new Book();
	Book bookinf = new Book();
	String title;String name;String publisher;String publishdate;Double price;
	public void setTitle(String title){
		this.title = title;
	}
	public void setName(String name){
		this.name = name;
	}
	public void setPublisher(String publisher){
		this.publisher = publisher;
	}
	public void setPublishdate(String publishdate){
		this.publishdate = publishdate;
	}
	public void setPrice(double price){
		this.price = price;
	}
	public Book getBookinf(){
		return bookinf;
	}
	
	public String execute(){
		Function book = new Function();
		updateinf.Title = title;
		updateinf.Name = name;
		updateinf.Price = price;
		updateinf.PublishDate = publishdate;
		updateinf.Publisher = publisher;
		book.updateinf(updateinf);
		bookinf = book.view_book_inf(title);
		return SUCCESS;
		
	}
}
