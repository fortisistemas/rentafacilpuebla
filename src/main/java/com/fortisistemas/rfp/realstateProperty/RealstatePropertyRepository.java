package com.fortisistemas.rfp.realstateProperty;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface RealstatePropertyRepository extends JpaRepository<RealstateProperty, Integer> {

	@Query("SELECT rsp FROM RealstateProperty rsp WHERE rsp.highlight = 'on'")
	public List<RealstateProperty> findHighlighted();
}
