 package ptithcm.controller;


import java.util.Date;
import java.util.List;


import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.AdminEntity;
import ptithcm.entity.PlaneEntity;
@Controller
@RequestMapping("/admin/")
@Transactional
public class AdminController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("index")
	public String index(ModelMap model) {
		if(LoginController.admin.getUsername()==null) {
			return "login/login";
		}
		Session session = factory.getCurrentSession();
		String hql="from AdminEntity A where A.username="+"'"+LoginController.admin.getUsername()+"'";
		String planehql="from PlaneEntity ORDER BY flighttime ASC";
		Query plane =session.createQuery(planehql);
		Query query = session.createQuery(hql);	
		List<AdminEntity> list = query.list();
		List<PlaneEntity> planelist= plane.list();
		model.addAttribute("staffs", list);
		model.addAttribute("plane", planelist);
		return "admin/index";
	}
	
	
}
