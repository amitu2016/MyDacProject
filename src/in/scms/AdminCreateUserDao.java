package in.scms;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;

public class AdminCreateUserDao {


	JdbcTemplate template;
	AdminCreateUserDto  user;
	/*public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		template = new JdbcTemplate(dataSource);
	}*/



	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	//Insert
	public void insertUser(AdminCreateUserDto user) {
		String sql = "INSERT INTO user_common_details(fname,lname,user_name,user_password,dob,email_id,"
				+ "contact_no,nationality,state,city,role) values(?,?,?,?,?,?,?,?,?,?,?)";

		template.update(sql,user.getFname(), user.getLname(), user.getUsername(),user.getUserpass(), user.getDob()
				, user.getEmailid(), user.getContact(),user.getNationality(), user.getState(), user.getCity(),user.getOptradio());;
	}




	public void updateUser(AdminCreateUserDto u1){  
		String sql="update user_common_details set fname=? where user_id=?";  
		template.update(sql,u1.getFname(),u1.getUser_id());  
	}  

	public void updateprofile(AdminCreateUserDto u1){  
		String sql="update user_common_details set fname=?,lname=?,user_name=?,user_password=?,dob=?,email_id=?,contact_no=?,nationality=?,state=?,city=? where user_id=?";  
		template.update(sql,u1.getFname(),u1.getLname(),u1.getUsername(),u1.userpass,u1.getDob(),u1.getEmailid(),u1.getContact(),u1.getNationality(),u1.getState(),u1.getCity(),u1.getUser_id());  
	}  


	public List<Map<String, Object>> showAllTeams() {
		String sql = "SELECT club_id,sport_id,team_name,no_of_match_win,no_of_match_draw,no_of_likes,no_of_match_played FROM `team_details` order by team_details.ctime DESC;";
		List<Map<String, Object>> list = template.queryForList(sql);
		System.out.println(list);

		return list;
	}

	public List<Map<String, Object>> showAllTeamsWithLimit() {
		String sql = "SELECT club_id,sport_id,team_name,team_details.no_of_match_win,no_of_match_draw,no_of_likes,no_of_match_played FROM `team_details` order by team_details.no_of_match_win DESC limit 5";
		List<Map<String, Object>> list = template.queryForList(sql);
		System.out.println(list);

		return list;
	}


	public List<Map<String, Object>> showAllCoaches() {
		String sql = "SELECT fname,lname,sport_name,coach_details.no_of_team_under_coaching,coach_details.year_of_exp,coach_details.no_of_likes\r\n" + 
				"FROM user_common_details,sport_details,user_role,coach_details\r\n" + 
				"WHERE user_role.user_id=coach_details.user_id AND\r\n" + 
				"user_role.user_id=user_common_details.user_id AND\r\n" + 
				"coach_details.sport_id=sport_details.sport_id AND\r\n" + 
				"user_role.role='Coach'\r\n" + 
				"ORDER BY coach_details.ctime DESC\r\n" + 
				"";
		List<Map<String, Object>> list = template.queryForList(sql);
		System.out.println(list);

		return list;
	} 

	public List<Map<String, Object>> viewMatchDetails() {
		String sql = "SELECT team_one_id, team_two_id, no_of_likes, timing, status, winning_team_id FROM `match_details`;";
		List<Map<String, Object>> list = template.queryForList(sql);

		return list;
	}
	
	
	public List<Map<String, Object>> viewMatchDetailsWithLimit() {
		String sql = "SELECT team_one_id, team_two_id, no_of_likes, timing, status, winning_team_id FROM `match_details`;";
		List<Map<String, Object>> list = template.queryForList(sql);

		return list;
	}

	public String getTeamName(int team_id) {
		String sql = "SELECT team_name from team_details where team_id=?" ;
		Object[] inputs = new Object[] {team_id};
		String name = (String) template.queryForObject(sql, inputs, String.class);
		return name;
	}

