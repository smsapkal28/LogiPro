
<%@page import="com.Master.PreDetails.entity.AlertEntity"%>
<%@page import="com.Master.PreDetails.entity.StateEntity"%>
<jsp:include page="../Header.jsp" />
<jsp:include page="Mheader.jsp" />
<%@ page language="java" import="java.sql.*,java.util.*,java.text.*"%>
<style>
.text_addrow {
	padding: 2px;
	border: 1px solid #D8D8D8;
	color: #444;
	width: 200px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	transition: all 0.25s ease-in-out 0s;
}
</style>
<%
	String message = (String) request.getAttribute("message");
	String location = (String)request.getAttribute("location");

	System.out.println(location+"===message==" + message);
%>
<script>
        <%if (message == null || message.equals("") || message.equals("null")) {
			} else {%>
                var mes="<%=message%>";
				alert(mes);
<%}%>
	
</script>
<%
	List<StateEntity> statelist = (List<StateEntity>) request.getAttribute("staterecord");
	List<AlertEntity> alertlist = (List<AlertEntity>) request.getAttribute("alertrecord");

	System.out.println("=========statelist=======" + statelist);
%>

<script>
	$(document).ready(function() {
		
		$('form').submit(function() {
			$('#submitbtn').attr('disabled', 'disabled');
		});
		AddGST('','','','','','','','','','');
		AddAlert('','','','','');
		AddCreditRate('','','','','');
	});
</script>

<script>
function trim(x) {
	  return x.replace(/^\s+|\s+$/gm,'');
	}
	
function AddGST(gst,address,state,city,postal_code,telephone,fax,email,contact_person,sez)
{
  var tbl = document.getElementById('gsttable');
  var lastRow = tbl.rows.length;
  var iteration = lastRow;
  var row = tbl.insertRow(lastRow);
  if(lastRow%2 != 0)
  {
  tbl.rows[lastRow].className='row1';
  }
  else
  {
  tbl.rows[lastRow].className='row0';
  }

  var cellRight0 = row.insertCell(0);
  var el = document.createElement('input');
  el.type = 'text';
  el.className = 'text_addrow';
  el.name = 'gst' + iteration;
  el.id = 'gst' + iteration;
  el.style.cssText = 'width: 200px';
  el.value=gst;
  el.onblur = function() {trim(this)};
  cellRight0.appendChild(el);

  var cellRight1 = row.insertCell(1);
  var el = document.createElement('textarea');
  el.cols='30';
  el.rows='2';
  el.className = 'text';
  el.name = 'address' + iteration;
  el.id = 'address' + iteration;
  el.style.cssText = 'width: 200px';
  el.onblur = function() {replaceAll(this);replaceAmpr(this)};
  el.value=address;
  cellRight1.appendChild(el);

  var cellRight2 = row.insertCell(2);
  var el = document.createElement('Select');
  el.name = 'state'+iteration;
  el.className = 'ui-widget select ui-corner-all';
  el.id = 'state'+iteration;
  if(state=="")
  {
        el.options[0] = new Option('Select', 'Select');
  }
  else
  {
        el.options[0] = new Option(state,state);
  }
  <%int i = 0;
			for (StateEntity list : statelist) {%>
  var cname="<%=list.getState()%>";
  var j="<%=i + 1%>";
  el.options[j] = new Option(cname,cname);
  <%i++;
			}%>
  cellRight2.appendChild(el);

  var cellRight3 = row.insertCell(3);
  var el = document.createElement('input');
  el.type = 'text';
  el.className = 'text ui-widget-content ui-corner-all';
  el.name = 'city' + iteration;
  el.id = 'city' + iteration;
  el.style.cssText = 'width: 80px';
  el.value=city;
  el.onblur = function() {trim(this)};
  cellRight3.appendChild(el);

  var cellRight4 = row.insertCell(4);
  var el = document.createElement('input');
  el.type = 'text';
  el.className = 'text ui-widget-content ui-corner-all';
  el.name = 'postal_code' + iteration;
  el.id = 'postal_code' + iteration;
  el.style.cssText = 'width: 80px';
  el.value=postal_code;
  el.onblur = function() {trim(this)};
  cellRight4.appendChild(el);

  var cellRight5 = row.insertCell(5);
  var el = document.createElement('input');
  el.type = 'text';
  el.className = 'text ui-widget-content ui-corner-all';
  el.name = 'telephone' + iteration;
  el.id = 'telephone' + iteration;
  el.style.cssText = 'width: 100px';
  el.value=telephone;
  el.onblur = function() {trim(this)};
  cellRight5.appendChild(el);

  var cellRight6 = row.insertCell(6);
  var el = document.createElement('input');
  el.type = 'text';
  el.className = 'text ui-widget-content ui-corner-all';
  el.name = 'fax' + iteration;
  el.id = 'fax' + iteration;
  el.style.cssText = 'width: 100px';
  el.value=fax;
  el.onblur = function() {trim(this)};
  cellRight6.appendChild(el);

  var cellRight7 = row.insertCell(7);
  var el = document.createElement('input');
  el.type = 'text';
  el.className = 'text ui-widget-content ui-corner-all';
  el.name = 'email' + iteration;
  el.id = 'email' + iteration;
  el.style.cssText = 'width: 200px';
  el.value=email;
  el.onblur = function() {trim(this)};
  cellRight7.appendChild(el);


  var cellRight8 = row.insertCell(8);
  var el = document.createElement('input');
  el.type = 'text';
  el.className = 'text ui-widget-content ui-corner-all';
  el.name = 'contact_person' + iteration;
  el.id = 'contact_person' + iteration;
  el.style.cssText = 'width: 80px';
  el.value=contact_person;
  el.onblur = function() {trim(this)};
  cellRight8.appendChild(el);

  var cellRight9 = row.insertCell(9);
  var el = document.createElement('Select');
  el.name = 'sez'+iteration;
  el.className = 'ui-widget select ui-corner-all';
  el.id = 'sez'+iteration;
  if(sez=="")
  {
        el.options[0] = new Option('NO', 'NO');
        el.options[1] = new Option('YES', 'YES');
  }
  else
  {
        el.options[0] = new Option(sez,sez);
        el.options[1] = new Option('NO', 'NO');
        el.options[2] = new Option('YES', 'YES');
  }
  cellRight9.appendChild(el);

  if(parseFloat(iteration)==1)
  {
  }
  else
  {
  var cellRight10 = row.insertCell(10);
  var el = document.createElement('a');
  el.setAttribute('href','#');
  el.onclick=function(){deleterwGST(this.parentNode.parentNode.rowIndex)};
  var img=document.createElement('img');
  img.setAttribute('src','${pageContext.request.contextPath }/images/img-raty/cancel-off-big.png');
  img.style.cssText = 'border-color: white'
  el.appendChild(img);
  cellRight10.appendChild(el);

  }
}
function deleterwGST(i)
{
        var tbl = document.getElementById('gsttable');
        tbl.deleteRow(i);
}

