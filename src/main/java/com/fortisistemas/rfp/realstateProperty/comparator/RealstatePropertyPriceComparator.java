package com.fortisistemas.rfp.realstateProperty.comparator;

import java.util.Comparator;

import com.fortisistemas.rfp.realstateProperty.RealstateProperty;

public class RealstatePropertyPriceComparator implements Comparator<RealstateProperty> {

    @Override
    public int compare(RealstateProperty prop1, RealstateProperty prop2) {
        return prop1.getPrice() - prop2.getPrice();
    }
}