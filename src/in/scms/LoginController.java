package in.scms;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.fabric.HashShardMapping;

@Controller
@RequestMapping("/login")

public class LoginController {




	@GetMapping
	@RequestMapping("/")
	public ModelAndView login()
	{
		ModelAndView model=new ModelAndView();
		return model;
	}

	@GetMapping
	@RequestMapping("/AdminMain")
	public ModelAndView adminMain(HttpServletRequest request)
	{
		ModelAndView model=new ModelAndView();
		String u=request.getParameter("email");
		String p=request.getParameter("key");
		model.setViewName("login");
		String pass=usr.getPasswordByUserName(u);
		ArrayList<String> list=usr.getRoleByUserName(u);
		List<Map<String,Object>> plist=usr.viewSpecificPlayerProfile(u);
		List<Map<String,Object>> clist=usr.viewSpecificCoachProfile(u);
		List<Map<String,Object>> alllist=usr.viewalluserdetails(u);
		model.addObject("playerObject", plist);
		model.addObject("coachObject", clist);
		model.addObject("userObject", alllist);
		if(pass!=null && p!=null && p.equals(pass)) {
			model.setViewName("AdminMain");
			request.getSession().setAttribute("auth","true");
			request.getSession().setAttribute("role",list);
			request.getSession().setAttribute("playerSession",plist);
			request.getSession().setAttribute("coachSession",clist);
			request.getSession().setAttribute("userSession",alllist);
		}

		model.addObject("userClicksHome", true);
		System.out.println(list);
		return model;
	}
	
	@GetMapping
	@RequestMapping("/AdminCreateUser")
	public ModelAndView adminCreateUser()
	{
		ModelAndView model=new ModelAndView();

		model.addObject("userClicksHome", true);
		model.setViewName("AdminCreateUser");
		return model;
	}





	@Autowired
	AdminCreateUserDao usr;


	@GetMapping
	@RequestMapping(value="/createUser",method= RequestMethod.GET)
	public ModelAndView createUser(@ModelAttribute ("User") AdminCreateUserDto user){
		usr.insertUser(user);
		return new ModelAndView("AdminMain");
	}


	@GetMapping
	@RequestMapping("/update1")  
	public ModelAndView updateuser(@ModelAttribute("User") AdminCreateUserDto user){  
		usr.updateUser(user);
		return new ModelAndView("redirect:/PlName.jsp");  
	}  



	@GetMapping
	@RequestMapping("/showAllTeams")
	public ModelAndView ViewAllTeams()
	{
		ModelAndView model=new ModelAndView();

		List<Map<String, Object>> list= usr.showAllTeams();

		List<Map<String, Object>> resultList = new LinkedList<Map<String, Object>>();
		Map<String, Object> map = null;
		for(Map<String, Object> result: list)
		{
			map = new HashMap<String, Object>();

			for (Map.Entry<String, Object> entry : result.entrySet()) {
				System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());

				if(entry.getKey().equals("club_id")) {
					int club_id= (int)entry.getValue();
					String name= usr.getClubName(club_id);

					map.put(entry.getKey(), name);
					//model.addObject(entry.getKey(), name);
				}
				else if(entry.getKey().equals("sport_id"))
				{
					int sport_id= (int)entry.getValue();
					String name= usr.getSportName(sport_id);

					map.put(entry.getKey(), name);
					//model.addObject(entry.getKey(), name);
				}
				else {
					map.put(entry.getKey(), entry.getValue());
					//model.addObject(entry.getKey(), entry.getValue());
				}


			}
			resultList.add(map);

		}

