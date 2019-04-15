package com.Master.Customer.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import com.Accounts.Master.entity.AccountDetails;

@Entity
@Table(name = "customer", catalog = "envosys")
public class CustomerEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	private String customername;
	private String customercode;
	private String panno;
	private String custtype;
	private String weburl;
	private String fac;
	private String telephone1;
	private String telephone2;
	private String location;
	private String exportemail;
	private String importemail;
	private String mktname_exp;
	private String mktname_imp;
	private String cs_exp;
	private String cs_imp;
	private String mktname_air_exp;
	private String mktname_air_imp;
	private String cs_air_exp;
	private String cs_air_imp;
	private String customeraddress;
	private String kpname;
	private String kpdesgn;
	private String kptel;
	private String kpmob;
	private String kpemail;
	private String status;
	private String username;
	private Date lastmoddate;
	@OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	@Fetch(value = FetchMode.SUBSELECT)
	@JoinColumn(name = "cust_id")
	private List<CustomerDetailsGstEntity> custdetailsgst;

	@OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	@Fetch(value = FetchMode.SUBSELECT)
	@JoinColumn(name = "cust_id")
	private List<CustomerDetailsAlertEntity> custdetailsalert;

	@OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	@Fetch(value = FetchMode.SUBSELECT)
	@JoinColumn(name = "cust_id")
	private List<CustomerDetailsCreditRateEntity> custdetailscredit;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "cust_id")
	private List<AccountDetails> accountdetails;

	public List<AccountDetails> getAccountdetails() {
		return accountdetails;
	}

	public void setAccountdetails(List<AccountDetails> accountdetails) {
		this.accountdetails = accountdetails;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Date getLastmoddate() {
		return lastmoddate;
	}

	public void setLastmoddate(Date lastmoddate) {
		this.lastmoddate = lastmoddate;
	}

	public List<CustomerDetailsGstEntity> getCustdetailsgst() {
		return custdetailsgst;
	}

	public void setCustdetailsgst(List<CustomerDetailsGstEntity> custdetailsgst) {
		this.custdetailsgst = custdetailsgst;
	}

	public List<CustomerDetailsAlertEntity> getCustdetailsalert() {
		return custdetailsalert;
	}

	public void setCustdetailsalert(List<CustomerDetailsAlertEntity> custdetailsalert) {
		this.custdetailsalert = custdetailsalert;
	}

	public List<CustomerDetailsCreditRateEntity> getCustdetailscredit() {
		return custdetailscredit;
	}

	public void setCustdetailscredit(List<CustomerDetailsCreditRateEntity> custdetailscredit) {
		this.custdetailscredit = custdetailscredit;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCustomername() {
		return customername;
	}

	public void setCustomername(String customername) {
		this.customername = customername;
	}

	public String getCustomercode() {
		return customercode;
	}

	public void setCustomercode(String customercode) {
		this.customercode = customercode;
	}

	public String getPanno() {
		return panno;
	}

	public void setPanno(String panno) {
		this.panno = panno;
	}

	public String getCusttype() {
		return custtype;
	}

	public void setCusttype(String custtype) {
		this.custtype = custtype;
	}

	public String getWeburl() {
		return weburl;
	}

	public void setWeburl(String weburl) {
		this.weburl = weburl;
	}

	public String getFac() {
		return fac;
	}

	public void setFac(String fac) {
		this.fac = fac;
	}

	public String getTelephone1() {
		return telephone1;
	}

	public void setTelephone1(String telephone1) {
		this.telephone1 = telephone1;
	}

	public String getTelephone2() {
		return telephone2;
	}

	public void setTelephone2(String telephone2) {
		this.telephone2 = telephone2;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getExportemail() {
		return exportemail;
	}

	public void setExportemail(String exportemail) {
		this.exportemail = exportemail;
	}

	public String getImportemail() {
		return importemail;
	}

	public void setImportemail(String importemail) {
		this.importemail = importemail;
	}

	public String getMktname_exp() {
		return mktname_exp;
	}

	public void setMktname_exp(String mktname_exp) {
		this.mktname_exp = mktname_exp;
	}

	public String getMktname_imp() {
		return mktname_imp;
	}

	public void setMktname_imp(String mktname_imp) {
		this.mktname_imp = mktname_imp;
	}

	public String getCs_exp() {
		return cs_exp;
	}

	public void setCs_exp(String cs_exp) {
		this.cs_exp = cs_exp;
	}

	public String getCs_imp() {
		return cs_imp;
	}

	public void setCs_imp(String cs_imp) {
		this.cs_imp = cs_imp;
	}

	public String getMktname_air_exp() {
		return mktname_air_exp;
	}

	public void setMktname_air_exp(String mktname_air_exp) {
		this.mktname_air_exp = mktname_air_exp;
	}

	public String getMktname_air_imp() {
		return mktname_air_imp;
	}

	public void setMktname_air_imp(String mktname_air_imp) {
		this.mktname_air_imp = mktname_air_imp;
	}

	public String getCs_air_exp() {
		return cs_air_exp;
	}

	public void setCs_air_exp(String cs_air_exp) {
		this.cs_air_exp = cs_air_exp;
	}

	public String getCs_air_imp() {
		return cs_air_imp;
	}

	public void setCs_air_imp(String cs_air_imp) {
		this.cs_air_imp = cs_air_imp;
	}

	public String getCustomeraddress() {
		return customeraddress;
	}

	public void setCustomeraddress(String customeraddress) {
		this.customeraddress = customeraddress;
	}

	public String getKpname() {
		return kpname;
	}

	public void setKpname(String kpname) {
		this.kpname = kpname;
	}

	public String getKpdesgn() {
		return kpdesgn;
	}

	public void setKpdesgn(String kpdesgn) {
		this.kpdesgn = kpdesgn;
	}

	public String getKptel() {
		return kptel;
	}

	public void setKptel(String kptel) {
		this.kptel = kptel;
	}

	public String getKpmob() {
		return kpmob;
	}

	public void setKpmob(String kpmob) {
		this.kpmob = kpmob;
	}

	public String getKpemail() {
		return kpemail;
	}

	public void setKpemail(String kpemail) {
		this.kpemail = kpemail;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
