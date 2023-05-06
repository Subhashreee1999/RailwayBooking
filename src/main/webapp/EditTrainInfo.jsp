<%@page import="java.util.Arrays"%>
<%@page import="dto.Train"%>
<%@page import="dao.TrainDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Train Information</title>
</head>
<body>
<% int number=Integer.parseInt(request.getParameter("tnumber"));
TrainDao dao=new  TrainDao();
Train train=dao.fetch(number);
%>

<form action="addtrain" method="post">
<fieldset style="width: 25%;border: 15px double green;">
<legend style="color: black;font-size: 30px;font-weight: bold;">Edit Train Information</legend>
<table bgcolor="violet">
<tr>
<th>Train Number:</th> 
<td><input type="number" name="tnumber" value="<%=train.getNumber() %>" readonly="readonly"></td>
</tr><br>
<tr>
<th>Train Name:</th> 
<td><input type="text" name="tname" value="<%=train.getName()%>" ></td>
</tr><br>
<tr>
<th>Number Of Seats:</th>
<td> <input type="number" name="tseat" value="<%=train.getSeat()%>"></td>
</tr><br>
<tr>
<th>Train Price:</th>
<td> <textarea rows="5" cols="30" name="tprice" >
<%
for(String price:train.getPrice())
{
	out.print(price+",");
}
%>
</textarea></td>
</tr><br>
<tr>
<th>Train Stations:</th> 
<td><textarea rows="5" cols="30" name="tstation"> 
<%
for(String station:train.getStations())
{
	out.print(station+",");
}
%>
</textarea></td>
</tr><br>
<tr>
<th>Time:</th>
<td> <textarea rows="5" cols="30" name="ttime">
<%for(String time:train.getTime())
{
	out.print(time+",");
}
%>
</textarea></td>
</tr><br>
<tr>
<th>Days:</th>
<td> <textarea rows="5" cols="30" name="tdays">
<%
for(String day:train.getDays())
{
	out.print(day+",");
}
%>
</textarea></td>
</tr><br>
<tr>
<th><button type="reset">Cancel</button></th><th><button type="submit">Update</button></th>
</tr>
</table>
</fieldset>
</form>
<br>
<a href="ManagementHome.html"><button>Home</button></a>


</body>
</html>