package org.kosta.memberproject.model;


public class MemberVO {
	private String id;
	private String password;
	private String name;
	private String address;
	private String birth;
	private String regdate;

	public MemberVO() {
		super();
	}

	public MemberVO(String id, String password, String name, String address, String birth, String regdate) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.address = address;
		this.birth = birth;
		this.regdate = regdate;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", address=" + address + ", birth="
				+ birth + ", regdate=" + regdate + "]";
	}

}
