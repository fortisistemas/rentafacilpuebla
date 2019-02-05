package com.fortisistemas.rfp.realstateProperty;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RealstatePropertyRepository extends JpaRepository<RealstateProperty, Integer> {

}
