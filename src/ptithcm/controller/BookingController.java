package ptithcm.controller;
import ptithcm.entity.CustomerEntity;
import ptithcm.entity.DetailEntity;
import ptithcm.entity.PlaneEntity;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
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

import ptithcm.entity.TicketEntity;

@Controller
@Transactional
public class BookingController {
	@Autowired
    SessionFactory factory;
	public static TicketEntity tk = new TicketEntity();
	public static CustomerEntity c = new CustomerEntity();
	@RequestMapping(value = "{idticket}", method=RequestMethod.GET )
	public String getformbuy ( ModelMap model, TicketEntity ticket, 
			@PathVariable("idticket") String idticket) {
		model.addAttribute("ticketss",this.getTicket(idticket));
		tk.setIdticket(idticket);
		model.addAttribute("customer", new CustomerEntity());
		return "booking/booking";
	}
	@RequestMapping(value="{idticket}",method=RequestMethod.POST)
	public String getformbuy (HttpServletRequest request, ModelMap model,@ModelAttribute("customer") CustomerEntity cus) throws Exception{
        Session session=factory.openSession();
        Transaction t= session.beginTransaction();
        String stringDate1 = String.valueOf(request.getParameter("abcd"));
        String id = request.getParameter("ids");
        try{
          TicketEntity tkit = this.getTicket(tk.getIdticket());
          tkit.setStt(false);
          Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(stringDate1);
          System.out.print(date1);
      	  cus.setBirthday(date1);
      	  cus.setIdcard(id);
      	  c.setIdcard(id);
      	  System.out.println(c.getIdcard());
            session.save(cus);
            t.commit();
            model.addAttribute("message", "Thêm mới thành công !");
      }
      catch (Exception e){
            t.rollback();
            model.addAttribute("message", "Thêm mới thất bại !");
            return "booking/booking";
      }
     finally{
            session.close();
      }
		return "redirect:detail.htm";
		
		
	}
	public TicketEntity getTicket(String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TicketEntity where idticket =:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		TicketEntity list = (TicketEntity) query.list().get(0);
		return list;
		
	}
	public List<TicketEntity> getTickets () {
		Session session = factory.getCurrentSession();
		String hql = "FROM TicketEntity ORDER BY idplane asc";
		Query query = session.createQuery(hql);
		List<TicketEntity> ticketplane = query.list();
		return ticketplane;
	}

}
