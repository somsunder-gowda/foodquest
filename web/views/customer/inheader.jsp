<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="/web/views/partials/header.jsp"%>
<%@include file="/web/views/partials/commonImport.jsp"%>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">FOOD QUEST</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li>
						<form class="navbar-form navbar-left" role="search">
							<input id="autocomplete" type="text" class="form-control"
								placeholder="Search" onkeyup="showResult(this.value)" />
							<button type="submit" class="btn btn-default">
								<span class="glyphicon glyphicon-search"></span>
							</button>
							<div id="autocomplete_result" style="display: none;"></div>
						</form>
					</li>
					<li><a href="/FoodQuest/web/views/registration.jsp">
							Signup</a></li>
					<li><a href="/FoodQuest/web/views/signin.jsp"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
</body>
</html>