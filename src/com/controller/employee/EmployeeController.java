package com.controller.employee;

import java.io.File;
import java.io.IOException;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.dao.academicsetting.DepartementTypeDao;
import com.dao.academicsetting.DesignationDao;
import com.dao.employee.EmployeeDao;
import com.dao.universal.UniversalDao;
import com.entity.academicsetting.DepartementTypeEntity;
import com.entity.academicsetting.DesignationEntity;
import com.entity.employee.EmployeeBankDetailsEntity;
import com.entity.employee.EmployeeDetailsEntity;
import com.entity.employee.EmployeeDocEntity;
import com.entity.employee.EmployeeJobDetailsEntity;
import com.entity.universal.BankNameEntity;
import com.entity.universal.CountryEntity;

/**
 * @author Devil
 *
 */
@SuppressWarnings("deprecation")
@WebServlet(description = "EmployeeController", urlPatterns = { "/EmployeeController" })
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmployeeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from hidden field
		String action;
		if (ServletFileUpload.isMultipartContent(request)) {
			action = "AddEmployeeDetails";
		} else {
			action = request.getParameter("action");
		}

		switch (action) {
		case "AddEmployeeDetails":
			System.out.println("calling addemp method"+request.getContextPath());
			addEmployeeDetails(request, response);
			break;

		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from url field

		String action = request.getParameter("action");

		switch (action) {
		case "listEmployeeRecord":
			listEmployeeFullRecord(request, response);
			break;
		case "addEmployeeRecord":
			
			listEmployeeFormDetailsRecord(request, response);
			break;
		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}

		// response.sendRedirect("Admin/Academic/AddAcademicYear.jsp");
	}

	@SuppressWarnings({ "unchecked" })
	private void addEmployeeDetails(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("InSide addemp method");
		try {

			String UPLOAD_DIRECTORY_PHOTO = "F:/Study/MySelf/Eclipses/ITS_Projects/School Project/WebContent/upload/Employee/PHOTO";
			String UPLOAD_DIRECTORY_ADHAR = "F:/Study/MySelf/Eclipses/ITS_Projects/School Project/WebContent/upload/Employee/ADHAR";
			String UPLOAD_DIRECTORY_PAN = "F:/Study/MySelf/Eclipses/ITS_Projects/School Project/WebContent/upload/Employee/PAN";
			String UPLOAD_DIRECTORY_EXPLETTER = "F:/Study/MySelf/Eclipses/ITS_Projects/School Project/WebContent/upload/Employee/EXPLETTER";
			String UPLOAD_DIRECTORY_RESUME = "F:/Study/MySelf/Eclipses/ITS_Projects/School Project/WebContent/upload/Employee/RESUME";
			String UPLOAD_DIRECTORY_OTHER = "F:/Study/MySelf/Eclipses/ITS_Projects/School Project/WebContent/upload/Employee/OTHER";

			// Employee Details(personal)
			String fName = "";
			String mName = "";
			String lName = "";

			SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
			// surround below line with try catch block as below code throws checked
			// exception

			Date dob = new Date();
			String gender = "";
			String email = "";
			String contact = "";
			String aContact = "";
			String pAddress = "";
			String cAddress = "";
			String country = "";
			String state = "";
			String city = "";
			int pinCode = 0;

			// employee job details value
			String empDept = "";
			String empDesg = "";

			// surround below line with try catch block as below code throws checked
			// exception

			Date joinDate = new Date();
			String empQual = "";
			String empTExp = "";

			// Employee Document section
			String empPhoto = "";
			String empAdhar = "";
			String empResume = "";
			String empExpLetter = "";
			String empOther = "";
			String empPanCard = "";
			String empAdharNo = "";
			String empPanNo = "";

			// Employee Bank Detail Section

			String empBankName = "";
			String empAccNo = "";
			String empAccHName = "";
			String empIFSCCode = "";
			String empBranchName = "";

			if (ServletFileUpload.isMultipartContent(request)) {
				try {

					System.out.println("inside multipart ");
					DiskFileUpload upload = new DiskFileUpload();

					List<FileItem> multiparts = upload.parseRequest(request);

					// new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

					for (FileItem item : multiparts) {
						String name = "";
						if (!item.isFormField()) {
							System.out.println("inside upload doc");
							name = new File(item.getName()).getName();
							if (!name.isEmpty()) {
								String extension = "";
								String fieldName = item.getFieldName();
								int i = name.lastIndexOf('.');
								if (i > 0) {
									extension = name.substring(i + 1);
								}
								name=new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date())+name;
								if (fieldName.equals("empPhoto") && (extension.toUpperCase().equals("JGEP")
										|| extension.toUpperCase().equals("JPG"))) {
									item.write(new File(UPLOAD_DIRECTORY_PHOTO + File.separator + name));
									empPhoto = name;
									System.out.println("photo upload");

								}
								if (fieldName.equals("empAdhar") && (extension.toUpperCase().equals("JGEP")
										|| extension.toUpperCase().equals("JPG"))) {
									item.write(new File(UPLOAD_DIRECTORY_ADHAR + File.separator + name));
									empAdhar = name;
									System.out.println("adhar upload");
								}
								if (fieldName.equals("empPanCard") && (extension.toUpperCase().equals("JGEP")
										|| extension.toUpperCase().equals("JPG"))) {
									item.write(new File(UPLOAD_DIRECTORY_PAN + File.separator + name));
									empPanCard = name;
									System.out.println("pan upload");
								}
								if (fieldName.equals("empExpLetter") && (extension.toUpperCase().equals("PDF"))) {
									item.write(new File(UPLOAD_DIRECTORY_EXPLETTER + File.separator + name));
									empExpLetter = name;
									System.out.println("exp upload");
								}
								if (fieldName.equals("empResume") && (extension.toUpperCase().equals("PDF"))) {
									item.write(new File(UPLOAD_DIRECTORY_RESUME + File.separator + name));
									empResume = name;
									System.out.println("resume upload");
								}
								if (fieldName.equals("empOther")) {
									item.write(new File(UPLOAD_DIRECTORY_OTHER + File.separator + name));
									empOther = name;
									System.out.println("other upload");
								}

							}
						} else if (item.isFormField()) {
							System.out.println("inside Field value");
							if (item.getFieldName().equals("empDept")) {
								empDept = item.getString();
							} else if (item.getFieldName().equals("desg")) {
								empDesg = item.getString();
							} else if (item.getFieldName().equals("joinDate")) {
								joinDate = sdf.parse(item.getString());
							} else if (item.getFieldName().equals("empQual")) {
								empQual = item.getString();
							} else if (item.getFieldName().equals("empTExp")) {
								empTExp = item.getString();
							} else if (item.getFieldName().equals("fName")) {
								fName = item.getString();
							} else if (item.getFieldName().equals("mName")) {
								mName = item.getString();
							} else if (item.getFieldName().equals("lName")) {
								lName = item.getString();
							} else if (item.getFieldName().equals("dob")) {
								dob = sdf.parse(item.getString());
							} else if (item.getFieldName().equals("gender")) {
								gender = item.getString();
							} else if (item.getFieldName().equals("empAdharNo")) {
								empAdharNo = item.getString();
							} else if (item.getFieldName().equals("empPanNo")) {
								empPanNo = item.getString();
							} else if (item.getFieldName().equals("cAddress")) {
								cAddress = item.getString();
							} else if (item.getFieldName().equals("pAddress")) {
								pAddress = item.getString();
							} else if (item.getFieldName().equals("country")) {
								country = item.getString();
							} else if (item.getFieldName().equals("state")) {
								state = item.getString();
							} else if (item.getFieldName().equals("city")) {
								city = item.getString();
							} else if (item.getFieldName().equals("pinCode")) {
								pinCode = Integer.parseInt(item.getString());
							} else if (item.getFieldName().equals("email")) {
								email = item.getString();
							} else if (item.getFieldName().equals("contact")) {
								contact = item.getString();
							} else if (item.getFieldName().equals("aContact")) {
								aContact = item.getString();
							} else if (item.getFieldName().equals("empBankName")) {
								empBankName = item.getString();
							} else if (item.getFieldName().equals("empAccNo")) {
								empAccNo = item.getString();
							} else if (item.getFieldName().equals("empAccHName")) {
								empAccHName = item.getString();
							} else if (item.getFieldName().equals("empIFSCCode")) {
								empIFSCCode = item.getString();
							} else if (item.getFieldName().equals("empBranchName")) {
								empBranchName = item.getString();
							}
						}

					}
				} catch (Exception e) {
					System.out.println(e);
				}
			}

			EmployeeBankDetailsEntity empbdm = new EmployeeBankDetailsEntity();
			empbdm.setBankName(empBankName);
			empbdm.setBranchName(empBranchName);
			empbdm.setAccholderName(empAccHName);
			empbdm.setAccNo(empAccNo);
			empbdm.setIfscCode(empIFSCCode);

			EmployeeDocEntity empdm = new EmployeeDocEntity();
			empdm.setEmpPhoto(empPhoto);
			empdm.setEmpAdharNo(empAdharNo);
			empdm.setEmpAdhar(empAdhar);
			empdm.setEmpPanNo(empPanNo);
			empdm.setEmpPan(empPanCard);
			empdm.setEmpResume(empResume);
			empdm.setEmpExprience(empExpLetter);
			empdm.setEmpOther(empOther);

			EmployeeJobDetailsEntity empjdm = new EmployeeJobDetailsEntity();
			empjdm.setEmpDept(empDept);

			empjdm.setEmpDesg(empDesg);
			empjdm.setEmpjoinDate(joinDate);
			empjdm.setEmpqualification(empQual);
			empjdm.setEmpTExp(empTExp);

			EmployeeDetailsEntity empm = new EmployeeDetailsEntity();
			empm.setfName(fName);
			empm.setmName(mName);
			empm.setlName(lName);
			empm.setDob(dob);
			empm.setGender(gender);
			empm.setEmail(email);
			empm.setContact(contact);
			empm.setaContact(aContact);
			empm.setpAddress(pAddress);
			empm.setcAddress(cAddress);
			empm.setCountry(country);
			empm.setState(state);
			empm.setCity(city);
			empm.setPinCode(pinCode);
			empm.setEmpCode("EMP"+fName+"00"+ new EmployeeDao().getCourseCategoryActiveRowCounts());
			empm.setEmpbdm(empbdm);
			empm.setEmpdm(empdm);
			empm.setEmpjdm(empjdm);
			empm.setDeleteStatus(0);
			System.out.println("calling dao");
			EmployeeDao dao = new EmployeeDao();
			dao.addEmployee(empm);
			response.sendRedirect(request.getContextPath() + "/EmployeeController?action=listEmployeeRecord");
		} catch (IOException e) {

			e.printStackTrace();
		}

	}

	private void listEmployeeFullRecord(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<EmployeeDetailsEntity> listEmp = new EmployeeDao().getEmployeeEntityFullDetails();
		request.setAttribute("empRecord", listEmp);
		request.getRequestDispatcher("Admin/Employee/EmployeeList.jsp").forward(request, response);
	}

	private void listEmployeeFormDetailsRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<DepartementTypeEntity> listDept = new DepartementTypeDao().getDepartementTypeFullRecord();
		List<DesignationEntity> listDes = new DesignationDao().getDesignationTypeFullRecord();
		List<CountryEntity> countryEntities = new UniversalDao().getCountryEntityDetails();
		List<BankNameEntity> bankEntities = new UniversalDao().getBankNameEntityDetails();
		request.setAttribute("bankRecord", bankEntities);
		request.setAttribute("countryRecord", countryEntities);
		request.setAttribute("desRecord", listDes);
		request.setAttribute("deptRecord", listDept);
		request.getRequestDispatcher("Admin/Employee/EmployeeReg.jsp").forward(request, response);
	}

}