		model.addObject("Team_Details", resultList);
		model.setViewName("showAllTeams");
		return model;
	}




	@GetMapping
	@RequestMapping("/showAllMatches")
	public ModelAndView ViewAllMatchProfile()
	{
		ModelAndView model=new ModelAndView();

		List<Map<String, Object>> list= usr.viewMatchDetails();

		List<Map<String, Object>> resultList = new ArrayList<Map<String, Object>>();

		Map<String, Object> map = null;
		for(Map<String, Object> result: list)
		{
			map = new HashMap<String, Object>();

			for (Map.Entry<String, Object> entry : result.entrySet()) {
				System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());



				if(entry.getKey().equals("team_one_id")|| entry.getKey().equals("team_two_id")) {
					int team_id= (int)entry.getValue();
					String name= usr.getTeamName(team_id);

					map.put(entry.getKey(), name);
				}
				else {
					map.put(entry.getKey(), entry.getValue());

				}


			}
			resultList.add(map);

		}


		model.addObject("Matches", resultList);
		model.setViewName("showAllMatches");
		return model;
	}




	@GetMapping
	@RequestMapping("/showAllCoach")
	public ModelAndView ViewAllUsers11()
	{
		ModelAndView model=new ModelAndView();

		List<Map<String, Object>> list= usr.showAllCoaches();

		for(Map<String, Object> result: list)
		{
			for (Map.Entry<String, Object> entry : result.entrySet()) {
				System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());
				model.addObject(entry.getKey(), entry.getValue());
			}

		}
		model.addObject("AllCoach_Details", list);
		model.setViewName("showAllCoach");
		return model;
	}















	@GetMapping
	@RequestMapping("/AdminCreateTeam")
	public ModelAndView adminCreateTeam()
	{
		ModelAndView model=new ModelAndView();

		model.addObject("userClicksHome", true);
		model.setViewName("AdminCreateTeam");
		return model;
	}

	@RequestMapping(value = "/AdminCreateTeam", method = RequestMethod.GET)
	public ModelAndView user() {
		TeamDto team=new TeamDto();	  
		ModelAndView modelAndView = new ModelAndView("AdminCreateTeam", "command", team);
		return modelAndView;
	}

	@GetMapping
	@RequestMapping("/AdminAddMatch")
	public ModelAndView adminAddMatch()
	{
		ModelAndView model=new ModelAndView();

		model.addObject("userClicksHome", true);
		model.setViewName("AdminAddMatch");
		return model;
	}


	@GetMapping
	@RequestMapping("/showAllPlayers")
	public ModelAndView ViewAllUsers1111()
	{
		ModelAndView model=new ModelAndView();

		List<Map<String, Object>> list= usr.showAllPlayers();

		for(Map<String, Object> result: list)
		{
			for (Map.Entry<String, Object> entry : result.entrySet()) {
				System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());
				model.addObject(entry.getKey(), entry.getValue());
			}

		}
		model.addObject("Player_Details", list);
		model.setViewName("showAllPlayers");
		return model;
	}

	@GetMapping
	@RequestMapping("/AdminUpdateMatch")
	public ModelAndView adminUpdateMatch()
	{
		ModelAndView model=new ModelAndView();

		model.addObject("userClicksHome", true);
		model.setViewName("AdminUpdateMatch");
		return model;
	}




	@GetMapping
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request)
	{
		ModelAndView model=new ModelAndView();
		request.getSession().invalidate();
		model.setViewName("logout");
		return model;
	}

	@GetMapping
	@RequestMapping("/viewplayerprofile")
	public ModelAndView viewplayerprofile()
	{
		ModelAndView model=new ModelAndView();


		model.setViewName("viewplayerprofile");
		return model;
	}


	@GetMapping
	@RequestMapping("/viewcoachprofile")
	public ModelAndView viewcoachprofile()
	{
		ModelAndView model=new ModelAndView();


		model.setViewName("viewcoachprofile");
		return model;
	}

	@GetMapping
	@RequestMapping("/editprofile")
	public ModelAndView editprofile()
	{
		ModelAndView model=new ModelAndView();

		model.setViewName("editprofile");
		return model;
	}

	@PostMapping
	@RequestMapping("/updateprofile")  
	public ModelAndView updateprofile(@ModelAttribute("User") AdminCreateUserDto user,HttpServletRequest request){  

		List<Map<String,Object>> pl=(List<Map<String,Object>>)request.getSession().getAttribute("userSession");
		List<String> rolelist = (ArrayList<String>)request.getSession().getAttribute("role");
		int uid=1;

		for (Map<String, Object> map : pl) {
			for (Map.Entry<String, Object> entry : map.entrySet()) {
				String key=entry.getKey();
				Object value=entry.getValue();
				if(key.equals("user_id")) {
					uid=(int)value;
				}

			}
		}
		user.setUser_id(uid);
		usr.updateprofile(user);
		
		request.getSession().removeAttribute("userSession");
		request.getSession().removeAttribute("playerSession");
		List<Map<String,Object>> alllist1=usr.viewalluserdetailsbyuserid(uid);
		List<Map<String,Object>> plist1=usr.viewSpecificPlayerProfilebyuserid(uid);
		request.getSession().setAttribute("userSession",alllist1);
		request.getSession().setAttribute("playerSession",plist1);
		if(rolelist.contains("Player")) {
			return new ModelAndView("AdminMain"); 
		}else if(rolelist.contains("Coach")){
			return new ModelAndView("AdminMain"); 
		}else {
			return new ModelAndView("AdminMain"); 
		}
	}


	@GetMapping
	@RequestMapping(value="/createTeam",method= RequestMethod.GET)
	public ModelAndView createTeam(@ModelAttribute ("User") TeamDto team){
		//usr.insertTeam(team);
		return new ModelAndView("AdminMain");
	}

	
	@ModelAttribute("sportName")
	public Map<String,Object> getTeamName() {
		List<Map<String,Object>> list=usr.readAllSportName();
		Map<String, Object> sportName = new HashMap<String, Object>();
		int i=0;
		for(Map<String, Object> map: list )
		{
			for(Map.Entry<String, Object> entry: map.entrySet()) {
				sportName.put("spName"+i, entry.getValue());
				i++;
			}
		}
		return sportName;
	}

	@ModelAttribute("playerName")
	public Map<String,Object> getPlayerName() {
		List<Map<String,Object>> list=usr.readAllPlayerName();
		Map<String, Object> playerName = new HashMap<String, Object>();
		int i=0;
		for(Map<String, Object> map: list )
		{
			for(Map.Entry<String, Object> entry: map.entrySet()) {
				playerName.put("pName"+i, entry.getValue());
				i++;
			}
		}
		return playerName;
	}

	@ModelAttribute("clubName")
	public Map<String,Object> getClubName() {
		List<Map<String,Object>> list=usr.readAllClubName();
		Map<String, Object> clubName = new HashMap<String, Object>();
		int i=0;
		for(Map<String, Object> map: list )
		{
			for(Map.Entry<String, Object> entry: map.entrySet()) {
				clubName.put("clName"+i, entry.getValue());
				i++;
			}
		}
		return clubName;
	}

	
}
