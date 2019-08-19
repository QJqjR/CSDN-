package CSDN.angel.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import CSDN.angel.model.User;
import CSDN.angel.util.JDBCUtil;

public class UserDao {
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
	
	public boolean searchUser(User user){
		boolean result=false;
		JDBCUtil util =new JDBCUtil();
		String sql="select *from tb_user where user_name=? and user_pass=?";
		ResultSet rs;
		try {
			rs=util.executeQuery(sql,user.getUserName(),user.getUserPass());
			if(rs.next()){
		    	result=true;
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.close();
		}
		return result;
	}
	
	public List<User> searchUsers(){
		List<User> userlist=new ArrayList<User>();
		JDBCUtil util=new JDBCUtil();
		String sql="select *from tb_user";
		ResultSet rs;
		try {
			rs=util.executeQuery(sql);
			User user=null;
			while(rs.next()){
				user=new User();
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("user_name"));
				user.setUserPass(rs.getString("user_pass"));
				user.setUserStatus(rs.getInt("user_status"));
				userlist.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.close();
		}
		return userlist;
	}
	public User searchUser(String id){
		User user=null;
		JDBCUtil util=new JDBCUtil();
		String sql="select * from tb_user where id=?";
		ResultSet rs;
		try {
			rs=util.executeQuery(sql, Integer.parseInt(id));
			if(rs.next()){
				user=new User();
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("user_name"));
				user.setUserPass(rs.getString("user_pass"));
				user.setUserStatus(rs.getInt("user_status"));
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.close();
		}
		return user;
	}
	
	public boolean updatePass(String userName,String userPass){
		boolean result=false;
		JDBCUtil util=new JDBCUtil();
		String sql="update tb_user set user_pass=? where user_name=?";
		try {
			int num=util.executeUpdate(sql, userPass,userName);
			if(num>0){
				result=true;
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.close();
		}
		return result;
	}
	
	public boolean deleteUser(String id){
		boolean result=false;
		JDBCUtil util=new JDBCUtil();
		String sql="update tb_user set user_status=1 where id=?";
		try {
			int num=util.executeUpdate(sql, Integer.parseInt(id));
			if(num>0){
				result=true;
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.close();
		}
		return result;
	}

	public boolean addUser(String userName, String userPass,String userQq, String userTel) {
		boolean result=false;
		JDBCUtil util=new JDBCUtil();
		String sql="insert into tb_user (user_name,user_pass,user_status,user_qq,user_tel) values(?,?,?,?,?)";
		ResultSet rs;
		try {
			util.executeUpdate(sql,userName,userPass,0,userQq,userTel);
			result=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.close();
		}
		return result;
	}

	public boolean isExistName(String userName) {
		boolean result=false;
		JDBCUtil util=new JDBCUtil();
		String sql="select * from tb_user where user_name=?";
		try {
			ResultSet rs=util.executeQuery(sql, userName);
			if(rs.next()){
				result=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.close();
		}
		return result;
	}
	
	public int getUserNum(){
		int num=0;
		JDBCUtil util=new JDBCUtil();
		String sql="select count(*) from tb_user";
		try {
			ResultSet rs=util.executeQuery(sql);
			if(rs.next()){
				num=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.close();
		}
		return num;
	}
	
	public List<User> searchUsersByPage(int start,int end){
		List<User> userlist=new ArrayList<User>();
		JDBCUtil util=new JDBCUtil();
		String sql="select * from tb_user limit ?,?";
		try {
			ResultSet rs=util.executeQuery(sql, start,end);
			User user=null;
			while(rs.next()){
				user=new User();
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("user_name"));
				user.setUserPass(rs.getString("user_pass"));
				user.setUserStatus(rs.getInt("user_status"));
				userlist.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.close();
		}
		return userlist;
	}
	
	public User searchOneUser(String userName){
		User user=null;
		JDBCUtil util=new JDBCUtil();
		System.out.println("userName:"+userName);
		String sql="select * from tb_user where user_name=?";
		ResultSet rs;
		try {
			rs=util.executeQuery(sql,userName);
			if(rs.next()){
				user=new User();
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("user_name"));
				user.setUserPass(rs.getString("user_pass"));
				user.setUserStatus(rs.getInt("user_status"));
				user.setUserEmail(rs.getString("user_email"));
				user.setUserTel(rs.getString("user_tel"));
				user.setUserSex(rs.getString("user_sex"));
				user.setUserDate(rs.getString("user_date"));
				user.setUserNation(rs.getString("user_nation"));
				user.setUserPStatus(rs.getString("user_pstatus"));
				user.setUserRecord(rs.getString("user_record"));
				user.setUserIDCard(rs.getString("user_idcard"));
				user.setUserMajor(rs.getString("user_major"));
				user.setUserSchool(rs.getString("user_school"));
				user.setUserAdress(rs.getString("user_adress"));
				user.setUserWantJob(rs.getString("user_wantjob"));
				user.setUserEdu(rs.getString("user_edu"));
				user.setUserExperience(rs.getString("user_experience"));
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.close();
		}
		return user;
	}
}
