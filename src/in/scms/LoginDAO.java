package in.scms;import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class LoginDAO {

	JdbcTemplate jdbcTemplate;
	DataSource dataSource;
	LoginDTO login;
	JdbcTemplate jdbctemplate;
	DataSource datasource;
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}


	public int login()
	{
		int hiddenVariable =0;
		String uname=login.getUsername();
		String upass=login.getPassword();
		String sql = "select username,password from user_common_details where user_name==uname &&password==password ";
		if(uname=="" && upass=="")
		{
			hiddenVariable=-1;
			
			
			
		}
		else	{
			 return 1;
		}
				
		return hiddenVariable;
	}
	
}
