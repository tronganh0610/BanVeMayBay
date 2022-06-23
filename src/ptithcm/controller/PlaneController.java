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


@Transactional
@Controller
@RequestMapping("/admin/")
public class PlaneController{
      @Autowired
      SessionFactory factory;
       
      @RequestMapping(value="form", method=RequestMethod.GET)
      public String form(ModelMap model){
            model.addAttribute("planes", new PlaneEntity());
            Date date = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String  strDate = formatter.format(date);
            model.addAttribute("a", strDate);
            return "plane/form";
      }
      @RequestMapping(value="form", method=RequestMethod.POST)
      public String form(HttpServletRequest request, ModelMap model, @ModelAttribute("planes") PlaneEntity planes) throws Exception{
           Session session=factory.openSession();
           Transaction t= session.beginTransaction();
           String dep = request.getParameter("departFrom");
           String des = request.getParameter("destination");
           String airline = request.getParameter("airline");
           Date date = new Date();
           SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
           String  strDate = formatter.format(date);
           model.addAttribute("a", strDate);

            try{
                  String stringDate = String.valueOf(request.getParameter("abc"));
               	  Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(stringDate);
            	  planes.setFlighttime(date1);
            	  planes.setAirline(airline);
            	  planes.setDepartFrom(dep);
            	  planes.setDestination(des);
                  session.save(planes);
                  t.commit();
                  model.addAttribute("message", "Thêm mới thành công !");
            }
            catch (Exception e){
                  t.rollback();
                  model.addAttribute("message", "Thêm mới thất bại !");
            }
           finally{
                  session.close();
            }
            return "redirect:index.htm";

            }
  	
	@RequestMapping(value = "index/{idplane}.htm", params = "linkDelete")
	public String deletePlaneS( ModelMap model, PlaneEntity planes, @PathVariable("idplane") String idplane) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(planes);
			t.commit();
			String hql="from AdminEntity A where A.username="+"'"+LoginController.admin.getUsername()+"'";
			List<PlaneEntity> list = this.getPlanes();
			model.addAttribute("plane", list);
			Query query = session.createQuery(hql);
			List<AdminEntity> adminlist = query.list();
			model.addAttribute("staffs", adminlist);
			model.addAttribute("message","Delete thành công");
			return "admin/index";
		}
		catch (Exception e){
			String hql="from AdminEntity A where A.username="+"'"+LoginController.admin.getUsername()+"'";
			List<PlaneEntity> list = this.getPlanes();
			model.addAttribute("plane", list);
			Query query = session.createQuery(hql);
			List<AdminEntity> adminlist = query.list();
			model.addAttribute("staffs", adminlist);
			model.addAttribute("message", "Delete không thành công");
			t.rollback();
		}
		finally{
			session.close();
		};
		return "admin/index";
	}

	//phan chinh sua
	@RequestMapping(value = "update/{idplane}", params = "linkEdit" )
	public String editUser ( ModelMap model, PlaneEntity planes, 
			@PathVariable("idplane") String idplane) {
		List<PlaneEntity> list = this.getPlanes();
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String  strDate = formatter.format(date);
        model.addAttribute("a", strDate);
		model.addAttribute("plane", list);
		model.addAttribute("planes", this.getPlane(idplane));
		return "plane/update";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST )
	public String edit_User(HttpServletRequest request, ModelMap model, 
			@ModelAttribute("planes") PlaneEntity planes){
		this.updateUser(planes, model,request);
		return "redirect:index.htm";
	}
	 
	private String updateUser(PlaneEntity planes, ModelMap model, HttpServletRequest request) {
		// TODO Auto-generated method stub
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
        String dep = request.getParameter("departFrom");
        String des = request.getParameter("destination");
        String airline = request.getParameter("airline");

		try {
            String stringDate = String.valueOf(request.getParameter("abc"));
         	Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(stringDate);
	      	  planes.setAirline(airline);
	      	  planes.setDepartFrom(dep);
	      	  planes.setDestination(des);
         	planes.setFlighttime(date1);
			session.update(planes);
			t.commit();
			model.addAttribute("message", "Cập nhật thành công");
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

	public PlaneEntity getPlane (String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM PlaneEntity where idplane =:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		PlaneEntity list = (PlaneEntity) query.list().get(0);
		return list;
	}
	
	public List<PlaneEntity> getPlanes(){
		Session session = factory.getCurrentSession();
		String hql = "FROM PlaneEntity order by flighttime ASC";
		Query query = session.createQuery(hql);
		List<PlaneEntity> list = query.list();
		return list;
	}

}
