<%@page import="com.ex.documentation.entity.MasterBLEntity"%>
<jsp:include page="../../Header.jsp" />
<jsp:include page="Exdocheader.jsp" />
<style>
#theme-default .widget_top {
	height: 30px;
}

.h_icon {
	top: 5px;
}

.widget_top h6 {
	line-height: 30px;
}
</style>
<script>
function AddCharges1(containerno,containertype,customsealno,agentsealno)
{

  var tbl = document.getElementById('addcharges');
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
  el.name = 'containerno'+iteration;
  el.className = 'text ui-widget-content ui-corner-all';
  el.id = 'containerno'+iteration;
  el.value=containerno;
  el.size=50;
  cellRight0.appendChild(el);
  
  var cellRight1 = row.insertCell(1);
  var el = document.createElement('input');
  el.type = 'text';
  el.className = 'text ui-widget-content1 ui-corner-all';
  el.name = 'containertype' + iteration;
  //el.onblur=function(){checkNum(this)};
  el.id = 'containertype' + iteration;
  el.value=containertype;
  el.size=30;
  cellRight1.appendChild(el);

  var cellRight2 = row.insertCell(2);
  var el = document.createElement('input');
  el.type = 'text';
  el.className = 'text ui-widget-content ui-corner-all';
  el.name = 'customsealno' + iteration;
  el.id = 'customsealno' + iteration;
  el.value=customsealno;
  el.size=50;
  cellRight2.appendChild(el);
 
  var cellRight3 = row.insertCell(3);
  var el = document.createElement('input');
  el.type = 'text';
  el.className = 'text ui-widget-content ui-corner-all';
  el.name = 'agentsealno' + iteration;
  el.id = 'agentsealno' + iteration;
  el.value=agentsealno;
  el.size=50;
  cellRight3.appendChild(el);

  
  var cellRight4 = row.insertCell(4);
  var el = document.createElement('a');
  el.setAttribute('href','#');
  el.onclick=function(){deleterw(this.parentNode.parentNode.rowIndex)};
  var img=document.createElement('img');
  img.setAttribute('src','${pageContext.request.contextPath }/images/img-raty/cancel-off-big.png');
  img.style.cssText = 'border-color: white'
  el.appendChild(img);
  cellRight4.appendChild(el);

}
</script>
<script>
        function deleterw(i)
        {
          var tbl = document.getElementById('addcharges');
          tbl.deleteRow(i);
                var obj1=document.getElementById('addcharges');
                var rows2 = obj1.rows;
                var rows3 = rows2.length;
                for(var j=i+1;j<=rows3;j++,i++)
                {
                        document.getElementById("containerno"+j).id = "containerno"+i;
                        document.getElementById("containertype"+j).id ="containertype"+i;
                        document.getElementById("customsealno"+j).id ="customsealno"+i;
                        document.getElementById("agentsealno"+j).id ="agentsealno"+i;
                }

        }
