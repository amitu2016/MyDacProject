package in.scms;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController {
	@Autowired
	AdminCreateUserDao user;


	@GetMapping
	@RequestMapping("/")
	public ModelAndView defaultpage()
	{

		ModelAndView model=new ModelAndView();

		/*player*/
		List<Map<String, Object>> plist=user.showAllPlayersWithLimit();

		for(Map<String, Object> result: plist)
		{
			for (Map.Entry<String, Object> entry : result.entrySet()) {
				System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());
				model.addObject(entry.getKey(), entry.getValue());
			}

		}
		model.addObject("Player_Details", plist);


		/*  teams  */
		List<Map<String, Object>> list= user.showAllTeamsWithLimit();

		List<Map<String, Object>> resultList = new LinkedList<Map<String, Object>>();
		Map<String, Object> map = null;
		for(Map<String, Object> result: list)
		{
			map = new HashMap<String, Object>();

			for (Map.Entry<String, Object> entry : result.entrySet()) {
				System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());

				if(entry.getKey().equals("club_id")) {
					int club_id= (int)entry.getValue();
					String name= user.getClubName(club_id);

					map.put(entry.getKey(), name);
					//model.addObject(entry.getKey(), name);
				}
				else if(entry.getKey().equals("sport_id"))
				{
					int sport_id= (int)entry.getValue();
					String name= user.getSportName(sport_id);

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


		/*Sports*/



		/*matches*/
		List<Map<String, Object>> mlist= user.viewMatchDetails();

		List<Map<String, Object>> mresultList = new ArrayList<Map<String, Object>>();

		Map<String, Object> mmap = null;
		for(Map<String, Object> result: mlist)
		{
			mmap = new HashMap<String, Object>();

			for (Map.Entry<String, Object> entry : result.entrySet()) {
				System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());



				if(entry.getKey().equals("team_one_id")|| entry.getKey().equals("team_two_id")) {
					int team_id= (int)entry.getValue();
					String name= user.getTeamName(team_id);

					mmap.put(entry.getKey(), name);
				}
				else {
					mmap.put(entry.getKey(), entry.getValue());

				}				
			}
			mresultList.add(mmap);
		}
		model.addObject("Matches", mresultList);




		model.setViewName("home");
		return model;
}

	@GetMapping
	@RequestMapping("/home")
	public ModelAndView homepage()
	{
		ModelAndView model=new ModelAndView();

		/*player*/
		List<Map<String, Object>> plist=user.showAllPlayersWithLimit();

		for(Map<String, Object> result: plist)
		{
			for (Map.Entry<String, Object> entry : result.entrySet()) {
				System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());
				model.addObject(entry.getKey(), entry.getValue());
			}

		}
		model.addObject("Player_Details", plist);


		/*  teams  */
		List<Map<String, Object>> list= user.showAllTeamsWithLimit();

		List<Map<String, Object>> resultList = new LinkedList<Map<String, Object>>();
		Map<String, Object> map = null;
		for(Map<String, Object> result: list)
		{
			map = new HashMap<String, Object>();

			for (Map.Entry<String, Object> entry : result.entrySet()) {
				System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());

				if(entry.getKey().equals("club_id")) {
					int club_id= (int)entry.getValue();
					String name= user.getClubName(club_id);

					map.put(entry.getKey(), name);
					//model.addObject(entry.getKey(), name);
				}
				else if(entry.getKey().equals("sport_id"))
				{
					int sport_id= (int)entry.getValue();
					String name= user.getSportName(sport_id);

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


		/*Sports*/



		/*matches*/
		List<Map<String, Object>> mlist= user.viewMatchDetails();

		List<Map<String, Object>> mresultList = new ArrayList<Map<String, Object>>();

		Map<String, Object> mmap = null;
		for(Map<String, Object> result: mlist)
		{
			mmap = new HashMap<String, Object>();

			for (Map.Entry<String, Object> entry : result.entrySet()) {
				System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());



				if(entry.getKey().equals("team_one_id")|| entry.getKey().equals("team_two_id")) {
					int team_id= (int)entry.getValue();
					String name= user.getTeamName(team_id);

					mmap.put(entry.getKey(), name);
				}
				else {
					mmap.put(entry.getKey(), entry.getValue());

				}				
			}
			mresultList.add(mmap);
		}
		model.addObject("Matches", mresultList);




		model.setViewName("home");
		return model;
	}

	@GetMapping
	@RequestMapping("/index")
	public ModelAndView indexpage()
	{
		ModelAndView model=new ModelAndView();

		model.addObject("userClicksHome", true);
		model.setViewName("index");
		return model;
	}



	@GetMapping
	@RequestMapping("/about")
	public ModelAndView aboutPage()
	{
		ModelAndView model=new ModelAndView();

		model.addObject("userClicksAbout", true);
		model.setViewName("about");
		return model;
	}


	@GetMapping
	@RequestMapping("/sports")
	public ModelAndView sportsPage()
	{
		ModelAndView model=new ModelAndView();

		model.addObject("userClicksSports", true);
		model.setViewName("sports");
		return model;
	}

	@GetMapping
	@RequestMapping("/login")
	public ModelAndView loginPage()
	{
		ModelAndView model=new ModelAndView();

		model.addObject("userClicksSports", true);
		model.setViewName("login");
		return model;
	}


	@GetMapping
	@RequestMapping("/contact")
	public ModelAndView contactPage()
	{
		ModelAndView model=new ModelAndView();

		model.addObject("userClicksSports", true);
		model.setViewName("contact");
		return model;
	}


	@GetMapping
	@RequestMapping("/gallery")
	public ModelAndView galleryPage()
	{
		ModelAndView model=new ModelAndView();

		model.addObject("userClicksSports", true);
		model.setViewName("gallery");
		return model;
	}

	@GetMapping
	@RequestMapping("/news")
	public ModelAndView newsPage()
	{
		ModelAndView model=new ModelAndView();

		model.addObject("userClicksSports", true);
		model.setViewName("news");
		return model;
	}








}