function AddAlert(alertname,shiptype,toname,toemaiid)
{
  var tbl = document.getElementById('alerttable');
  var lastRow = tbl.rows.length;
  var iteration = lastRow;
  var row = tbl.insertRow(lastRow);
  if(lastRow%2 != 0)
  {
  tbl.rows[lastRow].className='row1';
  }
  else
  {
  tbl.rows[lastRow].className='row0';
  }

  var cellRight0 = row.insertCell(0);
  var el = document.createElement('Select');
  el.name = 'alertname'+iteration;
  el.className = 'ui-widget select ui-corner-all';
  el.id = 'alertname'+iteration;
  <%int k = 0;
for (AlertEntity list : alertlist) {%>
var cname="<%=list.getAlertname()%>";
var j="<%=k + 1%>";
		el.options[j] = new Option(cname, cname);
<%k++;
			}%>
	cellRight0.appendChild(el);

		var cellRight1 = row.insertCell(1);
		var el = document.createElement('Select');
		el.name = 'shiptype' + iteration;
		el.className = 'ui-widget select ui-corner-all';
		el.id = 'shiptype' + iteration;
		el.options[0] = new Option('SEA IMPORT', 'SEA IMPORT');
		el.options[1] = new Option('SEA EXPORT', 'SEA EXPORT');
		el.options[2] = new Option('AIR IMPORT', 'AIR IMPORT');
		el.options[3] = new Option('AIR EXPORT', 'AIR EXPORT');
		cellRight1.appendChild(el);

		var cellRight2 = row.insertCell(2);
		var el = document.createElement('input');
		el.type = 'text';
		el.className = 'text ui-widget-content ui-corner-all';
		el.name = 'toname' + iteration;
		el.id = 'toname' + iteration;
		el.size = 20;
		el.value = toname;
		cellRight2.appendChild(el);

		var cellRight3 = row.insertCell(3);
		var el = document.createElement('input');
		el.type = 'text';
		el.className = 'text ui-widget-content ui-corner-all';
		el.name = 'toemailid' + iteration;
		el.id = 'toemaiid' + iteration;
		el.size = 20;
		el.value = toemaiid;
		cellRight3.appendChild(el);

		var cellRight4 = row.insertCell(4);
		var el = document.createElement('a');
		el.setAttribute('href', '#');
		el.onclick = function() {
			deleterwAlert(this.parentNode.parentNode.rowIndex)
		};
		var img = document.createElement('img');
		img
				.setAttribute('src',
						'${pageContext.request.contextPath }/images/img-raty/cancel-off-big.png');
		img.style.cssText = 'border-color: white'
		el.appendChild(img);
		cellRight4.appendChild(el);

	}
	function deleterwAlert(i) {
		var tbl = document.getElementById('alerttable');
		tbl.deleteRow(i);
	}
	function AddCreditRate(shiptype_cr, pdc, noofdays, amount_cr) {
		var tbl = document.getElementById('creditratetable');
		var lastRow = tbl.rows.length;
		var iteration = lastRow;
		var row = tbl.insertRow(lastRow);
		if (lastRow % 2 != 0) {
			tbl.rows[lastRow].className = 'row1';
		} else {
			tbl.rows[lastRow].className = 'row0';
		}

		var cellRight0 = row.insertCell(0);
		var el = document.createElement('Select');
		el.name = 'shiptype_cr' + iteration;
		el.className = 'ui-widget select ui-corner-all';
		el.id = 'shiptype_cr' + iteration;
		el.options[0] = new Option('SEA IMPORT', 'SEA IMPORT');
		el.options[1] = new Option('SEA EXPORT', 'SEA EXPORT');
		el.options[2] = new Option('AIR IMPORT', 'AIR IMPORT');
		el.options[3] = new Option('AIR EXPORT', 'AIR EXPORT');
		cellRight0.appendChild(el);

		var cellRight1 = row.insertCell(1);
		var el = document.createElement('Select');
		el.name = 'pdc' + iteration;
		el.className = 'ui-widget select ui-corner-all';
		el.id = 'pdc' + iteration;
		el.options[0] = new Option('YES', 'YES');
		el.options[1] = new Option('NO', 'NO');
		cellRight1.appendChild(el);

		var cellRight2 = row.insertCell(2);
		var el = document.createElement('Select');
		el.name = 'noofdays' + iteration;
		el.className = 'ui-widget select ui-corner-all';
		el.id = 'noofdays' + iteration;
		el.options[0] = new Option('0', '0');
		el.options[1] = new Option('10', '10');
		el.options[2] = new Option('15', '15');
		el.options[3] = new Option('30', '30');
		el.options[4] = new Option('45', '45');
		el.options[5] = new Option('60', '60');
		el.options[6] = new Option('75', '75');
		el.options[7] = new Option('90', '90');
		el.options[8] = new Option('105', '105');
		el.options[9] = new Option('120', '120');
		cellRight2.appendChild(el);

		var cellRight3 = row.insertCell(3);
		var el = document.createElement('input');
		el.type = 'text';
		el.className = 'text ui-widget-content ui-corner-all';
		el.name = 'amount_cr' + iteration;
		el.id = 'amount_cr' + iteration;
		el.size = 10;
		el.value = amount_cr;
		cellRight3.appendChild(el);

		var cellRight4 = row.insertCell(4);
		var el = document.createElement('a');
		el.setAttribute('href', '#');
		el.onclick = function() {
			deleterwAlert(this.parentNode.parentNode.rowIndex)
		};
		var img = document.createElement('img');
		img
				.setAttribute('src',
						'${pageContext.request.contextPath }/images/img-raty/cancel-off-big.png');
		img.style.cssText = 'border-color: white'
		el.appendChild(img);
		cellRight4.appendChild(el);

	}
	function deleterwAlert(i) {
		var tbl = document.getElementById('creditratetable');
		tbl.deleteRow(i);
	}
