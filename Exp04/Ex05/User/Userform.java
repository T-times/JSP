package vo;

public class UserForm {
	private String username="";		//用户名属性
	private String pwd="";			//用户密码属性
	private String sex="";			//用户性别属性
	private String[] affect=null;	//个人爱好属性
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPwd() {
		return pwd;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSex() {
		return sex;
	}
	public void setAffect(String[] affect) {
		this.affect = affect;
	}
	public String[] getAffect() {

		return affect;
	}
}
