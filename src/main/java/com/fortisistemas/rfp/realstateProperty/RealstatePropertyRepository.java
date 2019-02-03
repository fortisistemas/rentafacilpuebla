package com.fortisistemas.rfp.realstateProperty;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RealstatePropertyRepository extends CrudRepository<RealstateProperty, Integer> {

}
