package CSDN.angel.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import CSDN.angel.model.Browse;
import CSDN.angel.model.company;
import CSDN.angel.util.JDBCUtil;

public class BrowseDao {
	private String browseWeek;
	private int browseProgrammer;
	private int browseArchitect;
	private int browseEngineer;
	private int browseManager;
	
	public Browse seachermeber(String browseWeek){
		Browse bro=null;
		JDBCUtil util=new JDBCUtil();
		String sql="select * from tb_userbrowse where browse_week=?";
		ResultSet rs;
		try {
			rs=util.executeQuery(sql, browseWeek);
			bro=new Browse();
			bro.setBrowseArchitect(rs.getInt("browseArchitect"));
			bro.setBrowseProgrammer(rs.getInt("browseProgrammer"));
			bro.setBrowseEngineer(rs.getInt("browseEngineer"));
			bro.setBrowseManager(rs.getInt("browseManager"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bro;
		
	}

}
