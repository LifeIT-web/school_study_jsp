package javaBean;

public class GradeBean {

	private String name;
	private int point;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	// 성적의 학점을 계산하는 메소드 직접 구현
	
	public String getGrade() {
		
		String grade = "";
		
		if (point >= 90) {
			
			grade = "A";
			
		}else if(point >= 80) {
		
			grade = "B";
			
		}else if(point >= 70) {
		
			grade = "C";
			
		}else if(point >= 60) {
			
			grade = "D";
	
		}else {
			
			grade = "F";
			
		}
		
		return grade;
		
	}
	
	public String getTel() {
		return "010-2001-3123";
	}
	
}
