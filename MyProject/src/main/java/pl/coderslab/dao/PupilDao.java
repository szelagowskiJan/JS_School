package pl.coderslab.dao;

import java.util.Collection;

import pl.coderslab.entity.Pupil;

public interface PupilDao {

	void add(Pupil pupil); 
	void edit(Pupil pupil);
	Pupil findById(long id);
	void removeById(long id);
	
	Collection<Pupil> findAll();
}