package com.fortisistemas.rfp.realstateProperty;

import org.springframework.web.multipart.MultipartFile;

public class RealstatePropertyPostFormWrapper extends RealstateProperty {
	private static final long serialVersionUID = 1L;
	private MultipartFile[] arrImages;

	public MultipartFile[] getArrImages() {
		return arrImages;
	}

	public void setArrImages(MultipartFile[] arrImages) {
		this.arrImages = arrImages;
	}
}
