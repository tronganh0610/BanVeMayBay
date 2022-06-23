package ptithcm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ptithcm.entity.*;

@Controller
@RequestMapping("/admin/")
@Transactional
public class LoginController {
	@Autowired
	SessionFactory factory;
	public static AdminEntity admin = new AdminEntity();

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String showForm() {
		if(LoginController.admin.getUsername()!=null) {
			return "redirect:index.htm";
		}
		return "login/login";
	}

	@Transactional
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String saveData(HttpServletRequest request,HttpServletResponse response, ModelMap model, HttpSession httpsession) throws IOException  {
		admin.setPassword(request.getParameter("password"));
		System.out.print(request.getParameter("username"));
		admin.setUsername(request.getParameter("username"));
		System.out.print(request.getParameter("username"));
		Session session = factory.getCurrentSession();
		String hql = "from AdminEntity";
		Query query = session.createQuery(hql);
		List<AdminEntity> list = query.list();
		
		for (AdminEntity AdminEntity : list) {
			if (AdminEntity.getUsername().equals(admin.getUsername())) {
				if (AdminEntity.getPassword().equals(admin.getPassword()) == false) {		
					model.addAttribute("message", "*Error Password");
					return "login/login";
				}
				else {
					return "redirect:index.htm";
				}

			}
		}
		model.put("message", "*Wrong Username or PassWord");
		return "login/login";
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		LoginController.admin.setUsername(null);
		LoginController.admin.setPassword(null);
		return "redirect:login.htm";
	}
	
}