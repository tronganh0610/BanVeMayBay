package ptithcm.controller;

import java.awt.print.Book;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.CustomerEntity;
import ptithcm.entity.DetailEntity;
import ptithcm.entity.TicketEntity;



@Controller
@Transactional
public class DetailController {
	@Autowired
    SessionFactory factory;
	
    @RequestMapping(value="detail", method=RequestMethod.GET)
    public String form(ModelMap model){
          model.addAttribute("ticket",this.getTicket(BookingController.tk.getIdticket()));
          model.addAttribute("cus",this.getCus(BookingController.c.getIdcard()));
          return "detail/detail";
    }
    @RequestMapping(value="detail",method=RequestMethod.POST)
	public String form (HttpServletRequest request, ModelMap model, DetailEntity detail) throws Exception{
        Session session=factory.openSession();
        Transaction t= session.beginTransaction();
        String cus = BookingController.c.getIdcard();
        try{
        	detail.setReservationid(cus);
        	TicketEntity s = this.getTicket(BookingController.tk.getIdticket());
        	detail.setCustomer(this.getCus(BookingController.c.getIdcard()));
        	detail.setTicket(this.getTicket(BookingController.tk.getIdticket()));
        	thongbao(this.getCus(BookingController.c.getIdcard()).getEmail(), s.getPlane().getFlighttime(), s.getPlane().getDepartFrom(), s.getPlane().getDestination(), s.getPrices(), s.getIdticket(), s.getPlane().getTimes());
            session.save(detail);
            t.commit();
      }
      catch (Exception e){
            t.rollback();
            return "detail/detail";
      }
     finally{
            session.close();
      }
		return "redirect:searchTicket.htm";
		
		
	}
    @Autowired
	JavaMailSender mailer1;
	public void thongbao( String email, Date date, String From, String To, int price, String mv, String time ) {
					String from="duygtran706@gmail.com";
					String to= email;
					String subject="Successful ticket booking !";
					String body="Thank you for booking your ticket. "+"\n"
							+ "From  "+From+"To "+To+"\n"+"Price: "+price+"\n"+" Reservation Code"+mv+"\n"+"   Date: "+date+"   Time:   "
									+time + ".";
					

					try {
						MimeMessage mail = mailer1.createMimeMessage();
						MimeMessageHelper helper= new MimeMessageHelper(mail);
						helper.setFrom(from,from);
						helper.setTo(to);
						helper.setReplyTo(from,from);
						helper.setSubject(subject);
						helper.setText(body,true);
						mailer1.send(mail);
					}
					catch (Exception ex){
					}
	}

	public TicketEntity getTicket(String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TicketEntity where idticket =:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		TicketEntity list = (TicketEntity) query.list().get(0);
		return list;
		
	}
	public CustomerEntity getCus(String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM CustomerEntity where idcard =:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		CustomerEntity list = (CustomerEntity) query.list().get(0);
		return list;
		
	}
	
}