	public String getClubName(int club_id) {
		String sql = "SELECT club_name from club_details where club_id=?" ;
		Object[] inputs = new Object[] {club_id};
		String name = (String) template.queryForObject(sql, inputs, String.class);
		return name;
	}

	public String getSportName(int sport_id) {
		String sql = "SELECT sport_name from sport_details where sport_id=?" ;
		Object[] inputs = new Object[] {sport_id};
		String name = (String) template.queryForObject(sql, inputs, String.class);
		return name;
	}

	public List<Map<String, Object>> showAllPlayers() {
		String sql = "SELECT fname,lname,team_name,sport_name,player_details.no_of_match_played,player_details.no_of_match_win,player_details.no_of_match_draw,player_details.no_of_likes\r\n" + 
				"FROM user_common_details,player_details,team_details,user_role,team_user_relation,sport_details\r\n" + 
				"WHERE user_role.user_id=user_common_details.user_id\r\n" + 
				"and user_role.user_id=player_details.user_id\r\n" + 
				"and user_role.user_id=team_user_relation.user_id\r\n" + 
				"and user_role.role=\"Player\"\r\n" + 
				"and team_user_relation.team_id=team_details.team_id\r\n" + 
				"and team_details.sport_id=sport_details.sport_id";
		List<Map<String, Object>> list = template.queryForList(sql);
		System.out.println(list);

		return list;
	} 
	
	public List<Map<String, Object>> showAllPlayersWithLimit() {
		String sql = "SELECT fname,lname,team_name,sport_name,player_details.no_of_match_win,player_details.no_of_likes FROM user_common_details,player_details,team_details,user_role,team_user_relation,sport_details WHERE user_role.user_id=user_common_details.user_id and user_role.user_id=player_details.user_id and user_role.user_id=team_user_relation.user_id and user_role.role=\"Player\" and team_user_relation.team_id=team_details.team_id and team_details.sport_id=sport_details.sport_id order by player_details.no_of_match_win DESC limit 5";
		List<Map<String, Object>> list = template.queryForList(sql);
		System.out.println(list);

		return list;
	}
	
	
	
	/*Session*/
	

/*SESSION*/
	public String getPasswordByUserName(String u) {
		String sql = "SELECT user_password FROM `user_common_details` WHERE user_common_details.email_id='"+u+"';";
		List<Map<String, Object>> list = template.queryForList(sql);
		String result=null;
		for(Map<String,Object> map : list) {
			for(Map.Entry<String, Object> entry : map.entrySet()) {
				String key=entry.getKey();
				Object value=entry.getValue();
				if(key.equals("user_password")) {
					result=(String)value;
				}
			}
		}
		return result;
	}
	
	public ArrayList<String> getRoleByUserName(String u) {
		String sql = "SELECT role FROM user_role,`user_common_details` \r\n" + 
				"WHERE user_common_details.user_id=user_role.user_id and user_common_details.email_id='"+u+"';";
		ArrayList<String> list1 = new ArrayList<>();
		List<Map<String, Object>> list = template.queryForList(sql);
		
		for(Map<String,Object> map : list) {
			for(Map.Entry<String, Object> entry : map.entrySet()) {
				String key=entry.getKey();
				Object value=entry.getValue();
				if(key.equals("role")) {
					list1.add((String)value);
				}
			}
		}
		return list1;
	}

	
	public List<Map<String, Object>> readAllSportName() {

		String sql = "SELECT sport_name FROM `sport_details`;";
		List<Map<String, Object>> list = template.queryForList(sql);
		
		//System.out.println(list);
		return list;
	}
	
	
	public List<Map<String, Object>> readAllPlayerName() {

		String sql = "SELECT fname FROM user_common_details, user_role\r\n" + 
				"WHERE role=\"Player\" and user_role.user_id=user_common_details.user_id;";
		List<Map<String, Object>> list = template.queryForList(sql);
		
		//System.out.println(list);
		return list;
	}
	
