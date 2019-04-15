<jsp:include page="Header.jsp" />
<%
String userName = null;
String location = (String)request.getAttribute("location");
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("username")) userName = cookie.getValue();
	if(cookie.getName().equals("location")) location = cookie.getValue();

}
}
System.out.println(location+"======userName       =="+userName);
if(userName.equals("null") || userName == null) 
	{
	System.out.println(request.getContextPath() +"  ======userName    iff   =="+userName);
	response.sendRedirect(request.getContextPath() +"/LoginController?action=Logout");
	}
%>
<script>
	/*=================
	 CHART 6
	 ===================*/
	$(function() {
		var s1 = [ [ 2002, 112000 ], [ 2003, 122000 ], [ 2004, 104000 ],
				[ 2005, 99000 ], [ 2006, 121000 ], [ 2007, 148000 ],
				[ 2008, 114000 ], [ 2009, 133000 ], [ 2010, 161000 ],
				[ 2011, 173000 ] ];
		var s2 = [ [ 2002, 10200 ], [ 2003, 10800 ], [ 2004, 11200 ],
				[ 2005, 11800 ], [ 2006, 12400 ], [ 2007, 12800 ],
				[ 2008, 13200 ], [ 2009, 12600 ], [ 2010, 13100 ] ];
		plot1 = $.jqplot("chart6", [ s2, s1 ], {
			// Turns on animatino for all series in this plot.
			animate : true,
			// Will animate plot on calls to plot1.replot({resetAxes:true})
			animateReplot : true,
			cursor : {
				show : true,
				zoom : false,
				looseZoom : true,
				showTooltip : false
			},
			series : [ {
				pointLabels : {
					show : true
				},
				renderer : $.jqplot.BarRenderer,
				showHighlight : false,
				yaxis : 'y2axis',
				rendererOptions : {
					// Speed up the animation a little bit.
					// This is a number of milliseconds. 
					// Default for bar series is 3000. 
					animation : {
						speed : 2500
					},
					barWidth : 15,
					barPadding : -15,
					barMargin : 0,
					highlightMouseOver : false
				}
			}, {
				rendererOptions : {
					// speed up the animation a little bit.
					// This is a number of milliseconds.
					// Default for a line series is 2500.
					animation : {
						speed : 2000
					}
				}
			} ],
			axesDefaults : {
				pad : 0
			},
			axes : {
				// These options will set up the x axis like a category axis.
				xaxis : {
					tickInterval : 1,
					drawMajorGridlines : false,
					drawMinorGridlines : true,
					drawMajorTickMarks : false,
					rendererOptions : {
						tickInset : 0.5,
						minorTicks : 1
					}
				},
				yaxis : {
					tickOptions : {
						formatString : "$%'d"
					},
					rendererOptions : {
						forceTickAt0 : true
					}
				},
				y2axis : {
					tickOptions : {
						formatString : "$%'d"
					},
					rendererOptions : {
						// align the ticks on the y2 axis with the y axis.
						alignTicks : true,
						forceTickAt0 : true
					}
				}
			},
			highlighter : {
				show : true,
				showLabel : true,
				tooltipAxes : 'y',
				sizeAdjust : 7.5,
				tooltipLocation : 'ne'
			},
			grid : {
				borderColor : '#ccc', // CSS color spec for border around grid.
				borderWidth : 2.0, // pixel width of border around grid.
				shadow : false
			// draw a shadow for grid.
			},
			seriesDefaults : {
				lineWidth : 2, // Width of the line in pixels.
				shadow : false, // show shadow or not.
				markerOptions : {
					show : true, // wether to show data point markers.
					style : 'filledCircle', // circle, diamond, square, filledCircle.
					// filledDiamond or filledSquare.
					lineWidth : 2, // width of the stroke drawing the marker.
					size : 14, // size (diameter, edge length, etc.) of the marker.
					color : '#ff8a00', // color of marker, set to color of line by default.
					shadow : true, // wether to draw shadow on marker or not.
					shadowAngle : 45, // angle of the shadow.  Clockwise from x axis.
					shadowOffset : 1, // offset from the line of the shadow,
					shadowDepth : 3, // Number of strokes to make when drawing shadow.  Each stroke
					// offset by shadowOffset from the last.
					shadowAlpha : 0.07
				// Opacity of the shadow
				}
			}
		});
	});
