package wooch10;

public class LoginDTO {
	private String id;
	private String name;
	private String pwd;
	
	public LoginDTO() {} //필드가없는 생성자
	
	public LoginDTO(String id,String name,String pwd) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}
	
	public String getId() {
		return id;
	}	
	
	public void setId(String id) {
	
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
	
	}
	
	public String getPwd() {
		return pwd;
	}
	
	public void setPwd(String pwd) {
	
	}

}
