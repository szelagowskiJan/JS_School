package pl.coderslab.dao;

import java.util.Collection;

import pl.coderslab.entity.Reservation;

public interface ReservationDao {

	void add(Reservation reservation);
	void edit(Reservation reservation);
	Reservation findById(long id);
	void removeById(long id);

	
	Collection<Reservation> findAll();

}