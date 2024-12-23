<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random"%>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search_File</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-georgia.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 24}
.style2 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style3 {font-size: 36px; }
.style20 {
	color: #FF0000;
	font-size: 24px;
}
.style28 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="U_Main.jsp">Hi <%=application.getAttribute("uname")%> !!</a></li>
          <li><a href="U_Login.jsp">Logout</a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style3 style20">DSAS A Secure Data Sharing and Authorized Searchable Framework for e-Healthcare System</h1>
      </div>
      <div class="clr style1"></div>
      <div class="slider style1">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /> </a> </div>
        <div class="style2"></div>
      </div>
      <div class="clr style1"></div>
    </div>
  </div>
  <div class="content style1">
    <div class="content_resize">
      <div class="mainbar">
        <div class="mainbar">
          <div class="article">
            <h2>Patient Searched Details !!! </h2>
              <table width="650" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>pid</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>age</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>sex</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>Cerebral_palsy</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>trestbps</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>chol</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>fbs</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>restecg</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>thalach</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>exang</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>oldpeak</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>bp</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>Disease</strong></strong></div></td>
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style28"><strong>Trapdoor</strong></strong></div></td>
            </tr>
        
     <%

	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,hsign,s111;
	int i=0,j=0,k=0;
	String keyword=request.getParameter("keyword");
      	try 
	{
       
      	   String query="select * from pdetails "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getString(8);
								s8=rs.getString(9);
								s9=rs.getString(10);
								s10=rs.getString(11);
								s11=rs.getString(12);
								s12=rs.getString(13);
								s13=rs.getString(14);
								s14=rs.getString(15);
								
								
								String keys = "ef50a0ef2c3e3a5f";
								byte[] keyValue1 = keys.getBytes();
								Key key1 = new SecretKeySpec(keyValue1, "AES");
								Cipher c1 = Cipher.getInstance("AES");
								c1.init(Cipher.DECRYPT_MODE, key1);
								
						
      					String decryptedValue = new String(Base64.decode(s2.getBytes()));
						String decryptedValue1 = new String(Base64.decode(s3.getBytes()));
						String decryptedValue2 = new String(Base64.decode(s4.getBytes()));
						String decryptedValue3 = new String(Base64.decode(s5.getBytes()));
						String decryptedValue4 = new String(Base64.decode(s6.getBytes()));
						String decryptedValue5 = new String(Base64.decode(s7.getBytes()));
						String decryptedValue6 = new String(Base64.decode(s8.getBytes()));
						String decryptedValue7 = new String(Base64.decode(s9.getBytes()));
						String decryptedValue8 = new String(Base64.decode(s10.getBytes()));
						String decryptedValue9 = new String(Base64.decode(s11.getBytes()));
						String decryptedValue10 = new String(Base64.decode(s12.getBytes()));
						String decryptedValue11 = new String(Base64.decode(s13.getBytes()));
						
						if((decryptedValue11.toLowerCase().contains(keyword.toLowerCase()))||(s1.toLowerCase().contains(keyword.toLowerCase())))
						{
		
	
		%>
		

 <tr>
			 
			
			
              <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
               <%out.println(s1);%>
              </strong></div></td>
             
              <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
              <%out.println(decryptedValue);%>
              </strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
               <%out.println(decryptedValue1);%>
              </strong></div></td>
              <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
               <%out.println(decryptedValue2);%>
              </strong></div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
               <%out.println(decryptedValue3);%>
               </strong></div></td> <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
                <%out.println(decryptedValue4);%>
               </strong></div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
               <%out.println(decryptedValue5);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
              <%out.println(decryptedValue6);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
              <%out.println(decryptedValue7);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
               <%out.println(decryptedValue8);%>
              </strong></div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
               <%out.println(decryptedValue9);%>
               </strong></div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
               <%out.println(decryptedValue10);%>
               </strong></div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
               <%out.println(decryptedValue11);%>
               </strong></div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style28 style4"><strong>
               <%out.println(s14);%>
               </strong></div></td>
            </tr>
 	
<%
}



	   }
	   
	   
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
            <p>&nbsp;</p>
            <p><a href="U_Main.jsp">Back</a></p>
            <div class="post_content"></div>
            <div class="style2"></div>
          </div>
        </div>
      </div>
      <div class="style2"></div>
    </div>
  </div>
  <div class="fbg style1">
    <div class="fbg_resize">
      <div class="style2"></div>
    </div>
  </div>
  <div class="footer style1">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center class="style1"></div>
</body>
</html>
