package com.model;

import javax.ejb.Remote;

import com.entity.Register;

@Remote
public interface RegisterRemote {
	public String register(Register e);
	

}
