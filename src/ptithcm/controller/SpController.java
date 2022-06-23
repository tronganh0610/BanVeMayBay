package ptithcm.controller;


import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.CustomerEntity;
import ptithcm.entity.DetailEntity;
import ptithcm.entity.TicketEntity;


@Controller

@Transactional
public class SpController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping(value="spt", method=RequestMethod.GET)
	public String retrieve(ModelMap model) {
		
		return "retrieve/retrieve";
	}
	@RequestMapping(value="spt", method=RequestMethod.POST)
	public String retrieves(HttpServletRequest request, ModelMap model) {
		String id = request.getParameter("idcard");
		model.addAttribute("detail",this.getdt(id) );
		
		
		return "retrieve/retrieve";
	}
	
	public DetailEntity getdt(String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM DetailEntity where reservationid =:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		DetailEntity list = (DetailEntity) query.list().get(0);
		return list;
		
	}
	
}
