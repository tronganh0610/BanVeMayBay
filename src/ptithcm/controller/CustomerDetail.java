package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.AdminEntity;
import ptithcm.entity.CustomerEntity;

@Controller
@RequestMapping("/admin/")
@Transactional
public class CustomerDetail {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("customer")
	public String index(ModelMap model) {
		if(LoginController.admin.getUsername()==null) {
			return "login/login";
		}
		Session session = factory.getCurrentSession();
		String hql="from AdminEntity A where A.username="+"'"+LoginController.admin.getUsername()+"'";
		String planehql="from CustomerEntity";
		Query cus =session.createQuery(planehql);
		Query query = session.createQuery(hql);	
		List<AdminEntity> list = query.list();
		List<CustomerEntity> planelist= cus.list();
		model.addAttribute("staffs", list);
		model.addAttribute("cus", planelist);
		return "admin/customer";
	}
    
}
