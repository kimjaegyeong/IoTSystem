package com.IoTSystem.Dto;


public class Member {
	
private String memberId;

private String memberPw;

private String mobile;

private String grade;

public Member() {

}

public Member(String memberId, String memberPw, String mobile, String grade) {
	this.memberId = memberId;
	this.memberPw = memberPw;
	this.mobile = mobile;
	this.grade= grade;
}

public String getMemberId() {
	return memberId;
}

public void setMemberId(String memberId) {
	this.memberId = memberId;
}

public String getMemberPw() {
	return memberPw;
}

public void setMemberPw(String memberPw) {
	this.memberPw = memberPw;
}

public String getMobile() {
	return mobile;
}

public void setMobile(String mobile) {
	this.mobile = mobile;
}

public String getGrade() {
	return grade;
}

public void setGrade(String grade) {
	this.grade = grade;
}


}

