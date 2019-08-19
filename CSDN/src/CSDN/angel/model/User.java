package CSDN.angel.model;

public class User {
	private int id;
	private String userName;
	private String userPass;
	private int userStatus;
	private String userEmail;
	private String userTel;
	private String userSex;
	private String userDate;
	private String userNation;
	private String userPStatus;
	private String userRecord;
	private String userMajor;
	private String userSchool;
	private String userAdress;
	private String userIDCard;
	private String userWantJob;
	private String userEdu;
	private String userExperience;
	
	public User() {
	}
	
	public User(String userName, String userEmail, String userSchool, String userWantJob) {
		super();
		this.userName = userName;
		this.userEmail = userEmail;
		this.userSchool = userSchool;
		this.userWantJob = userWantJob;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public int getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserDate() {
		return userDate;
	}
	public void setUserDate(String userDate) {
		this.userDate = userDate;
	}
	public String getUserNation() {
		return userNation;
	}
	public void setUserNation(String userNation) {
		this.userNation = userNation;
	}
	public String getUserPStatus() {
		return userPStatus;
	}
	public void setUserPStatus(String userPStatus) {
		this.userPStatus = userPStatus;
	}
	public String getUserRecord() {
		return userRecord;
	}
	public void setUserRecord(String userRecord) {
		this.userRecord = userRecord;
	}
	public String getUserMajor() {
		return userMajor;
	}
	public void setUserMajor(String userMajor) {
		this.userMajor = userMajor;
	}
	public String getUserSchool() {
		return userSchool;
	}
	public void setUserSchool(String userSchool) {
		this.userSchool = userSchool;
	}
	public String getUserAdress() {
		return userAdress;
	}
	public void setUserAdress(String userAdress) {
		this.userAdress = userAdress;
	}
	public String getUserIDCard() {
		return userIDCard;
	}
	public void setUserIDCard(String userIDCard) {
		this.userIDCard = userIDCard;
	}
	public String getUserWantJob() {
		return userWantJob;
	}
	public void setUserWantJob(String userWantJob) {
		this.userWantJob = userWantJob;
	}
	public String getUserEdu() {
		return userEdu;
	}
	public void setUserEdu(String userEdu) {
		this.userEdu = userEdu;
	}
	public String getUserExperience() {
		return userExperience;
	}
	public void setUserExperience(String userExperience) {
		this.userExperience = userExperience;
	}
}
