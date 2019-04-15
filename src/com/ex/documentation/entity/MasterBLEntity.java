/**
 * Master BL Entry Entity Class By Deepak K Singh
 */
package com.ex.documentation.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;


/**
 * @author USER 13
 *
 */
@Entity(name = "ForeignKeyAssoEntity")
@Table(name = "export_mbldetails" , catalog = "envosys",
uniqueConstraints = {
@UniqueConstraint(columnNames = "ID"),
@UniqueConstraint(columnNames = "mblno")})
public class MasterBLEntity implements Serializable {

	private static final long serialVersionUID = -1798070786993154676L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	private long id;
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name ="mblno_id")
	private List <MasterBLContainerEnity> contDetails;

	public List<MasterBLContainerEnity> getContDetails() {
		return contDetails;
	}
	public void setContDetails(List<MasterBLContainerEnity> contDetails) {
		this.contDetails = contDetails;
	}	

	
	public MasterBLEntity(){
		
	}

	private String mblno;
	@Temporal(TemporalType.DATE)
	private Date mbldate;
	@Temporal(TemporalType.DATE)
	private Date date_of_issue;
	private String place_of_issue;
	private String shippername;
	private String shipperaddress;
	private String shippertel;
	private String shipperfax;
	private String shippercontact;
	private String consigneename;
	private String consigneeaddress;
	private String consigneetel;
	private String consigneefax;
	private String consigneecontact;
	private String notify1name;
	private String notify1address;
	private String notify1tel;
	private String notify1fax;
	private String notify1contact;
	private String notify2name;
	private String notify2address;
	private String notify2tel;
	private String notify2fax;
	private String notify2contact;
	private String vesselname;
	private String voyageno;
	@Temporal(TemporalType.DATE)
	private Date eta_pol;
	@Temporal(TemporalType.DATE)
	private Date etd_pol;
	@Temporal(TemporalType.DATE)
	private Date eta_pod;
	private String pol;
	private String pod;
	private String fpd;
	private String por;
	private String pkgtype;
	private double noofpkgs;
	private double noofpallets;
	private double netwt;
	private double grosswt;
	private double volume;
	private String marks;
	private String description;
	private String manifestno;
	private String lastmodifiedby;
	private String location;
	private String bookingno;
	private String close;
	@Temporal(TemporalType.DATE)
	private Date closedate;
	private String close_user;
	private String agent_remark;
	private String directmbl;
	private String mccmbl;
	private String sez;
	


	
	public MasterBLEntity(long id, List<MasterBLContainerEnity> contDetails, String mblno, Date mbldate,
			Date date_of_issue, String place_of_issue, String shippername, String shipperaddress, String shippertel,
			String shipperfax, String shippercontact, String consigneename, String consigneeaddress,
			String consigneetel, String consigneefax, String consigneecontact, String notify1name,
			String notify1address, String notify1tel, String notify1fax, String notify1contact, String notify2name,
			String notify2address, String notify2tel, String notify2fax, String notify2contact, String vesselname,
			String voyageno, Date eta_pol, Date etd_pol, Date eta_pod, String pol, String pod, String fpd, String por,
			String pkgtype, double noofpkgs, double noofpallets, double netwt, double grosswt, double volume,
			String marks, String description, String manifestno, String lastmodifiedby, String location,
			String bookingno, String close, Date closedate, String close_user, String agent_remark, String directmbl,
			String mccmbl, String sez) {
		super();
		this.id = id;
		this.contDetails = contDetails;
		this.mblno = mblno;
		this.mbldate = mbldate;
		this.date_of_issue = date_of_issue;
		this.place_of_issue = place_of_issue;
		this.shippername = shippername;
		this.shipperaddress = shipperaddress;
		this.shippertel = shippertel;
		this.shipperfax = shipperfax;
		this.shippercontact = shippercontact;
		this.consigneename = consigneename;
		this.consigneeaddress = consigneeaddress;
		this.consigneetel = consigneetel;
		this.consigneefax = consigneefax;
		this.consigneecontact = consigneecontact;
		this.notify1name = notify1name;
		this.notify1address = notify1address;
		this.notify1tel = notify1tel;
		this.notify1fax = notify1fax;
		this.notify1contact = notify1contact;
		this.notify2name = notify2name;
		this.notify2address = notify2address;
		this.notify2tel = notify2tel;
		this.notify2fax = notify2fax;
		this.notify2contact = notify2contact;
		this.vesselname = vesselname;
		this.voyageno = voyageno;
		this.eta_pol = eta_pol;
		this.etd_pol = etd_pol;
		this.eta_pod = eta_pod;
		this.pol = pol;
		this.pod = pod;
		this.fpd = fpd;
		this.por = por;
		this.pkgtype = pkgtype;
		this.noofpkgs = noofpkgs;
		this.noofpallets = noofpallets;
		this.netwt = netwt;
		this.grosswt = grosswt;
		this.volume = volume;
		this.marks = marks;
		this.description = description;
		this.manifestno = manifestno;
		this.lastmodifiedby = lastmodifiedby;
		this.location = location;
		this.bookingno = bookingno;
		this.close = close;
		this.closedate = closedate;
		this.close_user = close_user;
		this.agent_remark = agent_remark;
		this.directmbl = directmbl;
		this.mccmbl = mccmbl;
		this.sez = sez;
	}
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getMblno() {
		return mblno;
	}

	public void setMblno(String mblno) {
		this.mblno = mblno;
	}

	public Date getMbldate() {
		return mbldate;
	}

	public void setMbldate(Date mbldate) {
		this.mbldate = mbldate;
	}

	public Date getDate_of_issue() {
		return date_of_issue;
	}

	public void setDate_of_issue(Date date_of_issue) {
		this.date_of_issue = date_of_issue;
	}

	public String getPlace_of_issue() {
		return place_of_issue;
	}

	public void setPlace_of_issue(String place_of_issue) {
		this.place_of_issue = place_of_issue;
	}

	public String getShippername() {
		return shippername;
	}

	public void setShippername(String shippername) {
		this.shippername = shippername;
	}

	public String getShipperaddress() {
		return shipperaddress;
	}

	public void setShipperaddress(String shipperaddress) {
		this.shipperaddress = shipperaddress;
	}

	public String getShippertel() {
		return shippertel;
	}

	public void setShippertel(String shippertel) {
		this.shippertel = shippertel;
	}

	public String getShipperfax() {
		return shipperfax;
	}

	public void setShipperfax(String shipperfax) {
		this.shipperfax = shipperfax;
	}

	public String getShippercontact() {
		return shippercontact;
	}

	public void setShippercontact(String shippercontact) {
		this.shippercontact = shippercontact;
	}

	public String getConsigneename() {
		return consigneename;
	}

	public void setConsigneename(String consigneename) {
		this.consigneename = consigneename;
	}

	public String getConsigneeaddress() {
		return consigneeaddress;
	}

	public void setConsigneeaddress(String consigneeaddress) {
		this.consigneeaddress = consigneeaddress;
	}

	public String getConsigneetel() {
		return consigneetel;
	}

	public void setConsigneetel(String consigneetel) {
		this.consigneetel = consigneetel;
	}

	public String getConsigneefax() {
		return consigneefax;
	}

	public void setConsigneefax(String consigneefax) {
		this.consigneefax = consigneefax;
	}

	public String getConsigneecontact() {
		return consigneecontact;
	}

	public void setConsigneecontact(String consigneecontact) {
		this.consigneecontact = consigneecontact;
	}

	public String getNotify1name() {
		return notify1name;
	}

	public void setNotify1name(String notify1name) {
		this.notify1name = notify1name;
	}

	public String getNotify1address() {
		return notify1address;
	}

	public void setNotify1address(String notify1address) {
		this.notify1address = notify1address;
	}

	public String getNotify1tel() {
		return notify1tel;
	}

	public void setNotify1tel(String notify1tel) {
		this.notify1tel = notify1tel;
	}

	public String getNotify1fax() {
		return notify1fax;
	}

	public void setNotify1fax(String notify1fax) {
		this.notify1fax = notify1fax;
	}

	public String getNotify1contact() {
		return notify1contact;
	}

	public void setNotify1contact(String notify1contact) {
		this.notify1contact = notify1contact;
	}

	public String getNotify2name() {
		return notify2name;
	}

	public void setNotify2name(String notify2name) {
		this.notify2name = notify2name;
	}

	public String getNotify2address() {
		return notify2address;
	}

	public void setNotify2address(String notify2address) {
		this.notify2address = notify2address;
	}

	public String getNotify2tel() {
		return notify2tel;
	}

	public void setNotify2tel(String notify2tel) {
		this.notify2tel = notify2tel;
	}

	public String getNotify2fax() {
		return notify2fax;
	}

	public void setNotify2fax(String notify2fax) {
		this.notify2fax = notify2fax;
	}

	public String getNotify2contact() {
		return notify2contact;
	}

	public void setNotify2contact(String notify2contact) {
		this.notify2contact = notify2contact;
	}

	public String getVesselname() {
		return vesselname;
	}

	public void setVesselname(String vesselname) {
		this.vesselname = vesselname;
	}

	public String getVoyageno() {
		return voyageno;
	}

	public void setVoyageno(String voyageno) {
		this.voyageno = voyageno;
	}

	public Date getEta_pol() {
		return eta_pol;
	}

	public void setEta_pol(Date eta_pol) {
		this.eta_pol = eta_pol;
	}

	public Date getEtd_pol() {
		return etd_pol;
	}

	public void setEtd_pol(Date etd_pol) {
		this.etd_pol = etd_pol;
	}

	public Date getEta_pod() {
		return eta_pod;
	}

	public void setEta_pod(Date eta_pod) {
		this.eta_pod = eta_pod;
	}

	public String getPol() {
		return pol;
	}

	public void setPol(String pol) {
		this.pol = pol;
	}

	public String getPod() {
		return pod;
	}

	public void setPod(String pod) {
		this.pod = pod;
	}

	public String getFpd() {
		return fpd;
	}

	public void setFpd(String fpd) {
		this.fpd = fpd;
	}

	public String getPkgtype() {
		return pkgtype;
	}

	public void setPkgtype(String pkgtype) {
		this.pkgtype = pkgtype;
	}

	public double getNoofpkgs() {
		return noofpkgs;
	}

	public void setNoofpkgs(double noofpkgs) {
		this.noofpkgs = noofpkgs;
	}

	public double getNoofpallets() {
		return noofpallets;
	}

	public void setNoofpallets(double noofpallets) {
		this.noofpallets = noofpallets;
	}

	public double getNetwt() {
		return netwt;
	}

	public void setNetwt(double netwt) {
		this.netwt = netwt;
	}

	public double getGrosswt() {
		return grosswt;
	}

	public void setGrosswt(double grosswt) {
		this.grosswt = grosswt;
	}

	public double getVolume() {
		return volume;
	}

	public void setVolume(double volume) {
		this.volume = volume;
	}

	public String getMarks() {
		return marks;
	}

	public void setMarks(String marks) {
		this.marks = marks;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManifestno() {
		return manifestno;
	}

	public void setManifestno(String manifestno) {
		this.manifestno = manifestno;
	}

	public String getLastmodifiedby() {
		return lastmodifiedby;
	}

	public void setLastmodifiedby(String lastmodifiedby) {
		this.lastmodifiedby = lastmodifiedby;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getBookingno() {
		return bookingno;
	}

	public void setBookingno(String bookingno) {
		this.bookingno = bookingno;
	}

	public String getClose() {
		return close;
	}

	public void setClose(String close) {
		this.close = close;
	}

	public Date getClosedate() {
		return closedate;
	}

	public void setClosedate(Date closedate) {
		this.closedate = closedate;
	}

	public String getClose_user() {
		return close_user;
	}

	public void setClose_user(String close_user) {
		this.close_user = close_user;
	}

	public String getAgent_remark() {
		return agent_remark;
	}

	public void setAgent_remark(String agent_remark) {
		this.agent_remark = agent_remark;
	}

	public String getDirectmbl() {
		return directmbl;
	}

	public void setDirectmbl(String directmbl) {
		this.directmbl = directmbl;
	}

	public String getMccmbl() {
		return mccmbl;
	}

	public void setMccmbl(String mccmbl) {
		this.mccmbl = mccmbl;
	}

	public String getSez() {
		return sez;
	}

	public void setSez(String sez) {
		this.sez = sez;
	}
	public String getPor() {
		return por;
	}
	public void setPor(String por) {
		this.por = por;
	}
	
	@Override
	public String toString() {
		return "MasterBLEntity [mblno="+mblno+"]";
	}
	
}
