package member.model;


public class Member {
	//필드
	private String member_id;
	private String member_pw;
	private String member_date;
	private String member_tel;
	private String member_email;
	private String member_name;
	private String quit_Y;
	
	
	//생성자
	public Member(String member_id, String member_pw, String member_date, String member_tel,  String member_email, String member_name,String quit_Y ) {
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_date = member_date;
		this.member_tel = member_tel;
		this.member_email = member_email;
		this.member_name = member_name;
		this.quit_Y=quit_Y;
		
	}
	//메서드

	public Member(String membername, String membertel) {
	}
	


	public Member() {
	}

	public String getMember_id() {
		return member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public String getMember_date() {
		return member_date;
	}

	public  String getMember_tel() {
		return member_tel;
	}


	public String getMember_email() {
		return member_email;
	}

	public String getMember_name() {
		
		
		return member_name;
	}
	public String getQuit_Y() {
		return quit_Y;
	}
	//암호 변경 기능을 구현할 때 사용 
	public boolean matchPassword(String pwd) {
		return this.member_pw.equals(pwd);
	}
	//새 암호 변경 기능을 구현할 때 사용
	public void changePassword(String setrepw) {
		System.out.println("changePassword");
		this.member_pw=setrepw;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public void setMember_date(String member_date) {
		this.member_date = member_date;
	}

	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	@Override
	public String toString() {
		return "Member [member_id=" + member_id + ", member_pw=" + member_pw + ", member_date=" + member_date
				+ ", member_tel=" + member_tel + ", member_email=" + member_email + ", member_name=" + member_name
				+ ", quit_Y=" + quit_Y + "]";
	}



	

	
	
	
}
