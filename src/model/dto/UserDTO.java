package model.dto;


public class UserDTO {
	private String id;
	private String password;
	private String name;
	private String university;
	private String college;
	private String major;
	private String num;
	private int grade;

	public UserDTO() {
		super();
	}

	public UserDTO(String id, String password, String name, String university, String college, String major, String num,
			int grade) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.university = university;
		this.college = college;
		this.major = major;
		this.num = num;
		this.grade = grade;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	

}
