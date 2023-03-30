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
<!-- Start of  Zendesk Widget script -->
<script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=84dd4030-048f-454f-99d8-b55891e868f3"> </script>
<!-- End of  Zendesk Widget script -->
    </head>
    <body>
        <%@include file="../AdminZone/header.jsp" %>
        <div class="container-fluid" style="padding:0px;">
        <div class="row" style="min-height: 480px;">
            <%
               Object email= session.getAttribute("aid");
               out.print(email);
            %>
            
            <div class="col-sm-2" style="background:#a6ffd2;min-height: 480px;">
                <br>
                <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;"> <a href="dashboard.jsp"><span style="color:navy;font-size: 20px;font-family: bold;">Home</span></a></div><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;"><a href="Donormanagment.jsp"><span style="color:navy;font-size: 20px;font-family: bold;">Donor Management</span></a></div><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;"> <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Govt. Scheme</span></a></div><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">  <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Member Details</span></a></div><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">  <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Response Management</span></a></div><br>
                       <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Dynamic Event</span></a></div><br>
                       
                       <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="setting.jsp"><span style="color:navy;font-size: 20px;font-family: bold;">Setting</span></a></div><br>
                          
                          <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="../logout.html"><span style="color:navy;font-size: 20px;font-family: bold;">Log Out</span></a></div><br>
                           <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="changepass.jsp"><span style="color:navy;font-size: 20px;font-family: bold;">Change Password</span></a></div><br>
                            <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Forget Password</span></a></div><br>
                         
                       
                    
            </div>
            <div class="col-sm-10" style="background:white;min-height: 480px;">
               <div style="height: 250px;width:250px;float: left;"> <a href="dashboard.jsp"><img src="i4.jpg" height="150px" width="150px" title="Home">
                   </a><span style="font-family: algerian;font-size: 20px; color: black;margin-left: 50px;">HOME</span></div>
               
                
               <div style="height:250px;width:250px; float: left;margin-left: 70px;"> <a href="DonorManagement.jsp"><img src="i3.jpg"  height="170px" width="160px"  title="Donor Managment"></a>
              <span style="font-family: algerian;font-size: 20px; color: black;"><center>Donor Management</></center></span> </div>
                
                <div style="height: 250px;width:250px;float: left; margin-left:70px;"> <a href="setting.jsp"><img src="i1.jpg" height="150px" width="150px;" title="Settings"></a>
                <span style="font-family: algerian;font-size: 20px; color: black; margin-left:50px;">Settings</span></div>
                  <div style="height: 180px;width:150px; margin-left:70px;">  <a href="#"><img src="i2.jpg" height="150px" width="150px;" title="Managment"></a><br>
                 <span style="font-family: algerian;font-size: 20px; color: black;"><center>Response Management</center></span> </div>
                    <div style="height: 180px;width:150px;margin-left:470px;">  <a href="#"><img src="i5.jpg" height="150px" width="150px;" title="Dynamic Event"></a>
                   <span style="font-family: algerian;font-size: 20px; color: black;"><center>Event</></center></span> </div>
                
                   
        </div>
        </div>
        
        <%@include file="../AdminZone/footer.jsp" %>
    </body>
</html>
