package com.niit.shoppingcart.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="product")
@Component
public class Product { 
	
	@Id
	private String id;
	
	private String name;
	
	private String description;
	
	private int price;
	
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	@ManyToOne
	@JoinColumn(name="category_id" , nullable = false, updatable = false, insertable = false)
	private Category category;
	
	@ManyToOne
	@JoinColumn(name="supplier_id" , nullable = false, updatable = false, insertable = false)
	private Supplier supplier;
	
	@OneToMany(mappedBy="product",fetch = FetchType.EAGER)
	private Set<Cart> carts;
	
	public Set<Cart> getCarts() {
		return carts;
	}
	public void setCarts(Set<Cart> carts) {
		this.carts = carts;
	}

	@Transient 
	 private MultipartFile image; 
	  
	 public MultipartFile getImage() { 
	  return image; 
	 } 
	 public void setImage(MultipartFile image) { 
	  this.image = image; 
	 } 
	 public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	private String category_id;
		
	private String supplier_id;
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public String getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	
	

}
