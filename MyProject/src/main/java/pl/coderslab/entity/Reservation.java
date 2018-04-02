package pl.coderslab.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "reservations")
public class Reservation {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String mail;
	@NotEmpty
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "reservations_pupils", joinColumns = @JoinColumn(name = "id_reservation"), inverseJoinColumns = @JoinColumn(name = "id_pupil"), uniqueConstraints = {
			@UniqueConstraint(columnNames = { "id_reservation", "id_pupil" }) })
	private Collection<Pupil> pupils;

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public Collection<Pupil> getPupils() {
		return pupils;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Collection<Pupil> getPupil() {
		return pupils;
	}

	public void setPupils(Collection<Pupil> pupils) {
		this.pupils = pupils;
	}

	@Override
	public String toString() {
		return "Reservation [id=" + id + "]";
	}
}