</script>
<script>
function Validate()
{
                document.forms[0]['containerlist'].value="";
                var obj = document.getElementById('addcharges');
                var rowcontainer=obj.rows.length;
                for(var i=1;i<rowcontainer;i++)
                {
                        if(document.getElementById('containerno'+i).value=="")
                        {
                                alert("Please Select Container No!!");
                                return false;
                        }
                        else
                        {
                                document.forms[0].containerlist.value +=document.getElementById('containerno'+i).value+"*";
                        }
                        if(document.getElementById('containertype'+i).value=="")
                        {
                                alert("Please Select Enter Container Type !!");
                                return false;
                        }
                        else
                        {
                                document.forms[0].containerlist.value +=document.getElementById('containertype'+i).value+"*";
                        }
                        if(document.getElementById('customsealno'+i).value=="")
                        {
                                alert("Please Select Custom Seal No !!");
                                return false;
                        }
                        else
                        {
                                document.forms[0].containerlist.value +=document.getElementById('customsealno'+i).value+"*";
                        }
                        if(document.getElementById('agentsealno'+i).value=="SELECT")
                        {
                                alert("Please Select Agent Seal No !!");
                                return false;
                        }
                        else
                        {
                                 document.forms[0].containerlist.value +=document.getElementById('agentsealno'+i).value+"*";
                        }
                }
				alert(document.forms[0]['containerlist'].value);
				
                if(document.forms[0]['containerlist'].value=="")
                {
                        alert("Please Enter Container");
                        return false;
                }
                return true;
}
</script>
<div id="content">
	<div class="grid_container">
		<div class="grid_12 full_block">
			<div class="widget_wrap">
				<div class="breadCrumbHolder module">
					<div id="breadCrumb0" class="breadCrumb module white_lin">
						<ul>
							<li><a href="#">Home</a></li>
							<li>Sea Export</li>
							<li>Documentation</li>
							<li>Master BL</li>
							<li><a href="#">Master BL List</a></li>
							<li>New MBL</li>
						</ul>
					</div>
				</div>
				<div class="widget_top">
					<span class="h_icon list_image"></span>
					<h6>New MBL</h6>
				</div>
				<div class="widget_content">
					<form
						action="${pageContext.request.contextPath }/MasterBLController"
						method="post" class="form_container">
						<input type='hidden' name="action" value="MasterBLEntry" />
						<input type='hidden' name="containerlist"  />
						<ul>
							<li>
								<fieldset>
									<legend>MBL Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">MBL No. <span
															class="req">*</span></label> <input name="mblno" id="mblno"
															type="text" tabindex="1" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">MBL Date <span
															class="req">*</span></label> <input name="mbldate" id="mbldate"
															type="text" tabindex="2" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Issue Date <span
															class="req">*</span></label> <input name="mblissuedate"
															id="mblissuedate" type="text" tabindex="3" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Place of issue <span
															class="req">*</span></label> <input name="mblissueplace"
															id="mblissueplace" type="text" tabindex="4" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Vessel<span class="req">*</span></label>
														<input name="mblvessel" id="mblvessel" type="text"
															tabindex="5" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Voyages <span
															class="req">*</span></label> <input name="mblvoyages"
															id="mblvoyages" type="text" tabindex="6" />
													</div>
													<span class="clear"></span>
												</div>
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">POL <span class="req">*</span></label>
														<input name="mblpol" id="mblpol" type="text" tabindex="7" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">POD <span class="req">*</span></label>
														<input name="mblpod" id="mblpod" type="text" tabindex="8" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">FPD <span class="req">*</span></label>
														<input name="mblfpd" id="mblfpd" type="text" tabindex="9" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Place Of Receipt</label> <input
															name="mblpor" id="mblpor" type="text" tabindex="10" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Routing <span
															class="req">*</span></label> <input name="mblrouting"
															id="mblrouting" type="text" tabindex="11" />
													</div>
													<span class="clear"></span>
												</div>
											</div>
										</li>
									</ul>
								</fieldset>
							</li>
							<li>
								<div class="widget_wrapc collapsible_widget">
									<div class="widget_top active">
										<span class="h_icon"></span>
										<h6>Party Details</h6>
									</div>
									<div class="widget_content">
										<ul>
											<li>
												<fieldset>
													<legend>Shipper Details</legend>
													<div class="form_grid_12 multiline">
														<div class="form_input">
															<div class="form_grid_5 alpha">
																<label class="field_title">name</label> <input
																	name="mblsname" id="mblsname" type="text" tabindex="12" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">telephone</label> <input
																	name="mblsphone" id="mblsphone" type="text"
																	tabindex="13" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">fax</label> <input
																	name="mblsfax" id="mblsfax" type="text" tabindex="14" />
															</div>
															<div class="form_grid_3">
																<label class="field_title">contact person</label> <input
																	name="mblcp" id="mblcp" type="text" tabindex="15" />
															</div>
															<div class="form_grid_12 alpha">
																<label class="field_title">Address</label>
																<textarea name="mblsadd" id="mblsadd" cols="50" rows="1"
																	style="width: 100%;" tabindex="16"></textarea>
															</div>
															<span class="clear"></span>
														</div>
													</div>
												</fieldset>
												<fieldset>
													<legend>Consignee Details</legend>
													<div class="form_grid_12 multiline">
														<div class="form_input">
															<div class="form_grid_5 alpha">
																<label class="field_title">name></label> <input
																	name="mblcname" id="mblcname" type="text" tabindex="17" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">telephone</label> <input
																	name="mblctel" id="mblctel" type="text" tabindex="18" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">fax</label> <input
																	name="mblcfax" id="mblfax" type="text" tabindex="19" />
															</div>
															<div class="form_grid_3">
																<label class="field_title">contact person</label> <input
																	name="mblccontact" id="mblccontact" type="text"
																	tabindex="20" />
															</div>
															<div class="form_grid_12 alpha">
																<label class="field_title">Address</label>
																<textarea name="mblcadd" id="mblcadd" cols="50" rows="1"
																	tabindex="21" style="width: 100%;"></textarea>
															</div>
															<span class="clear"></span>
														</div>
													</div>
												</fieldset>
												<fieldset>
													<legend>Notify Party 1</legend>
													<div class="form_grid_12 multiline">
														<div class="form_input">
															<div class="form_grid_5 alpha">
																<label class="field_title">name</label> <input
																	name="mblnname" id="mblnname" type="text" tabindex="22" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">telephone</label> <input
																	name="mblntel" id="mblntel" type="text" tabindex="23" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">fax</label> <input
																	name="mblnfax" id="mblnfax" type="text" tabindex="24" />
															</div>
															<div class="form_grid_3">
																<label class="field_title">contact person</label> <input
																	name="mblncp" id="mblncp" type="text" tabindex="25" />
															</div>
															<div class="form_grid_12 alpha">
																<label class="field_title">Address</label>
																<textarea name="mblnadd" id="mblnadd" cols="50" rows="1"
																	tabindex="26" style="width: 100%;"></textarea>
															</div>
															<span class="clear"></span>
														</div>
													</div>
												</fieldset>
												<fieldset>
													<legend>Notify Party 2</legend>
													<div class="form_grid_12 multiline">
														<div class="form_input">
															<div class="form_grid_5 alpha">
																<label class="field_title">name</label> <input
																	name="mblnnname" id="mblnnname" type="text"
																	tabindex="27" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">telephone</label> <input
																	name="mblnntel" id="mblnntel" type="text" tabindex="28" />
															</div>
															<div class="form_grid_2">
																<label class="field_title">fax</label> <input
																	name="mblnnfax" id="mblnnfax" type="text" tabindex="29" />
															</div>
															<div class="form_grid_3">
																<label class="field_title">contact person</label> <input
																	name="mblnncp" id="mblnncp" type="text" tabindex="30" />
															</div>
															<div class="form_grid_12 alpha">
																<label class="field_title">Address</label>
																<textarea name="mblnnadd" id="mblnnadd" cols="50"
																	rows="1" tabindex="31" style="width: 100%;"></textarea>
															</div>
															<span class="clear"></span>
														</div>
													</div>
												</fieldset>
											<li>
										</ul>
									</div>
								</div>
							</li>
							<li>
								<fieldset>
									<legend>Package Details</legend>
									<ul>
										<li>
											<div class="form_grid_12 multiline">
												<div class="form_input">
													<div class="form_grid_2 alpha">
														<label class="field_title">Packages <span
															class="req">*</span></label> <input name="mblpkg" id="mblpkg"
															type="text" tabindex="32" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Package Type <span
															class="req">*</span></label> <input name="mblpkgtype"
															id="mblpkgtype" type="text" tabindex="33" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">In Pallets <span
															class="req">*</span></label> <input name="mblpllets"
															id="mblpllets" type="text" tabindex="34" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">CBM <span class="req">*</span></label>
														<input name="mblcbm" id="mblcbm" type="text" tabindex="35" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Gross Weight <span
															class="req">*</span></label> <input name="mblgw" id="mblgw"
															type="text" tabindex="36" />
													</div>
													<div class="form_grid_2">
														<label class="field_title">Net Weight <span
															class="req">*</span></label> <input name="mblnw" id="mblnw"
															type="text" tabindex="37" />
													</div>
													<span class="clear"></span>
												</div>
											</div>
										</li>
									</ul>
								</fieldset>
							</li>
							<li>
								<fieldset>
									<legend>Container Details</legend>
									<table class="wtbl_list" name="addcharges" id="addcharges">
												<thead>
													<tr>
														<th>Container No.<span class="req">*</span></th>
														<th>Container Type<span class="req">*</span></th>
														<th>Custom Seal No</th>
														<th>Agent Seal No</th>
														 <th><a class='toolbar' href='#' onClick="AddCharges1('','','',''); return false;"><img src='../images/Add.png' alt='Add Rows' align='middle' name='lookup' border='0'></a></th>
													</tr>
												</thead>
												</table>
								</fieldset>
							</li>
							<li>
								<fieldset>
									<legend>Other Details</legend>
									<ul>
										<li>
											<div class="form_grid_6">
												<label class="field_title">Remark's</label>
												<div class="form_input">
													<textarea name="mblremks" id="mblremks" cols="50" rows="2"
														tabindex="38" style="width: 100%;"></textarea>
												</div>
											</div>
											<div class="form_grid_6">
												<label class="field_title">Description</label>
												<div class="form_input">
													<textarea name="mbldes" id="mbldes" cols="50" rows="2"
														tabindex="39" style="width: 100%;"></textarea>
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
										<button type="submit" class="btn_small btn_blue" name="Master" value="MasterBLEntry" onClick="return Validate();">
											<span>Submit</span>
										</button>
										<button type="reset" class="btn_small btn_blue" >
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
<jsp:include page="../../Footer.jsp" />