		  
		 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Updload Datasets</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 25px;
	color: #33FF99;
}
.style2 {font-size: 25px}
.style3 {color: #FFFF00}
.style5 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2"><span class="style5">DSAS A Secure Data Sharing and Authorized Searchable Framework for eHealthcare System</span><br />
</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
         
         
          <li><a href="au_login.jsp"><span></span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"> Datasets Uploaded Status !!! </h2>
          <p align="center">&nbsp;</p> 
		  <%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
 
 
    <%@ page import ="java.io.FileNotFoundException" %>  
    <%@ page import ="java.io.IOException" %>  
    <%@ page import ="java.util.Iterator" %>  
    <%@ page import ="java.util.ArrayList" %> 
    <%@ page import="org.apache.poi.xssf.usermodel.*" %>
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>  
    <%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>
    <%@ page import="org.apache.poi.ss.usermodel.Cell" %>
    <%@ page import ="org.apache.poi.ss.usermodel.Row"%>
    <%@ page import="org.apache.poi.ss.usermodel.Sheet" %>
    <%@ page import="org.apache.poi.ss.usermodel.Workbook" %>
    <%@ page import ="org.apache.poi.xssf.usermodel.XSSFWorkbook" %>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
	
	
 
	
    <%
    try{
	
   	    String fname=request.getParameter("fname");
	
        
		String sql="delete from pdetails";
		Statement stmt = connection.createStatement();
		stmt.executeUpdate(sql);
		
		
		
	   String pid,age,sex,Cerebral_palsy,trestbps,chol,fbs,restecg,thalach,exang,oldpeak,bp,Disease;
       connection.setAutoCommit(false);
       PreparedStatement pstm = null ;
       FileInputStream input = new FileInputStream(getServletContext().getRealPath("/")+"//"+fname);
	  
	  
       POIFSFileSystem fs = new POIFSFileSystem(input); //creating a new poi reference to the given excel file
       HSSFWorkbook wb = new HSSFWorkbook(fs);
       HSSFSheet sheet = wb.getSheetAt(0);
       Row row;
       Statement st=connection.createStatement();
       for(int i=1; i<=sheet.getLastRowNum(); i++){  //points to the starting of excel i.e excel first row
           row = (Row) sheet.getRow(i);  //sheet number
 
                 if( row.getCell(0)==null) { pid = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else pid = row.getCell(0).toString();   //else copies cell data to name variable
		   
	   		      if( row.getCell(1)==null) { age = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else age = row.getCell(1).toString();   //else copies cell data to name variable
 
                  if( row.getCell(2)==null) { sex = "0";}  
                  else sex = row.getCell(2).toString();   
				  
				  if( row.getCell(3)==null) { Cerebral_palsy = "0";}
				  else Cerebral_palsy = row.getCell(3).toString();
				  
				  if( row.getCell(4)==null) { trestbps = "0";}
				  else trestbps = row.getCell(4).toString();
				  
				  if( row.getCell(5)==null) { chol = "0";}
				  else chol = row.getCell(5).toString();
				  
				  if( row.getCell(6)==null) {fbs = "0";}
				  else fbs= row.getCell(6).toString();
				  
				  if( row.getCell(7)==null) { restecg= "0";}
				  else restecg	 = row.getCell(7).toString();
				  
				  if( row.getCell(8)==null) { thalach	= "0";}
				  else thalach	 = row.getCell(8).toString();
				  
				  if( row.getCell(9)==null) { exang= "0";}
				  else exang = row.getCell(9).toString();
				  
				  if( row.getCell(10)==null) { oldpeak	= "0";}
				  else oldpeak	= row.getCell(10).toString();
				  
				  if( row.getCell(11)==null) { bp= "0";}
				  else bp = row.getCell(11).toString();
				  
				  if( row.getCell(12)==null) { Disease= "0";}
				  else Disease = row.getCell(12).toString();
				  
				 				  
				  
				KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
				Cipher encoder = Cipher.getInstance("RSA");
				KeyPair kp = kg.generateKeyPair();

				Key pubKey = kp.getPublic();

				byte[] pub = pubKey.getEncoded();
//				System.out.println("PUBLIC KEY" + pub);
		
				String pk = String.valueOf(pub);
				String rank="0";
				  
				 
				    String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(Disease));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1 = bi1.toString(16);
					
				String keys = "ef50a0ef2c3e3a5f";
			    byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue,"AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE,key);
				String keyy = String.valueOf(keyValue);
				
      	       	String sex1=sex.replace(".0","");	
				String pid1=pid.replace(".0","");
				String age1=age.replace(".0","");
			    
				
				String age2= new String(Base64.encode(age1.getBytes()));	
				String sex2= new String(Base64.encode(sex1.getBytes()));	
				String Cerebral_palsy1= new String(Base64.encode(Cerebral_palsy.getBytes()));	
				String trestbps1= new String(Base64.encode(trestbps.getBytes()));	
				String chol1= new String(Base64.encode(chol.getBytes()));	
				String fbs1= new String(Base64.encode(fbs.getBytes()));	
				String restecg1= new String(Base64.encode(restecg.getBytes()));	
				String thalach1= new String(Base64.encode(thalach.getBytes()));	
				String exang1= new String(Base64.encode(exang.getBytes()));	
				String oldpeak1= new String(Base64.encode(oldpeak.getBytes()));	
				String bp1= new String(Base64.encode(bp.getBytes()));	
				String Disease1= new String(Base64.encode(Disease.getBytes()));

			Statement stss=connection.createStatement();
			stss.executeUpdate("insert into  pdetails(pid,age,sex,Cerebral_palsy,trestbps,chol,fbs,restecg,thalach,exang,oldpeak,bp,Disease,hcode) values ('"+pid1+"','"+age2+"','"+sex2+"','"+Cerebral_palsy1+"','"+trestbps1+"','"+chol1+"','"+fbs1+"','"+restecg1+"','"+thalach1+"','"+exang1+"','"+oldpeak1+"','"+bp1+"','"+Disease1+"','"+h1+"')"); 
				
       }
       connection.commit();
       pstm.close();
       connection.close();
       input.close();
 
   }catch(Exception e){
       
   }
 
 
%>
		  <h2>Datasets Imported Successfully !!!</h2>
		<a href="O_Main.jsp">Back</a>  
        <p align="center"><a href="O_Main.jsp" class="style14">Back</a></p>
	    </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Alice</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="O_Main.jsp"><span>Alice Main</span></a></li>
            <li><a href="O_Login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
