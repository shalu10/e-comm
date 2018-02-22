 package com.niit.estore.backend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Product")
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="product_id")
	private int pid;
	@ManyToOne
	private Supplier sid;
	@Column(name="product_name")
	private String pname;
	@ManyToOne
	private Category cid;
	@Column(name="product_desc")
	private String  pdesc;
	@Column(name="product_quantity")
	private int pquantity;
	@Column(name="product_price")
	private float pprice;
	@Column(name="Product_pimage")
    private String pimage;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public Supplier getSid() {
		return sid;
	}
	public void setSid(Supplier sid) {
		this.sid = sid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Category getCid() {
		return cid;
	}
	public void setCid(Category cid) {
		this.cid = cid;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public int getPquantity() {
		return pquantity;
	}
	public void setPquantity(int pquantity) {
		this.pquantity = pquantity;
	}
	public float getPprice() {
		return pprice;
	}
	public void setPprice(float pprice) {
		this.pprice = pprice;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	
}