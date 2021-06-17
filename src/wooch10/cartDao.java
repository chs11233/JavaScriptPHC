package wooch10;

public class cartDao {
	
	private int cartID;
	private String customer;
	private String product;
	private int price;
	private String date;

	

	public int getCartID() {
		return cartID;
	}


	public void setCartID(int cartID) {
		this.cartID = cartID;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public cartDao() {}
	
	
public cartDao(String customer, String product, int price) {
		super();
		this.customer = customer;
		this.product = product;
		this.price = price;
	}
public String getCustomer() {
	return customer;
}
public void setCustomer(String customer) {
	this.customer = customer;
}
public String getProduct() {
	return product;
}
public void setProduct(String product) {
	this.product = product;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}

}