</script>
<script type="text/javascript">
	function Validate() {
		if (document.getElementById('customername').value == "") {
			alert("Please Enter Export Customer Name!!!");
			return false;
		}
		if (document.getElementById('panno').value == "") {
			alert("Please Enter Export Pan No!!!");
			return false;
		}
		if (document.getElementById('custtype').value == "") {
			alert("Please Enter Export Customer Type!!!");
			return false;
		}
		if (document.getElementById('customername').value == "") {
			alert("Please Enter Export Customer Service Name!!!");
			return false;
		}
		if (document.getElementById('weburl').value == "") {
			alert("Please Enter Export Web Url!!!");
			return false;
		}
		if (document.getElementById('fac').value == "Select") {
			alert("Please Enter Export FAC!!!");
			return false;
		}
		if (document.getElementById('telephone1').value == "") {
			alert("Please Enter  Telephone 1 !!!");
			return false;
		}
		if (document.getElementById('telephone2').value == "") {
			alert("Please Enter telephone 2 !!!");
			return false;
		}
		if (document.getElementById('location').value == "") {
			alert("Please Enter Location !!!");
			return false;
		}
		if (document.getElementById('exportemail').value == "") {
			alert("Please Enter Export Email !!!");
			return false;
		}
		if (document.getElementById('importemail').value == "") {
			alert("Please Enter Import Email !!!");
			return false;
		}
		if (document.getElementById('mktname_exp').value == ""
				&& document.getElementById('mktname_imp').value == ""
				&& document.getElementById('mktname_air_exp').value == ""
				&& document.getElementById('mktname_air_imp').value == "") {
			alert("Please Enter Marketing Person name !!!");
			return false;
		}
		if (document.getElementById('mktname_exp').value != ""
				&& document.getElementById('cs_exp').value == "") {
			alert("Please Enter Export CS !!!");
			return false;
		}
		if (document.getElementById('mktname_imp').value != ""
				&& document.getElementById('cs_imp').value == "") {
			alert("Please Enter Import  CS !!!");
			return false;
		}
		if (document.getElementById('mktname_air_exp').value != ""
				&& document.getElementById('cs_air_exp').value == "") {
			alert("Please Enter Air Export CS !!!");
			return false;
		}
		if (document.getElementById('mktname_air_imp').value != ""
				&& document.getElementById('cs_air_imp').value == "") {
			alert("Please Enter Import Email !!!");
			return false;
		}
		if (document.getElementById('importemail').value == "") {
			alert("Please Enter Air Import CS !!!");
			return false;
		}
		if (document.getElementById('customeraddress').value == "") {
			alert("Please Enter Customer Address !!!");
			return false;
		}
		if (document.getElementById('kpname').value == "") {
			alert("Please Enter Key Person Name !!!");
			return false;
		}
		////////////////////////////////// GST LIST/////////////////
		document.forms[0]['gstlist'].value = "";
		var obj1 = document.getElementById('gsttable');
		var rowcontainer = obj1.rows;
		for (var i = 1; i < rowcontainer.length; i++) {

			if (document.getElementById('gst' + i).value == "") {
				alert("Pls Enter GST NO....!!!!");
				return false;
			} else {
				document.forms[0].gstlist.value += document
						.getElementById('gst' + i).value
						+ "*";
			}
			if (document.getElementById('address' + i).value == "") {
				alert("Pls Enter Address....!!!!");
				return false;
			} else {
				document.forms[0].gstlist.value += document
						.getElementById('address' + i).value
						+ "*";
			}
			if (document.getElementById('state' + i).value == "Select") {
				alert("Pls Select State....!!!!");
				return false;
			} else {
				document.forms[0].gstlist.value += document
						.getElementById('state' + i).value
						+ "*";
			}
			if (document.getElementById('city' + i).value == ""
					|| document.getElementById('city' + i).value == "NA") {
				alert("Pls Enter City....!!!!");
				return false;
			} else {
				document.forms[0].gstlist.value += document
						.getElementById('city' + i).value
						+ "*";
			}
			if (document.getElementById('postal_code' + i).value == ""
					|| document.getElementById('postal_code' + i).value == "NA") {
				alert("Pls Enter Postal Code....!!!!");
				return false;
			} else {
				document.forms[0].gstlist.value += document
						.getElementById('postal_code' + i).value
						+ "*";
			}
			if (document.getElementById('telephone' + i).value == "") {
				alert("Pls Enter Phone No....!!!!");
				return false;
			} else {
				document.forms[0].gstlist.value += document
						.getElementById('telephone' + i).value
						+ "*";
			}
			if (document.getElementById('fax' + i).value == "") {
				alert("Pls Enter Fax No....!!!!");
				return false;
			} else {
				document.forms[0].gstlist.value += document
						.getElementById('fax' + i).value
						+ "*";
			}
			if (document.getElementById('email' + i).value == "") {
				alert("Pls Enter Email ID....!!!!");
				return false;
			} else {
				document.forms[0].gstlist.value += document
						.getElementById('email' + i).value
						+ "*";
			}
			if (document.getElementById('contact_person' + i).value == "") {
				alert("Pls Enter Contact Person Name....!!!!");
				return false;
			} else {
				document.forms[0].gstlist.value += document
						.getElementById('contact_person' + i).value
						+ "*";
			}

			document.forms[0].gstlist.value += document.getElementById('sez'
					+ i).value
					+ "*";
		}

		/////////////// ALERT MAPPING //////////////
		document.forms[0]['alertlist'].value = "";
		var obj2 = document.getElementById('alerttable');
		var rowcontainer2 = obj2.rows;
		for (var i = 1; i < rowcontainer2.length; i++) {

			if (document.getElementById('alertname' + i).value == "Select") {
				alert("Pls Enter Alert NAme....!!!!");
				return false;
			} else {
				document.forms[0].alertlist.value += document
						.getElementById('alertname' + i).value
						+ "*";
			}
			if (document.getElementById('shiptype' + i).value == "") {
				alert("Pls Enter Shipment Type....!!!!");
				return false;
			} else {
				document.forms[0].alertlist.value += document
						.getElementById('shiptype' + i).value
						+ "*";
			}
			if (document.getElementById('toname' + i).value == "") {
				alert("Pls Enter To Name....!!!!");
				return false;
			} else {
				document.forms[0].alertlist.value += document
						.getElementById('toname' + i).value
						+ "*";
			}
			if (document.getElementById('toemaiid' + i).value == ""
					|| document.getElementById('toemaiid' + i).value == "NA") {
				alert("Pls Enter TO Email Id....!!!!");
				return false;
			} else {
				document.forms[0].alertlist.value += document
						.getElementById('toemaiid' + i).value
						+ "*";
			}
		}

		/////////////// CREDIT RATING //////////////
		document.forms[0]['creditratelist'].value = "";
		var obj2 = document.getElementById('creditratetable');
		var rowcontainer2 = obj2.rows;
		for (var i = 1; i < rowcontainer2.length; i++) {

			if (document.getElementById('shiptype_cr' + i).value == "Select") {
				alert("Pls Enter Shipment Type....!!!!");
				return false;
			} else {
				document.forms[0].creditratelist.value += document
						.getElementById('shiptype_cr' + i).value
						+ "*";
			}
			if (document.getElementById('pdc' + i).value == "") {
				alert("Pls Enter PDC....!!!!");
				return false;
			} else {
				document.forms[0].creditratelist.value += document
						.getElementById('pdc' + i).value
						+ "*";
			}
			if (document.getElementById('noofdays' + i).value == "") {
				alert("Pls Enter No Of Days....!!!!");
				return false;
			} else {
				document.forms[0].creditratelist.value += document
						.getElementById('noofdays' + i).value
						+ "*";
			}
			if (document.getElementById('amount_cr' + i).value == "") {
				alert("Pls Enter Amount....!!!!");
				return false;
			} else {
				document.forms[0].creditratelist.value += document
						.getElementById('amount_cr' + i).value
						+ "*";
			}
		}
		/*alert(document.forms[0].gstlist.value);
		alert(document.forms[0].alertlist.value);
		alert(document.forms[0].creditratelist.value);*/

		return true;
	}
