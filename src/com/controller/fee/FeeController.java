package com.controller.fee;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.academicsetting.AcademicYearDao;
import com.dao.course.CourseMasterDao;
import com.dao.fee.FeeAmountDao;
import com.dao.fee.FeeCategoryDao;
import com.dao.fee.FeeFrequencyDao;
import com.dao.fee.StudentFeePaidAmountDao;
import com.dao.fee.StudentFeePaymentTypeDao;
import com.dao.student.StudentEnrolPersonalDetailDao;
import com.entity.academicsetting.AcademicYearEntity;
import com.entity.course.CourseEntity;
import com.entity.fee.FeeAmountEntity;
import com.entity.fee.FeeCategoryEntity;
import com.entity.fee.FeeFrequencyEntity;
import com.entity.fee.StudentFeePaidAmountEntity;
import com.entity.fee.StudentFeePaymentTypeEntity;
import com.entity.student.StudentEnrolPersonalDetailEntity;

/**
 * @author Devil
 *
 */
@WebServlet(description = "FeeController", urlPatterns = { "/FeeController" })
public class FeeController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public FeeController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// fetching value from url field

		String action = request.getParameter("action");

		switch (action) {
		case "listFeeFrequencyRecord":
			System.out.println("calling list feefrequency method ");
			listFeeFrequencyRecord(request, response);
			break;
		case "listFeeCategoryRecord":
			System.out.println("calling list feecategory method ");
			listFeeCategoryRecord(request, response);
			break;
		case "listFeeAmountRecord":
			System.out.println("calling list feeamount method ");
			listFeeAmountRecord(request, response);
			break;

		case "listStudentFeePaymentTypeRecord":
			System.out.println("calling list feeamount method ");
			listStudentFeePaymentTypeRecord(request, response);
			break;
		case "listStudentFeeDueRecord":
			System.out.println("calling list feeamount method ");
			listStudentFeeDueRecord(request, response);
			break;
		case "PayDueFee":
			System.out.println("calling list pay fee ");
			listStudentFeeDuePayRecord(request, response);
			break;
		case "redirectToPaymentUpdationPage":
			System.out.println("calling add feecategory method ");
			redirectToPaymentUpdationPage(request, response);
			break;
		default:
			response.sendRedirect(request.getContextPath() + "/Admin/AdminDashboard.jsp");
		}

	}// doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// fetching form hidden field value
		String action = request.getParameter("action");

		switch (action) {
		case "addFeeFrequency":
			System.out.println("calling  addFeeFrequency method ");
			addFeeFrequencyRecord(request, response);
			break;
		case "addFeeCategory":
			System.out.println("calling add feecategory method ");
			addFeeCategoryRecord(request, response);
			break;
		case "AddFeeAmount":
			System.out.println("calling add feecategory method ");
			addFeeAmountRecord(request, response);
			break;
		case "addStudentFeePaymentType":
			System.out.println("calling  addStudentFeePaymentType method ");
			addStudentFeePaymentType(request, response);
			break;
		case "updateStudentFeeStatus":
			System.out.println("calling update fee method ");
			addFeePaidAmountRecord(request, response);
			break;
		default:
			response.sendRedirect(request.getContextPath() + "/Admin/AdminDashboard.jsp");
		}

	}// doPost

	

	private void addFeeFrequencyRecord(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// fetching value from input field
		String frequencyName = request.getParameter("frequencyName");
		String frequencyCode = request.getParameter("frequencyCode");
		int noOfInstallement = Integer.parseInt(request.getParameter("noOfInstallement"));
		// creating entiry obj and value to it
		FeeFrequencyEntity entity = new FeeFrequencyEntity(frequencyName, frequencyCode,noOfInstallement);

		// creating dao object
		FeeFrequencyDao dao = new FeeFrequencyDao();

		// calling addfeeCategory method of dao
		dao.addFeeFrequency(entity);
		System.out.println("redirecting to list feecategory");
		response.sendRedirect(request.getContextPath() + "/FeeController?action=listFeeFrequencyRecord");

	}

	private void addFeeCategoryRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from input field
		String feeCatName = request.getParameter("feeCatName");
		String feeCatCode = request.getParameter("feeCatCode");
		String feerefundable = "YES";
		if(request.getParameter("feerefundable")==null) {
			 feerefundable = "NO";
		}
		// creating entiry obj and value to it
		FeeCategoryEntity entity = new FeeCategoryEntity(feeCatName, feeCatCode,feerefundable);

		// creating dao object
		FeeCategoryDao dao = new FeeCategoryDao();

		// calling addfeeCategory method of dao
		dao.addFeeCategory(entity);
		System.out.println("redirecting to list feecategory");
		response.sendRedirect(request.getContextPath() + "/FeeController?action=listFeeCategoryRecord");
	}// addFeeCategoryRecord

	private void addFeeAmountRecord(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// fetching value from input field
		int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
		int courseId = Integer.parseInt(request.getParameter("courseId"));
		int feeCatId = Integer.parseInt(request.getParameter("feeCatId"));
		Float feeAmount = Float.parseFloat(request.getParameter("feeAmount"));

		// creating entiry obj and value to it
		FeeAmountEntity entity = new FeeAmountEntity(academicYearId, courseId, feeCatId, feeAmount);
		// creating dao object
		FeeAmountDao dao = new FeeAmountDao();
		dao.addFeeAmount(entity);

		System.out.println("redirecting to list feeAmout");
		response.sendRedirect(request.getContextPath() + "/FeeController?action=listFeeAmountRecord");
	}// addFeeAmountRecord

	
	private void addStudentFeePaymentType(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// fetching value from input field
		int stud_Id = Integer.parseInt(request.getParameter("studId"));
		int payment_Type = Integer.parseInt(request.getParameter("payment_Type"));
		
		// creating entiry obj and value to it
		StudentFeePaymentTypeEntity entity = new StudentFeePaymentTypeEntity(stud_Id, payment_Type);
		// creating dao object and calling method
		StudentFeePaymentTypeDao dao = new StudentFeePaymentTypeDao();
		dao.addStudentFeePaymentType(entity);
		System.out.println("redirecting to list feeAmout");
		response.sendRedirect(request.getContextPath() + "/FeeController?action=listStudentFeePaymentTypeRecord");
		
		
	}//addStudentFeePaymentType
	
	private void addFeePaidAmountRecord(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// fetching value from input field
		int studId = Integer.parseInt(request.getParameter("studId"));
		Float payingAmount = Float.parseFloat(request.getParameter("payingAmount"));
		// creating entiry obj and value to it
		StudentFeePaidAmountEntity entity = new StudentFeePaidAmountEntity(studId, payingAmount);
		// creating dao object and calling method
		StudentFeePaidAmountDao dao = new StudentFeePaidAmountDao();
		dao.addFeePaidAMount(entity);
		System.out.println("redirecting to list feeAmout");
		response.sendRedirect(request.getContextPath() + "/FeeController?action=listStudentFeeDueRecord");
	}// updateFeePaidAmountRecord
