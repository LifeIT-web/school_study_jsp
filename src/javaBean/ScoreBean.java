package javaBean;
// 이게 DTO
public class ScoreBean {// DTO , DAO(?)

	private String name;
	private int point;
	private String tel;
	
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getName() {// getName엔 리턴타입이 존재O/매개변수 안받음
		return name;
	}
	
	public void setName(String name) { // setName엔 리턴타입이 존재x/매개변수 받음
		this.name = name;
	}
	
	public int getPoint() {
		return point;
	}
	
	public void setPoint(int point) {
		this.point = point;
	}
	
	
	
}
