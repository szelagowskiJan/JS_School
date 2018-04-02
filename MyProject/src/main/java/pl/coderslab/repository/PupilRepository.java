package pl.coderslab.repository;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.entity.Pupil;

public interface PupilRepository extends JpaRepository<Pupil, Long> { 

	
	
	Collection<Pupil> findByName(String name);
	
	
}
