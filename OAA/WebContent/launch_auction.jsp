<%@ include file="header.jsp"%>1
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<div id="all">
	<div id="content">
		<div class="container">
			<div class="col-md-12">
				<ul class="breadcrumb">
					<li><a href="#">Home</a></li>

					<li>Farmer</li>
				</ul>
			</div>
			<div class="col-md-12">

				<ul class="breadcrumb">
					<li><a href="farmer.jsp">Home</a></li>
					<li>My Products</li>
				</ul>
			</div>
			<div class="col-md-12" id="customer-order">
				<div class="box">
					<h1>Create Auction</h1>
					<hr>

					<div class="table-responsive">
						<table class="table">
							<div id="hot">
								<div class="box">
									<div class="container">
										<div class="col-md-8">
											<h2>create new auction</h2>
										</div>
									</div>
								</div>
								<html:form action="createauction.do"
									enctype="multipart/form-data">
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label for="product_name">Product Name</label>

												<%-- 	<html:select styleClass="form-control" styleId="productName"
													property="productName">
													<c:forEach items="${sessionScope.PB.listproducts(user_id)}"
														var="product">
														<html:option value="${product.productId}">${product.productName}</html:option>
													</c:forEach>
												</html:select>
 --%>
												<html:text styleClass="form-control" styleId="productName"
													property="productName" />

											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label for="product_name">Description</label>
												<html:text styleClass="form-control" styleId="description"
													property="description" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label for="start date">Start Date</label>
												<html:text styleClass="form-control" styleId="startDate"
													property="startDate" />

												<input type="text" id="datepicker">
											</div>

										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label for="end date">End Date</label>
												<html:text styleClass="form-control" styleId="endDate"
													property="endDate">
												</html:text>
											</div>
										</div>

									</div>
									<!-- /.row -->
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label for="Bid_Amount_increment"> Bid Amount
													Increment</label>
												<html:text styleClass="form-control"
													styleId=" bidPriceIncrement" property="bidPriceIncrement" />
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label for="minBidprice">Minimum Bid Price</label>
												<html:text styleClass="form-control" styleId="bidPrice"
													property="bidPrice" />
											</div>
										</div>
									</div>
									<!-- /.row -->

									<div class="col-sm-12 text-center">
										<button type="submit" class="btn btn-primary">
											<i class="fa fa-save"></i> Add Product
										</button>
									</div>
								</html:form>
							</div>
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
<!-- /#content -->

<script type="text/javascript">
	$(function() {
		$("#datepicker").datepicker();
		//Pass the user selected date format
		$("#format").change(function() {
			$("#datepicker").datepicker("option", "dateFormat", $(this).val());
		});
	});
</script>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/bootstrap-hover-dropdown.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/front.js"></script>


<%@ include file="footer.jsp"%>