//=========================================================Listing Section =====================================================================

	private void listFeeFrequencyRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<FeeFrequencyEntity> feeFrequencyList = new FeeFrequencyDao().getFeeFrequencyFullDetails();
		request.setAttribute("feeFrequencyList", feeFrequencyList);
		request.getRequestDispatcher("Admin/Fees/FeeFrequency.jsp").forward(request, response);
	}// listFeeCategoryRecord

	private void listFeeCategoryRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<FeeCategoryEntity> feeCategoryList = new FeeCategoryDao().getFeeCategoryFullDetails();
		request.setAttribute("feeCategoryList", feeCategoryList);
		request.getRequestDispatcher("Admin/Fees/FeeCategory.jsp").forward(request, response);
	}// listFeeCategoryRecord

	private void listFeeAmountRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<AcademicYearEntity> listAcademicYear = new AcademicYearDao().getAcademicYearFullDetails();
		List<CourseEntity> listCourseEntities = new CourseMasterDao().getCourseFullDetails();
		List<FeeCategoryEntity> feeCategoryList = new FeeCategoryDao().getFeeCategoryFullDetails();
		List<FeeAmountEntity> feeAmountList = new FeeAmountDao().getFeeAmountFullDetails();
		request.setAttribute("listfeeCategory", feeCategoryList);
		request.setAttribute("listAcademicYear", listAcademicYear);
		request.setAttribute("listCourseEntities", listCourseEntities);
		request.setAttribute("listFeeAmount", feeAmountList);
		request.getRequestDispatcher("Admin/Fees/FeeAmount.jsp").forward(request, response);

	}// listFeeAmountRecord

	private void listStudentFeeDueRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<StudentEnrolPersonalDetailEntity> listStudentEnrolled = new StudentEnrolPersonalDetailDao()
				.getStudentEnrolledFullRecord();
		List<AcademicYearEntity> listAcademicYear = new AcademicYearDao().getAcademicYearFullDetails();
		List<CourseEntity> listCourseEntities = new CourseMasterDao().getCourseFullDetails();
		List<FeeCategoryEntity> feeCategoryList = new FeeCategoryDao().getFeeCategoryFullDetails();
		List<FeeAmountEntity> feeAmountList = new FeeAmountDao().getFeeAmountFullDetails();
		List<StudentFeePaidAmountEntity> feePaidAmountList = new StudentFeePaidAmountDao()
				.getStudentFeePaidAmountDetails();
		request.setAttribute("listfeeCategory", feeCategoryList);
		request.setAttribute("listAcademicYear", listAcademicYear);
		request.setAttribute("listCourseEntities", listCourseEntities);
		request.setAttribute("listFeeAmount", feeAmountList);
		request.setAttribute("listStudentEnrolled", listStudentEnrolled);
		request.setAttribute("listFeePaidAmount", feePaidAmountList);
		request.getRequestDispatcher("Admin/Fees/StudentFeeDueList.jsp").forward(request, response);
	}// listStudentFeeDueRecord

	private void listStudentFeePaymentTypeRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<FeeFrequencyEntity> feeFrequencyList = new FeeFrequencyDao().getFeeFrequencyFullDetails();
		List<StudentEnrolPersonalDetailEntity> listStudentEnrolled = new StudentEnrolPersonalDetailDao()
				.getStudentEnrolledFullRecord();
		List<StudentFeePaymentTypeEntity> studentFeePAymentTypeList = new StudentFeePaymentTypeDao().getStudentFeePaymentTypeFullDetails();
		request.setAttribute("listStudentEnrolled", listStudentEnrolled);
		request.setAttribute("feeFrequencyList", feeFrequencyList);
		request.setAttribute("studentFeePAymentTypeList", studentFeePAymentTypeList);
		request.getRequestDispatcher("Admin/Fees/StudentFeePaymentType.jsp").forward(request, response);
	}// listStudentFeeDueRecord

	private void listStudentFeeDuePayRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<StudentEnrolPersonalDetailEntity> listStudentEnrolled = new StudentEnrolPersonalDetailDao()
				.getStudentEnrolledFullRecord();
		request.setAttribute("listStudentEnrolled", listStudentEnrolled);
		request.getRequestDispatcher("Admin/Fees/PayDueFee.jsp").forward(request, response);
	}// listStudentFeeDueRecord

	private void redirectToPaymentUpdationPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<FeeAmountEntity> feeAmountList = new FeeAmountDao().getFeeAmountFullDetails();
		List<StudentFeePaidAmountEntity> feePaidAmountList = new StudentFeePaidAmountDao()
				.getStudentFeePaidAmountDetails();
		int studid = Integer.parseInt(request.getParameter("studId"));
		StudentEnrolPersonalDetailEntity std = new StudentEnrolPersonalDetailDao().getStudentEnrolledRecordById(studid);
		StudentFeePaymentTypeEntity studentFeePAymentTypeEntity = new StudentFeePaymentTypeDao().getStudentFeePaymentTypeDetailsByStudentId(studid);
		FeeFrequencyEntity feeFrequencyList = new FeeFrequencyDao().getFeeFrequencyDetailsById(studentFeePAymentTypeEntity.getFee_Freq_Id());
		request.setAttribute("listFeeAmount", feeAmountList);
		request.setAttribute("listFeePaidAmount", feePaidAmountList);
		request.setAttribute("studObj", std);
		request.setAttribute("studentFeePAymentTypeObj", studentFeePAymentTypeEntity);
		request.setAttribute("feeFrequency", feeFrequencyList);
		request.getRequestDispatcher("Admin/Fees/UpdateStudentFeeStatus.jsp").forward(request, response);
	}// redirectToPaymentUpdationPage

}
