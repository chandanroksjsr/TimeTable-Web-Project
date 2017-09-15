package model.dto;

public class MajorDTO {

	private int id;
	private String grade;
	private String division;
	private String college;
	private String idnum;
	private String major;
	private String subject;
	private float credit;
	private float hours;
	private int classnum;
	private String professor;
	private String lectime;
	private String classroom;
	private String note;
	
	
	public MajorDTO(int id, String grade, String division, String college, String idnum, String major, String subject,
			float credit, float hours, int classnum, String professor, String lectime, String classroom, String note) {
		super();
		this.id = id;
		this.grade = grade;
		this.division = division;
		this.college = college;
		this.idnum = idnum;
		this.major = major;
		this.subject = subject;
		this.credit = credit;
		this.hours = hours;
		this.classnum = classnum;
		this.professor = professor;
		this.lectime = lectime;
		this.classroom = classroom;
		this.note = note;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getIdnum() {
		return idnum;
	}
	public void setIdnum(String idnum) {
		this.idnum = idnum;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
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
	public float getHours() {
		return hours;
	}
	public void setHours(float hours) {
		this.hours = hours;
	}
	public int getClassnum() {
		return classnum;
	}
	public void setClassnum(int classnum) {
		this.classnum = classnum;
	}
	public String getProfessor() {
		return professor;
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}
	public String getLectime() {
		return lectime;
	}
	public void setLectime(String lectime) {
		this.lectime = lectime;
	}
	public String getClassroom() {
		return classroom;
	}
	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
}
