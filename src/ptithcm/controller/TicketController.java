package ptithcm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
import ptithcm.entity.TicketEntity;


@Transactional
@Controller
@RequestMapping("/admin/")
public class TicketController{
    @Autowired
    SessionFactory factory;
    public static PlaneEntity pl= new PlaneEntity();
    @RequestMapping(value="ticket", method=RequestMethod.GET)
    public String form(ModelMap model){
          model.addAttribute("tickets", this.getTicket());
          return "ticket/list";
    }
    @RequestMapping(value="ticket/{idplane}", params="linkInsert" )
    public String form(ModelMap model, PlaneEntity planes, 
			@PathVariable("idplane") String idplane){
    	  List<TicketEntity> list = this.getTicketPlane(idplane);
    	  model.addAttribute("tickets", list);
    	  pl.setIdplane(idplane);
          model.addAttribute("planes", this.getPlane(idplane));
          return "ticket/ticket";
    }
    @RequestMapping(value="insertTicket/{idplane}",method=RequestMethod.GET)
    public String showformInsert(ModelMap model,@PathVariable("idplane") String idplane) {
    	  model.addAttribute("planes", this.getPlane(idplane));
          return "ticket/insertTicket";
    }
    @RequestMapping(value="insertTicket/{idplane}", method=RequestMethod.POST)
    public String form(HttpServletRequest request, ModelMap model,
    	PlaneEntity planes,@PathVariable("idplane") String idplane) throws Exception{
    	String idticket = request.getParameter("idticket");
    	TicketEntity tickets = new TicketEntity();
    	tickets.setIdticket(idticket);
    	 String typetickets = request.getParameter("typeTicket");
    	 String discount = request.getParameter("discount");
    	 int discounts = Integer.parseInt(discount);
    	 tickets.setDiscount(discounts);
    	 int i = Integer.parseInt(typetickets);
    	 if(i==0) {
    		 tickets.setTypeticket(false);
    	 }else {
    		 tickets.setTypeticket(true);	
    	 }
    	 String price= request.getParameter("price");
    	 int prices = Integer.parseInt(price);
    	 tickets.setPrices(prices);
    	 
         Session session=factory.openSession();
         Transaction t= session.beginTransaction();
 		 model.addAttribute("planes", this.getPlane(idplane));
         tickets.setPlane(this.getPlane(idplane));
         tickets.setStt(true);

          try{
                session.save(tickets);
                t.commit();
          	    List<TicketEntity> list = this.getTicketPlane(idplane);
        	    model.addAttribute("tickets", list);
                model.addAttribute("message", "Thêm mới thành công !");
              
          }
          catch (Exception e){
                t.rollback();
          	    List<TicketEntity> list = this.getTicketPlane(idplane);
        	    model.addAttribute("tickets", list);
                model.addAttribute("message", "Thêm mới thất bại !");
          }
         finally{
                session.close();
          }
       return "ticket/ticket";
       //   return "ticket/VNA3499.htm?linkInsert";	

          }
    //xoa
    @RequestMapping(value = "tickets/{idticket}.htm", params = "linkDelete")
	public String deletePlaneS( ModelMap model, TicketEntity tickets, @PathVariable("idticket") String idticket) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(tickets);
			t.commit();
			List<TicketEntity> list = this.getTicketPlane(TicketController.pl.getIdplane());
			model.addAttribute("planes", this.getPlane(TicketController.pl.getIdplane()));
			model.addAttribute("tickets", list);
			model.addAttribute("message","Delete thành công");
		}
		catch (Exception e){
			model.addAttribute("message", "Delete không thành công");
			t.rollback();
		}
		finally{
			session.close();
		};
		return "ticket/ticket";
	}
    ///
	@RequestMapping(value = "{idticket}", params = "linkEdit" )
	public String editTicket ( ModelMap model, TicketEntity tickets, 
			@PathVariable("idticket") String idticket) {
		List<TicketEntity> list = this.getTicketPlane(TicketController.pl.getIdplane());
		model.addAttribute("ticketss",this.getTicket(idticket));	
		model.addAttribute("planes",this.getPlane(TicketController.pl.getIdplane()));
		model.addAttribute("tickets", list);
		return "ticket/update";
	}

	@RequestMapping(value = "updateTicket", method = RequestMethod.POST )
	public String edit_ticket(HttpServletRequest request, ModelMap model, 
			@ModelAttribute("ticketss") TicketEntity ticket){
		
		this.updateticket(ticket, model,request);
		return "redirect:index.htm";
	}
	 
	private String updateticket(TicketEntity ticket, ModelMap model, HttpServletRequest request) {
		// TODO Auto-generated method stub
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
	   	 	String typetickets = request.getParameter("typeTicket");
	   	 	String discount = request.getParameter("discount");
	   	 	int discounts = Integer.parseInt(discount);
	   	 	ticket.setDiscount(discounts);
	   	 	int i = Integer.parseInt(typetickets);
	        ticket.setPlane(this.getPlane(TicketController.pl.getIdplane()));
	        ticket.setStt(true);
	   	 	if(i==0) {
	   	 		ticket.setTypeticket(false);
	   	 	}else {
	   	 		ticket.setTypeticket(true);	
	   	 	}
			session.update(ticket);
			t.commit();
			model.addAttribute("message", "Cập nhật thành công");
			return "redirect:index.htm";
		}
		catch (Exception e) {
			model.addAttribute("message", "Cập nhật không thành công");
			t.rollback();
		}
		finally {
			session.close();
		}
		return "redirect:index.htm";
	}
    ///
	public PlaneEntity getPlane (String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM PlaneEntity where idplane =:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		PlaneEntity list = (PlaneEntity) query.list().get(0);
		return list;
	}
	public List<TicketEntity> getTicketPlane (String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TicketEntity where idplane =:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		List<TicketEntity> ticketplane = query.list();
		return ticketplane;
	}
	public TicketEntity getTicket(String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TicketEntity where idticket =:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		TicketEntity list = (TicketEntity) query.list().get(0);
		return list;
		
	}
	public List<TicketEntity> getTicket () {
		Session session = factory.getCurrentSession();
		String hql = "FROM TicketEntity ORDER BY idplane asc";
		Query query = session.createQuery(hql);
		List<TicketEntity> ticketplane = query.list();
		return ticketplane;
	}
}
