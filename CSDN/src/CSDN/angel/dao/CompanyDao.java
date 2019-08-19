package CSDN.angel.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import CSDN.angel.model.User;
import CSDN.angel.model.company;
import CSDN.angel.util.JDBCUtil;

public class CompanyDao {
	private String businessName;
	private String businessType;
	private int businessNum;
	private String businessTime;
	private String businessEducation;
	private String businessAdress;
	private String businessLogo;
	private String businessSalary;

	public List<company> searchCompany(String businessName) {
		List<company> companylist = new ArrayList<company>();
		JDBCUtil util = new JDBCUtil();
		String sql = "select * from tb_business where business_name=?";
		ResultSet rs;
		try {
			rs = util.executeQuery(sql, businessName);

			company Company = null;
			while (rs.next()) {
				Company = new company();
				Company.setBusinessName(rs.getString("business_name"));
				Company.setBusinessType(rs.getString("business_type"));
				Company.setBusinessNum(rs.getInt("business_num"));
				Company.setBusinessTime(rs.getString("business_time"));
				Company.setBusinessEducation(rs.getString("business_education"));
				Company.setBusinessAdress(rs.getString("business_Adress"));
				Company.setBusinessLogo(rs.getString("business_logo"));
				Company.setBusinessSalary(rs.getString("business_salary"));
				companylist.add(Company);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			util.close();
		}
		return companylist;
	}

	public boolean addPosition(String businessName, String businessType, int businessNum, String businessTime,
			String businessEducation, String businessAdress, String businessLogo, String businessSalary)
	{
		boolean result = false;
		JDBCUtil util = new JDBCUtil();
		String sql = "insert into tb_business (business_name,business_type,business_num,business_salary,business_time,business_education,business_adress,business_logo) values(?,?,?,?,?,?,?,?)";
		ResultSet rs;
		try {
			util.executeUpdate(sql, businessName,businessType,businessNum,businessSalary,businessTime,businessEducation,businessAdress,businessLogo);
			result = true;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			util.close();
		}
		return result;
	}

	public boolean searchPositionInCompany(company Company) {
		boolean result=false;
		JDBCUtil util =new JDBCUtil();
		String sql="select *from tb_business where business_name=? and business_type=?";
		ResultSet rs;
		try {
			rs=util.executeQuery(sql,Company.getBusinessName(),Company.getBusinessType());
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

	public company searchPositiony(String name, String type) {
		company Com=null;
		JDBCUtil util=new JDBCUtil();
		String sql="select * from tb_business where business_name=? and business_type=?";
		ResultSet rs;
		try {
			rs=util.executeQuery(sql,name,type);
			if(rs.next()){
				Com=new company();
				Com.setBusinessName(rs.getString("business_name"));
				Com.setBusinessType(rs.getString("business_type"));
				Com.setBusinessNum(rs.getInt("business_num"));
				Com.setBusinessTime(rs.getString("business_time"));
				Com.setBusinessEducation(rs.getString("business_education"));
				Com.setBusinessAdress(rs.getString("business_Adress"));
				Com.setBusinessLogo(rs.getString("business_logo"));
				Com.setBusinessSalary(rs.getString("business_salary"));
				
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
		return Com;
	}

	public boolean updatePosition(String name, String type, int i, String time, String education, String adress,
			String salary) {
		boolean result=false;
		JDBCUtil util=new JDBCUtil();
		String sql="update tb_business set business_num=?,business_time=?,business_education=?,business_adress=?,business_salary=? where business_name=? and business_type=?";
		try {
			int num=util.executeUpdate(sql, i,time,education,adress,salary,name,type);
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

	public boolean deletePosition(String name, String type) {
		boolean result=false;
		JDBCUtil util=new JDBCUtil();
		String sql="delete from tb_business where business_name=? and business_type=?";
		try {
			int num=util.executeUpdate(sql, name,type);
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
}
