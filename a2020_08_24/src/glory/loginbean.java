package glory;

public class loginbean {
	private String name;
	private String id;
	private String pwd;
	
	final String _id="system";
	final String _pwd="123456";
	
	public boolean checkuser() {
		if(id.equals(_id) && pwd.equals(pwd)) {
			return true;
		}
		return false;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
}