	public List<Map<String, Object>> readAllClubName() {

		String sql = "SELECT club_name FROM `club_details`;";
		List<Map<String, Object>> list = template.queryForList(sql);
		
		//System.out.println(list);
		return list;
	}	

	public List<Map<String, Object>> viewSpecificPlayerProfile(String u) {

		String sql = "SELECT fname,lname,team_name,sport_name,player_details.no_of_match_played,player_details.no_of_match_win,player_details.no_of_match_draw,player_details.no_of_likes\r\n" + 
				"				FROM user_common_details,player_details,team_details,user_role,team_user_relation,sport_details\r\n" + 
				"				WHERE user_role.user_id=user_common_details.user_id\r\n" + 
				"				and user_role.user_id=player_details.user_id\r\n" + 
				"				and user_role.user_id=team_user_relation.user_id \r\n" + 
				"				and user_role.role=\"Player\" \r\n" + 
				"				and team_user_relation.team_id=team_details.team_id\r\n" + 
				"				and team_details.sport_id=sport_details.sport_id\r\n" + 
				"                and user_common_details.email_id='"+u+"';";
		List<Map<String, Object>> list = template.queryForList(sql);
		
		//System.out.println(list);
		return list;
	}
	
	public List<Map<String, Object>> viewSpecificPlayerProfilebyuserid(int u) {

		String sql = "SELECT fname,lname,team_name,sport_name,player_details.no_of_match_played,player_details.no_of_match_win,player_details.no_of_match_draw,player_details.no_of_likes\r\n" + 
				"				FROM user_common_details,player_details,team_details,user_role,team_user_relation,sport_details\r\n" + 
				"				WHERE user_role.user_id=user_common_details.user_id\r\n" + 
				"				and user_role.user_id=player_details.user_id\r\n" + 
				"				and user_role.user_id=team_user_relation.user_id \r\n" + 
				"				and user_role.role=\"Player\" \r\n" + 
				"				and team_user_relation.team_id=team_details.team_id\r\n" + 
				"				and team_details.sport_id=sport_details.sport_id\r\n" + 
				"                and user_common_details.user_id='"+u+"';";
		List<Map<String, Object>> list = template.queryForList(sql);
		
		//System.out.println(list);
		return list;
	}
	
	public List<Map<String, Object>> viewSpecificCoachProfile(String u) {

		String sql = "SELECT fname,lname,sport_name,coach_details.no_of_team_under_coaching,coach_details.year_of_exp,coach_details.no_of_likes\r\n" + 
				"FROM user_common_details,sport_details,user_role,coach_details\r\n" + 
				"WHERE user_role.user_id=coach_details.user_id AND\r\n" + 
				"user_role.user_id=user_common_details.user_id AND\r\n" + 
				"coach_details.sport_id=sport_details.sport_id AND\r\n" + 
				"user_role.role='Coach'\r\n" + 
				"AND user_common_details.email_id='"+u+"';";
		List<Map<String, Object>> list = template.queryForList(sql);
		
		//System.out.println(list);
		return list;
	}
	
	public List<Map<String, Object>> viewalluserdetails(String u) {

		String sql = "SELECT user_id,fname,lname,user_name,user_password,dob,email_id,contact_no,nationality,state,city FROM\r\n" + 
				"user_common_details WHERE email_id='"+u+"';";
		List<Map<String, Object>> list = template.queryForList(sql);
		
		//System.out.println(list);
		return list;
	}
	
	public List<Map<String, Object>> viewalluserdetailsbyuserid(int u) {

		String sql = "SELECT user_id,fname,lname,user_name,user_password,dob,email_id,contact_no,nationality,state,city FROM\r\n" + 
				"user_common_details WHERE user_id='"+u+"';";
		List<Map<String, Object>> list = template.queryForList(sql);
		
		//System.out.println(list);
		return list;
	}
}
