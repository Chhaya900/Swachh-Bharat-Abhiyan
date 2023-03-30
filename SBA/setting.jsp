<%-- 
    Document   : dashboard
    Created on : 31 Jul, 2019, 7:00:20 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
          <link href="css/bootstrap.min.css" rel="stylesheet"/>
<link href="css/font-awesome.min.css" rel="stylesheet"/>
<link href="css/hover-min.css" rel="stylesheet"/>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

    </head>
    <body>
        <%@include file="../AdminZone/header.jsp" %>
        <div class="container-fluid" padding="0px">
        <div class="row" style="min-height: 480px;">
            <%
               Object email= session.getAttribute("aid");
               out.print(email);
            %>
            
            <div class="col-sm-2" style="background:#a6ffd2;min-height: 480px;">
                <br>
                <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;"> <a href="dashboard.jsp"><span style="color:navy;font-size: 20px;font-family: bold;">Home</span></a></div><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;"><a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Donor Management</span></a></div><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;"> <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Govt. Scheme</span></a></div><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">  <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Member Details</span></a></div><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">  <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Response Management</span></a></div><br>
                       <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Dynamic Event</span></a></div><br>
                       
                       <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Setting</span></a></div><br>
                          
                          <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="../logout.html"><span style="color:navy;font-size: 20px;font-family: bold;">Log Out</span></a></div><br>
                           <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="changepass.jsp"><span style="color:navy;font-size: 20px;font-family: bold;">Change Password</span></a></div><br>
                            <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Forget Password</span></a></div><br>
                         
                       
                    
            </div>
            <div class="col-sm-10" style="background:white;min-height: 480px;">
                <div style="height: 200px;width:250px;float: left;"> <a href="../loging.html"><span style="font-size: 150px; color:black;" class="glyphicon glyphicon-log-in"></span>
                   </a><span style="font-family: algerian;font-size: 20px; color: black;margin-left: 50px;">Login</span></div>
               <div style="height: 200px;width:250px;float: left;"> <a href="../longing.html"><span style="font-size: 150px; color:black;" class="glyphicon glyphicon-log-out"></span>
                   </a><span style="font-family: algerian;font-size: 20px; color: black;margin-left: 50px;">LogOut</span></div>
                   <div style="height: 200px;width:250px;float: left;"> <a href="changepass.jsp"><span style="font-size: 150px; color:black;" class="glyphicon glyphicon-lock"></span>
                   </a><span style="font-family: algerian;font-size: 20px; color: black;margin-left: 50px;">Changepassword</span></div>
                
               <div style="height: 200px;width:250px;float: left;"> <a href="../longing.html"><span style="font-size: 150px; color:black;" class="glyphicon glyphicon-lock"></span>
                   </a><span style="font-family: algerian;font-size: 20px; color: black;margin-left: 50px;">ForgetPassword</span></div>
                   
                   
        </div>
        </div>
        
        <%@include file="../AdminZone/footer.jsp" %>
    </body>
</html>
