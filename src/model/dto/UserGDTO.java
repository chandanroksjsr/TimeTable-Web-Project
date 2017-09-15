package model.dto;

public class UserGDTO {

	private String id;
	private String semester;
	private String subject;
	private float credit;
	private String grade;
	
	public UserGDTO() {
	}

	public UserGDTO(String id, String semester, String subject, float credit, String grade) {
		super();
		this.id = id;
		this.semester = semester;
		this.subject = subject;
		this.credit = credit;
		this.grade = grade;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public float getCredit() {
		return credit;
	}

	public void setCredit(float credit) {
		this.credit = credit;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	
}
