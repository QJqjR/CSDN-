package CSDN.angel.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import CSDN.angel.model.Job;
import CSDN.angel.model.User;
import CSDN.angel.util.JDBCUtil;

public class JobDao {
	private int id;
	private String comLogo;
	private String comPosition;
	private String comName;
	private String comSalay;
	private String comTime;
	private String comEducation;
	private String comAdress;
	
	public int getJobNum(){
		int num=0;
		JDBCUtil util=new JDBCUtil();
		String sql="select count(*) from tb_job";
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
	
	public List<Job> searchJobsByPage(int start,int end){
		List<Job> joblist=new ArrayList<Job>();
		JDBCUtil util=new JDBCUtil();
		String sql="select * from tb_job limit ?,?";
		try {
			ResultSet rs=util.executeQuery(sql, start,end);
			Job job=null;
			while(rs.next()){
				job=new Job();
				job.setId(rs.getInt("com_id"));
				job.setComLogo(rs.getString("com_logo"));
				job.setComPosition(rs.getString("com_position"));
				job.setComName(rs.getString("com_name"));
				job.setComSalary(rs.getString("com_salary"));
				job.setComTime(rs.getString("com_time"));
				job.setComAdress(rs.getString("com_adress"));
				job.setComEducation(rs.getString("com_education"));
				joblist.add(job);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.close();
		}
		return joblist;
	}

	public int getPositionNum(String pos) {
		int num=0;
		JDBCUtil util=new JDBCUtil();
		String sql="select COUNT(*) from tb_job where com_position LIKE '%C++%'";
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

	public List<Job> searchPositionsByPage() {
		List<Job> joblist=new ArrayList<Job>();
		JDBCUtil util=new JDBCUtil();
		String sql="select * from tb_job where com_position LIKE '%C++%'";
		try {
			ResultSet rs=util.executeQuery(sql);
			Job job=null;
			while(rs.next()){
				job=new Job();
				job.setComLogo(rs.getString("com_logo"));
				job.setComPosition(rs.getString("com_position"));
				job.setComName(rs.getString("com_name"));
				job.setComSalary(rs.getString("com_salary"));
				job.setComTime(rs.getString("com_time"));
				job.setComAdress(rs.getString("com_adress"));
				job.setComEducation(rs.getString("com_education"));
				joblist.add(job);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.close();
		}
		return joblist;
	}
	
	public List<Job> searchPositionsByName(String comName) {
		List<Job> joblist=new ArrayList<Job>();
		JDBCUtil util=new JDBCUtil();
		String sql="select * from tb_job where com_name LIKE '广州西洋汇信息技术有限公司'";
		try {
			ResultSet rs=util.executeQuery(sql);
			Job job=null;
			while(rs.next()){
				job=new Job();
				job.setId(rs.getInt("com_id"));
				job.setComLogo(rs.getString("com_logo"));
				job.setComPosition(rs.getString("com_position"));
				job.setComName(rs.getString("com_name"));
				job.setComSalary(rs.getString("com_salary"));
				job.setComTime(rs.getString("com_time"));
				job.setComAdress(rs.getString("com_adress"));
				job.setComEducation(rs.getString("com_education"));
				joblist.add(job);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.close();
		}
		return joblist;
	}
}
