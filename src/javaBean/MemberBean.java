package javaBean;

public class MemberBean {

	private String id;
	private String pass;
	private String name;
	private String addr;
	private String tel;
	private String hobby;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	
	public String getHobby1() {
		String hob = "";
		
		if(hobby.equals("1")) {
			hob = "유튜브시청";
		}else if(hobby.equals("2")) {
			hob = "기타";
		}else if(hobby.equals("3")) {
			hob = "게임";
		}else {
			hob = "독서";
		}
		
		return hob;
	}
}
