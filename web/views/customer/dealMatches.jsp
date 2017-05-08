<%@page import="java.util.HashMap"%>
<%@page import="com.foodquest.models.RecipeBean.RecipeStatus"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.foodquest.models.RecipeBean"%>
<%@page import="java.util.List"%>
<%@page import="com.foodquest.services.impl.RecipeManagerImpl"%>
<%@page import="com.foodquest.services.IRecipeManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!IRecipeManager recipeManager;

	public void jspInit() {
		try {
			recipeManager = RecipeManagerImpl.getInstance();
		} catch (Exception e) {

		}
}%>

<%
try {
	//List to hold matched recipes
	List<RecipeBean> matchedProducts = new ArrayList<>();
	HashMap<RecipeBean, String> recipesToTweetMap = new HashMap<>();
	// Read recipes
	List<RecipeStatus> filterStatuses = new ArrayList<>();
	filterStatuses.add(RecipeStatus.COMPLETED);
	filterStatuses.add(RecipeStatus.PUBLISHED);
	List<RecipeBean> recipes = recipeManager.findAll(filterStatuses, null);
	
	
	
	BufferedReader reader = new BufferedReader(
			new FileReader(new File(request.getServletContext().getRealPath("/") + "DealMatches.txt")));
	String line = "";
	String tweets="";
	while ((line = reader.readLine()) != null) {
		if (!line.isEmpty()) {
			for(RecipeBean bean : recipes) {
				if(line.indexOf(bean.getName()) > 0)
				{
				matchedProducts.add(bean);
				recipesToTweetMap.put(bean, line);
				}
			}
		}
	}
	%>
	
	
<%	if(recipesToTweetMap.size() == 0)
	{
	tweets="NO tweets Found";
	}%>
	<h1 style=color:Indigo> Find the Deal Matches <h1>
	<h4 style=color:blue><%=tweets%></h4>
	
	<%
	String msg="";
	
	if(recipesToTweetMap.size() == 0)
	{
	msg = "No Products matched";
	}
	//else
//	{
//		msg="The Products are :";
//	}
	%>
	<h3>Tweets</h3>
	<% 
	for(String tweet : recipesToTweetMap.values())
	{	
	%>
			<h2 style=color:blue> <%=tweet%> </h2>
	<%		
	}%>
	<h3>Recipes Matched<h3/>
	<%for(RecipeBean bean : recipesToTweetMap.keySet())
	{	
	%>
			<h2 style=color:blue> <%=bean.getName()%> </h2>
			<h2 style=color:blue> <%=bean.getPrice()%></h2>
			<img src = <%=bean.getImage()%> style="45%">
	<%		
	}
	
	
}
 catch (Exception e) {
	e.printStackTrace();
}
	
%>	