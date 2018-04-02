package pl.coderslab.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.NumberFormat;

@Entity
@Table(name = "pupils")
public class Pupil {

	public Pupil(Long id, String name, String numberPhone, String email, String comment,
			Collection<Reservation> reservations) {

		this.id = id;
		this.name = name;
		this.numberPhone = numberPhone;
		this.email = email;
		this.comment = comment;
		this.reservations = reservations;
	}

	public Pupil() {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotBlank
	private String name;

	@NotBlank
	@NumberFormat
	private String numberPhone;
	@Email
	@NotBlank
	private String email;

	@NotBlank
	private String comment;

	@ManyToMany(mappedBy = "pupils", fetch = FetchType.EAGER)
	private Collection<Reservation> reservations;

	public Collection<Reservation> getReservations() {
		return reservations;
	}

	public void setReservations(Collection<Reservation> reservations) {
		this.reservations = reservations;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumberPhone() {
		return numberPhone;
	}

	public void setNumberPhone(String numberPhone) {
		this.numberPhone = numberPhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "Author [id=" + id + ", name=" + name + ", comment=" + comment + "]";
	}
}