</script>
<div id="content">
	<div class="grid_container">
		<div class="widget_wrap collapsible_widget">
			<div class="widget_top active">
				<span class="h_icon"></span>
				<h6>Active Collapsible Widget</h6>
			</div>
			<div class="widget_content">

				<div class="stats_bar">
					<div id="chart6" class="chart_block"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="grid_container">
		<div class="item_widget">
			<div class="item_block">
				<div class="icon_block green_block">
					<span class="item_icon"> <span class="contact_sl"><a
							href="#">Messages</a></span>
					</span>
				</div>
				<h3>20</h3>
				<p>Messages</p>
			</div>
			<div class="item_block">
				<div class="icon_block blue_block">
					<span class="item_icon"> <span class="cost_sl"><a
							href="#">Credits</a></span>
					</span>
				</div>
				<h3>$450</h3>
				<p>Credits</p>
			</div>
			<div class="item_block ">
				<div class="icon_block orange_block">
					<span class="item_icon"> <span class="basket_sl"><a
							href="#">New Order</a></span>
					</span>
				</div>
				<h3>50</h3>
				<p>New Order</p>
			</div>
			<div class="item_block">
				<div class="icon_block gray_block">
					<span class="item_icon"> <span class="lightbulb_sl"><a
							href="#">Support Ticket</a></span>
					</span>
				</div>
				<h3>10</h3>
				<p>Support Ticket</p>
			</div>
			<div class="item_block">
				<div class="icon_block violet_block">
					<span class="item_icon"> <span class="finished_work_sl"><a
							href="#">Articles</a></span>
					</span>
				</div>
				<h3>150</h3>
				<p>Articles</p>
			</div>
			<div class="item_block">
				<div class="icon_block tur_block">
					<span class="item_icon"> <span
						class="administrative_docs_sl"><a href="#">Pages</a></span>
					</span>
				</div>
				<h3>42</h3>
				<p>Pages</p>
			</div>
			<div class="item_block">
				<div class="icon_block brown_block">
					<span class="item_icon"> <span class="communication_sl"><a
							href="#">Unique Vistors</a></span>
					</span>
				</div>
				<h3>2549</h3>
				<p>Unique Vistors</p>
			</div>
			<div class="item_block">
				<div class="icon_block brown_block">
					<span class="item_icon"> <span class="communication_sl"><a
							href="#">Unique Vistors</a></span>
					</span>
				</div>
				<h3>2549</h3>
				<p>Unique Vistors</p>
			</div>
		</div>
		<div class="social_activities">
			<div class="activities_s">
				<div class="block_label">
					User Activities<span>54854</span>
				</div>
				<div class="activities_chart">
					<span class="activities_chart">100,150,130,100,250,280,350,250,400,450,280,350,250,400,</span>
				</div>
			</div>
			<div class="activities_s">
				<div class="block_label">
					Visits Rate<span>80%</span>
				</div>
				<div class="visit_chart">
					<span class="activities_chart">500,450,100,500,550,
						400,300,550,480,500,320,400,450</span>
				</div>
			</div>
			<div class="comments_s">
				<div class="block_label">
					Comments<span>17000</span>
				</div>
				<span class="badge_icon comment_sl"></span>
			</div>
			<div class="views_s">
				<div class="block_label">
					Paid Members<span>1500</span>
				</div>
				<span class="badge_icon bank_sl"></span>
			</div>
			<div class="user_s">
				<div class="block_label">
					New User's<span>12000</span>
				</div>
				<span class="badge_icon customers_sl"></span>
			</div>
		</div>
	</div>
	<span class="clear"></span>
</div>
<jsp:include page="Footer.jsp" />