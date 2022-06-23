package ptithcm.entity;
import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.Table;


import javax.persistence.OneToOne;



@Entity
@Table(name="DETAILS")
public class DetailEntity {
	@Id
	@Column(name="reservationid")
	private String reservationid;
	@OneToOne
	@JoinColumn(name="idticket")
	private TicketEntity ticket;

	public DetailEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	@OneToOne
	@JoinColumn(name="idcard")
	private CustomerEntity customer;

	public String getReservationid() {
		return reservationid;
	}

	public void setReservationid(String reservationid) {
		this.reservationid = reservationid;
	}


	public TicketEntity getTicket() {
		return ticket;
	}

	public void setTicket(TicketEntity ticket) {
		this.ticket = ticket;
	}

	public CustomerEntity getCustomer() {
		return customer;
	}
	
	public void setCustomer(CustomerEntity customer) {
		this.customer = customer;
	}

	
}
