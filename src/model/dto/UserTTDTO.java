package model.dto;

public class UserTTDTO {
	private String id;
	private String semester;
	private int seq;
	private String sep;
	private String num;
	private String subject;
	private float credit;
	
	public UserTTDTO(String id, String semester, int seq, String sep, String num, String subject, float credit) {
		super();
		this.id = id;
		this.semester = semester;
		this.seq = seq;
		this.sep = sep;
		this.num = num;
		this.subject = subject;
		this.credit = credit;
	}

	public UserTTDTO() {
		super();
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

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getSep() {
		return sep;
	}

	public void setSep(String sep) {
		this.sep = sep;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
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
}
