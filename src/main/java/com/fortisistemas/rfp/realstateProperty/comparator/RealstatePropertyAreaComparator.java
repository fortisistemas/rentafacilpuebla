package com.fortisistemas.rfp.realstateProperty.comparator;

import java.util.Comparator;

import com.fortisistemas.rfp.realstateProperty.RealstateProperty;

public class RealstatePropertyAreaComparator implements Comparator<RealstateProperty> {

	@Override
	public int compare(RealstateProperty prop1, RealstateProperty prop2) {
		return prop1.getArea() - prop2.getArea();
	}

}
