package com.niit.shoppingcart.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.springframework.stereotype.Component;
@Entity
@Table
@Component
public class Supplier {
	@Id
	private String id;
	@Column(name="name")
	private String name;
	@Column(name="address")
	private String address;
	@OneToMany(mappedBy="supplier",fetch = FetchType.EAGER)
	private Set<Supplier> supplier;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public Set<Supplier> getSupplier() {
		return supplier;
	}
	public void setSupplier(Set<Supplier> supplier) {
		this.supplier = supplier;
	}
	public void setAddress(String address) {
		this.address = address;
	}

}