</script>
<script>
	$(function() {
		$('#toggle-one').bootstrapToggle();
	})
</script>
<div id="content">
	<div class="grid_container">
		<div class="grid_12 full_block">
			<div class="widget_wrap">
				<div class="breadCrumbHolder module">
					<div id="breadCrumb0" class="breadCrumb module white_lin">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Master</a></li>
							<li><a href="#">Customer</a></li>
							<li><a href="#">Add Customer</a></li>
						</ul>
					</div>
				</div>
				<div class="widget_top">
					<span class="h_icon list_image"></span>
					<h6>Add Customer</h6>
				</div>
				<div class="widget_content">
					<form
						action="${pageContext.request.contextPath }/CustomerController"
						method="post" class="form_container">
						<input type='hidden' name="action" value="CustomerAdd" /> <input
							type='hidden' name="gstlist" /> <input type='hidden'
							name="alertlist" /> <input type='hidden' name="creditratelist" />
						<ul>
							<li>
								<fieldset>
									<legend>Customer Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_4 alpha">
														<label class="field_title">Customer Name<span
															class="req">*</span></label> <input name="customername"
															id="customername" type="text" tabindex="1" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Pan No.<span
															class="req">*</span></label> <input name="panno" id="panno"
															type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Type<span class="req">*</span></label>
														<div class="form_input">
															<select style="width: 150px;" name="custtype"
																id="custtype" class="chzn-select-deselect" tabindex="16">
																<option value="Direct" selected>Direct</option>
																<option value="Forwarder">Forwarder</option>
															</select>
														</div>
													</div>

													<div class="form_grid_2">
														<label class="field_title">Url / Website</label> <input
															name="weburl" id="weburl" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">FAC<span class="req">*</span></label>
														<div class="form_input">
															<select style="width: 150px;" name="fac" id="fac"
																class="chzn-select-deselect" tabindex="16">
																<option value="YES" selected>YES</option>
																<option value="NO">NO</option>
															</select>
														</div>
													</div>
													<span class="clear"></span>
												</div>
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">Telephone 1</label> <input
															name="telephone1" id="telephone1" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Telephone 2</label> <input
															name="telephone2" id="telephone2" type="text" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Location</label> <input
															name="location" id="location" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Export Email Id</label> <input
															name="exportemail" id="exportemail" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Import Email Id</label> <input
															name="importemail" id="importemail" type="text" />
													</div>
													<span class="clear"></span>
												</div>
												<div class="form_input">
													<div class="form_grid_3 alpha">
														<label class="field_title">Mrk. Exe. Export</label> <input
															name="mktname_exp" id="mktname_exp" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Mrk. Exe. Import</label> <input
															name="mktname_imp" id="mktname_imp" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">CS. Exe. Export</label> <input
															name="cs_exp" id="cs_exp" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">CS Exe. Import</label> <input
															name="cs_imp" id="cs_imp" type="text" />
													</div>
													<span class="clear"></span>
												</div>
												<div class="form_input">
													<div class="form_grid_3 alpha">
														<label class="field_title">Mrk. Exe. Air Export</label> <input
															name="mktname_air_exp" id="mktname_air_exp" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">Mrk. Exe. Air Import</label> <input
															name="mktname_air_imp" id="mktname_air_imp" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">CS. Exe. Air Export</label> <input
															name="cs_air_exp" id="cs_air_exp" type="text" />
													</div>
													<div class="form_grid_3">
														<label class="field_title">CS Exe. Air Import</label> <input
															name="cs_air_imp" id="cs_air_imp" type="text" />
													</div>
													<span class="clear"></span>
												</div>
											</div>
										</li>
										<li>
											<div class="form_grid_10">
												<label class="field_title">Address</label>
												<div class="form_input">
													<textarea name="customeraddress" id="customeraddress"
														cols="50" rows="2" tabindex="5" style="width: 100%;"></textarea>
												</div>
											</div>
											<div class="form_grid_2">
												<label class="field_title">Status<span class="req">*</span></label>
												<div class="form_input">
													<select name="status" id="status"
														class="chzn-select-deselect" tabindex="16">
														<option value="Active" selected>Active</option>
														<option value="De-Active">De-Active</option>
													</select>
												</div>
											</div>

										</li>
									</ul>
								</fieldset>
							</li>
							<li>
								<fieldset>
									<legend>Other Details</legend>
									<ul>
										<li>
											<div class="widget_wrap tabby" style="margin-top: 0px;">
												<div class="widget_top">
													<div id="widget_tab">
														<ul>
															<li><a href="#tab1" class="active_tab">Address &
																	GST</a></li>
															<li><a href="#tab2">Key Personnel</a></li>
															<li><a href="#tab3">Alert Mapping</a></li>
															<li><a href="#tab4">Credit Rating</a></li>
														</ul>
													</div>
												</div>
												<div class="widget_content">
													<div id="tab1">
														<ul>
															<li>
																<fieldset>
																	<legend>GST Details</legend>
																	<ul>
																		<li>
																			<div class="form_grid_12">
																				<div class="form_input">
																					<table class="wtbl_list" name="gsttable"
																						id="gsttable">
																						<tr class="row1">
																							<th align="left">GSTN</th>
																							<th align="left">ADDRESS</th>
																							<th align="left">STATE</th>
																							<th align="left">CITY</th>
																							<th align="left">POSTAL</th>
																							<th align="left">TELEPHONE</th>
																							<th align="left">FAX</th>
																							<th align="left">EMAIL</th>
																							<th align="left">CONTACT PERSON</th>
																							<th align="left">SEZ</th>
																							<th><a class='toolbar' href='#'
																								onClick="AddGST('','','','','','','','','',''); return false;"><img
																									src='../images/Add.png' alt='Add Rows'
																									align='middle' name='lookup' border='0'></a></th>

																						</tr>
																					</table>
																					<span class="clear"></span>
																				</div>
																			</div>
																		</li>
																	</ul>
																</fieldset>
															</li>
														</ul>
													</div>
													<div id="tab2">
														<fieldset>
															<legend>Details</legend>
															<div class="form_input">
																<div class="form_grid_3 alpha">
																	<label class="field_title">Name</label> <input
																		name="kpname" id="kpname" type="text" />
																</div>
																<div class="form_grid_2">
																	<label class="field_title">Designation</label> <input
																		name="kpdesgn" id="kpdesgn" type="text" />
																</div>
																<div class="form_grid_2">
																	<label class="field_title">Direct Tel</label> <input
																		name="kptel" id="kptel" type="text" />
																</div>
																<div class="form_grid_2">
																	<label class="field_title">Mobile</label> <input
																		name="kpmob" id="kpmob" type="text" />
																</div>
																<div class="form_grid_2">
																	<label class="field_title">Email ID</label> <input
																		name="kpemail" id="kpemail" type="text" />
																</div>
																<span class="clear"></span> <br>
														</fieldset>
													</div>
												</div>

												<div id="tab3">
													<ul>
														<li>
															<fieldset>
																<legend>Alert Details</legend>
																<ul>
																	<li>
																		<div class="form_grid_12">
																			<div class="form_input">
																				<table class="wtbl_list" name="alerttable"
																					id="alerttable">
																					<tr class="row1">
																						<th align="left">Alert Name</th>
																						<th align="left">Ship. Type</th>
																						<th align="left">To Name</th>
																						<th align="left">To Email Id</th>

																						<th><a class='toolbar' href='#'
																							onClick="AddAlert('','','',''); return false;"><img
																								src='../images/Add.png' alt='Add Rows'
																								align='middle' name='lookup' border='0'></a></th>

																					</tr>
																				</table>
																				<span class="clear"></span>
																			</div>
																		</div>
																	</li>
																</ul>
															</fieldset>
														</li>
													</ul>
												</div>
												<div id="tab4">
													<ul>
														<li>
															<fieldset>
																<legend>Credit Details</legend>
																<ul>
																	<li>
																		<div class="form_grid_12">
																			<div class="form_input">
																				<table class="wtbl_list" name="creditratetable"
																					id="creditratetable">
																					<tr class="row1">
																						<th align="left">Ship. Type</th>
																						<th align="left">PDC</th>
																						<th align="left">No Of Days</th>
																						<th align="left">Amount</th>

																						<th><a class='toolbar' href='#'
																							onClick="AddCreditRate('','','',''); return false;"><img
																								src='../images/Add.png' alt='Add Rows'
																								align='middle' name='lookup' border='0'></a></th>

																					</tr>
																				</table>
																				<span class="clear"></span>
																			</div>
																		</div>
																	</li>
																</ul>
															</fieldset>
														</li>
													</ul>
												</div>
											</div>
										</li>
									</ul>
								</fieldset>
							</li>
						</ul>
						<ul>
							<li>
								<div class="form_grid_12" style="text-align: center;">
									<div class="form_input">
										<button type="submit" class="btn_small btn_blue"
											onClick="return Validate();">
											<span>Submit</span>
										</button>
										<button type="reset" class="btn_small btn_blue">
											<span>Reset</span>
										</button>
									</div>
								</div>
							</li>
						</ul>
					</form>
				</div>
			</div>
		</div>
	</div>
	<span class="clear"></span>
</div>
<jsp:include page="../Footer.jsp" />