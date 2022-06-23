package ptithcm.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="PLANE")
public class PlaneEntity {
	@Id
	@Column(name="idplane")
	private String idplane;
	@Column (name = "destination")
	private String destination;
	@Column (name = "departFrom")
	private String departFrom;
	@Column (name = "airport")
	private String airport;	
	@Column (name = "airline")
	private String airline;
	@Column(name="flighttime")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date flighttime;
	@Column(name="times")
	private String times;
	public String getTimes() {
		return times;
	}
	public void setTimes(String times) {
		this.times = times;
	}
	@OneToMany (mappedBy = "plane", fetch = FetchType.EAGER)
	private Collection<TicketEntity> ticket;
	public String getIdplane() {
		return idplane;
	}
	public void setIdplane(String idplane) {
		this.idplane = idplane;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getDepartFrom() {
		return departFrom;
	}
	public void setDepartFrom(String departFrom) {
		this.departFrom = departFrom;
	}
	public String getAirport() {
		return airport;
	}
	public void setAirport(String airport) {
		this.airport = airport;
	}
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public Date getFlighttime() {
		return flighttime;
	}
	public void setFlighttime(Date flighttime) {
		this.flighttime = flighttime;
	}
	public Collection<TicketEntity> getTicket() {
		return ticket;
	}
	public void setTicket(Collection<TicketEntity> ticket) {
		this.ticket = ticket;
	}

	}
