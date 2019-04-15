package com.controller.transport;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.transport.DriverDetailDao;
import com.dao.transport.DriverVehicleAlloactionDao;
import com.dao.transport.TransportDestinationDetailDao;
import com.dao.transport.VehicleCategoryDao;
import com.dao.transport.VehicleDestinationAllocationDao;
import com.dao.transport.VehicleDetailDao;
import com.entity.transport.DriverDetailEntity;
import com.entity.transport.DriverVehicleAlloactionEntity;
import com.entity.transport.TransportDestinationDetailEntity;
import com.entity.transport.VehicleCategoryEntity;
import com.entity.transport.VehicleDestinationAllocationEntity;
import com.entity.transport.VehicleDetailEntity;

/**
 * @author Devil
 *
 */
@WebServlet(description = "TransportController", urlPatterns = { "/TransportController" })
public class TransportController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TransportController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// fetching value from url field

		String action = request.getParameter("action");

		switch (action) {
		case "listVehicleCategory":
			listVehicleCategory(request, response);
			break;
		case "listVehicle":
			listVehicle(request, response);
			break;
		case "listDriver":
			listDriver(request, response);
			break;
		case "listDriverVehicleAllocation":
			listDriverVehicleAllocation(request, response);
			break;
		case "listTransportDestination":
			listTransportDestination(request, response);
			break;
		case "listVehicleDestinationAllocation":
			listVehicleDestinationAllocation(request, response);
			break;
		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}// Switch Ends
	}// doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// fetching value from hidden field

		String action = request.getParameter("action");

		switch (action) {
		case "AddVehicleCategory":
			addVehicleCategory(request, response);
			break;
		case "AddVehicle":
			addVehicle(request, response);
			break;
		case "AddDriver":
			addDriver(request, response);
			break;
		case "addDriverVehicleAllocation":
			System.out.println("hi");
			addDriverVehicleAllocation(request, response);
			break;
		case "addTransportDestination":
			addTransportDestination(request, response);
			break;
		case "addVehicleDestinationAllocation":
			addVehicleDestinationAllocation(request, response);
			break;
		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}// Switch Ends

	}// doPost

	// =======================================================Insert
	// Section========================================================================
	private void addVehicleCategory(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("Inside Add Vehicle Category Method");
		// fetching value from form field
		String vehicle_Category_Name = request.getParameter("vehicle_Category_Name");
		String vehicle_Category_Code = request.getParameter("vehicle_Category_Code");

		// creating entity object
		VehicleCategoryEntity entity = new VehicleCategoryEntity(vehicle_Category_Name, vehicle_Category_Code);

		// cretaing dao object and calling insert method
		VehicleCategoryDao dao = new VehicleCategoryDao();
		dao.addVehicleCategory(entity);
		System.out.println("Redirecting to list vehicle category page");
		response.sendRedirect(request.getContextPath() + "/TransportController?action=listVehicleCategory");

	}// addVehicleCategory

	private void addVehicle(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("Inside Add Vehicle  Method");
		// fetching value from form field
		try {
			String vehicle_No = request.getParameter("vehicle_No");
			int no_Of_Seats = Integer.parseInt(request.getParameter("no_Of_Seats"));

			int max_Allowed = Integer.parseInt(request.getParameter("max_Allowed"));

			int vehicle_Category = Integer.parseInt(request.getParameter("vehicle_Category"));
			String contact_Person_Name = request.getParameter("contact_Person_Name");
			String contact_Person_No = request.getParameter("contact_Person_No");
			String insurance_Date1 = request.getParameter("insurance_Date");
			SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
			Date insurance_Date;

			insurance_Date = sdf.parse(insurance_Date1);

			String track_Id = request.getParameter("track_Id");

			// creating entity object
			VehicleDetailEntity entity = new VehicleDetailEntity(vehicle_No, no_Of_Seats, max_Allowed, vehicle_Category,
					contact_Person_Name, contact_Person_No, insurance_Date, track_Id);
			// cretaing dao object and calling insert method
			VehicleDetailDao dao = new VehicleDetailDao();
			dao.addVehicle(entity);
			System.out.println("Redirecting to list vehicle category page");
			response.sendRedirect(request.getContextPath() + "/TransportController?action=listVehicle");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// addVehicle

	private void addDriver(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("Inside Add Driver  Method");
		// fetching value from form field
		try {
			String driver_Name = request.getParameter("driver_Name");
			String dob = request.getParameter("dob");
			String gender = request.getParameter("gender");
			String contact_No = request.getParameter("contact_No");
			String license_No = request.getParameter("license_No");
			String aadhar_No = request.getParameter("aadhar_No");
			String present_Add = request.getParameter("present_Add");
			String permanent_Add = request.getParameter("permanent_Add");
			SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");

			Date birth_Date = sdf.parse(dob);

			// creating entity object

			DriverDetailEntity entity = new DriverDetailEntity(driver_Name, birth_Date, gender, contact_No, license_No,
					aadhar_No, present_Add, permanent_Add);
			// cretaing dao object and calling insert method
			DriverDetailDao dao = new DriverDetailDao();
			dao.addDriver(entity);
			System.out.println("Redirecting to list driver page");
			response.sendRedirect(request.getContextPath() + "/TransportController?action=listDriver");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// addDriver

	private void addDriverVehicleAllocation(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		System.out.println("Inside addDriverVehicleAllocation  Method");
		// fetching value from form field

		int driver_Id = Integer.parseInt(request.getParameter("driver_Id"));
		int vehicle_Id = Integer.parseInt(request.getParameter("vehicle_Id"));
		// creating entity object
		DriverVehicleAlloactionEntity entity = new DriverVehicleAlloactionEntity(driver_Id, vehicle_Id);
		// cretaing dao object and calling insert method
		DriverVehicleAlloactionDao dao = new DriverVehicleAlloactionDao();
		dao.addDriverVehicleAllocation(entity);
		System.out.println("Redirecting to list driver page");
		response.sendRedirect(request.getContextPath() + "/TransportController?action=listDriverVehicleAllocation");
	}

	private void addTransportDestination(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("Inside Add Driver  Method");
		// fetching value from form field

		String dest_Name = request.getParameter("dest_Name");
		String dest_Code = request.getParameter("dest_Code");
		Float dest_Fare = Float.parseFloat(request.getParameter("dest_Fare"));
		// creating entity object
		TransportDestinationDetailEntity entity = new TransportDestinationDetailEntity(dest_Name, dest_Code, dest_Fare);
		// cretaing dao object and calling insert method
		TransportDestinationDetailDao dao = new TransportDestinationDetailDao();
		dao.addTransportDestination(entity);
		System.out.println("Redirecting to list driver page");
		response.sendRedirect(request.getContextPath() + "/TransportController?action=listTransportDestination");

	}// addTransportDestination

	private void addVehicleDestinationAllocation(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		System.out.println("Inside addVehicleDestinationAllocation  Method");
		// fetching value from form field

		int vehicle_Id = Integer.parseInt(request.getParameter("vehicle_Id"));
		String dest_Id1[] = request.getParameterValues("dest_Id");
		String dest_Id = null;
		for (String s : dest_Id1) {
			if (dest_Id == null) {
				dest_Id = s;
			} else {
				dest_Id = dest_Id + "," + s;
			}
		}
		System.out.println(dest_Id1);
		// creating entity object
		VehicleDestinationAllocationEntity entity = new VehicleDestinationAllocationEntity(vehicle_Id, dest_Id);
		// cretaing dao object and calling insert method
		VehicleDestinationAllocationDao dao = new VehicleDestinationAllocationDao();
		dao.addVehicleDestinaionAllocation(entity);
		System.out.println("Redirecting to listVehicleDestinationAllocation page");
		response.sendRedirect(
				request.getContextPath() + "/TransportController?action=listVehicleDestinationAllocation");

	}// addTransportDestination

	// =======================================================Listing
	// Section====================================================================
	private void listVehicleCategory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Listing vehicle Category List");
		List<VehicleCategoryEntity> vehicleCategoryList = new VehicleCategoryDao().getVehicleCategoryFullDetails();
		request.setAttribute("vehicleCategoryList", vehicleCategoryList);

		request.getRequestDispatcher("Admin/Transport/VehicleCategory.jsp").forward(request, response);

	}// listVehicleCategory

	private void listVehicle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Listing vehicle List");
		List<VehicleCategoryEntity> vehicleCategoryList = new VehicleCategoryDao().getVehicleCategoryFullDetails();
		List<VehicleDetailEntity> vehicleList = new VehicleDetailDao().getVehicleFullDetail();
		request.setAttribute("vehicleCategoryList", vehicleCategoryList);

		request.setAttribute("vehicleList", vehicleList);
		request.getRequestDispatcher("Admin/Transport/VehicleDetail.jsp").forward(request, response);

	}// listVehicle

	private void listDriver(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Listing Driver List");
		List<DriverDetailEntity> driverList = new DriverDetailDao().getDriverFullDetails();
		request.setAttribute("driverList", driverList);
		request.getRequestDispatcher("Admin/Transport/DriverDetail.jsp").forward(request, response);

	}// listDriver

	private void listDriverVehicleAllocation(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Listing Driver Vehicle List");
		List<DriverDetailEntity> driverVehicleList = new DriverDetailDao().getDriverFullDetails();
		List<DriverDetailEntity> driverList = new DriverDetailDao().getDriverFullDetails();
		List<VehicleDetailEntity> vehicleList = new VehicleDetailDao().getVehicleFullDetail();
		List<DriverVehicleAlloactionEntity> driverVehicleAllocationList = new DriverVehicleAlloactionDao()
				.getDriverVehicleAlloactionFullDetails();
		request.setAttribute("vehicleList", vehicleList);
		request.setAttribute("driverList", driverList);
		request.setAttribute("driverVehicleList", driverVehicleList);
		request.setAttribute("driverVehicleAllocationList", driverVehicleAllocationList);
		request.getRequestDispatcher("Admin/Transport/DriverVehicleAllocationDetail.jsp").forward(request, response);

	}// listDriverVehicleAllocation

	private void listTransportDestination(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Listing  destination");
		List<TransportDestinationDetailEntity> transportDestinationDetailList = new TransportDestinationDetailDao()
				.getTransportDestinationFullDetails();

		request.setAttribute("transportDestinationDetailList", transportDestinationDetailList);
		request.getRequestDispatcher("Admin/Transport/AddDestination.jsp").forward(request, response);

	}// listTransportDestination

	private void listVehicleDestinationAllocation(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("Listing vehicle destination");
		List<TransportDestinationDetailEntity> transportDestinationDetailList = new TransportDestinationDetailDao()
				.getTransportDestinationFullDetails();
		List<VehicleDetailEntity> vehicleList = new VehicleDetailDao().getVehicleFullDetail();
		List<VehicleDestinationAllocationEntity> vehicleDestinationAllocationList = new VehicleDestinationAllocationDao()
				.getVehicleDestinationAllocationFullDetail();
		request.setAttribute("vehicleList", vehicleList);
		request.setAttribute("transportDestinationDetailList", transportDestinationDetailList);
		request.setAttribute("vehicleDestinationAllocationList", vehicleDestinationAllocationList);
		request.getRequestDispatcher("Admin/Transport/VehicleDestinationAllocationDetail.jsp").forward(request,
				response);

	}// listVehicleDestinationAllocation

}
