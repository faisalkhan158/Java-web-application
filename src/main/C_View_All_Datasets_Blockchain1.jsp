
          
		 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>  




          <h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,hsign,s111;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						String str1 = " select distinct(hcode) from pdetails ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    hsign = rs1.getString(1);
						   	String query="select * from pdetails  where hcode = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
						String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
							
							s111=rs.getString(14);
							String decryptedValue111 = new String(Base64.decode(s111.getBytes()));
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
				  <table width="650" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>pid</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>age</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>sex</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Cerebral_palsy</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>trestbps</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>chol</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>fbs</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>restecg</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>thalach</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>exang</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>oldpeak</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>bp</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Disease</strong></strong></div></td>
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Trapdoor</strong></div></td>
 
            </tr>
         <h3 align="center">
<p align="center" class="style1"><span class="style1">Disease Chain--->::</span> <%=decryptedValue111%><br>
			    <span class="style1">Disease Hash Code --->::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							
							}
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
								
								
					%>
	      </div>  <tr>
			 
			
			
              <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(s1);%>
              </div></td>
             
              <td height="41" align="center"  valign="middle"><div align="center" class="style4">
              <%out.println(decryptedValue);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(decryptedValue1);%>
              </div></td>
              <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(decryptedValue2);%>
              </div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(decryptedValue3);%>
              </div></td> <td height="41" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(decryptedValue4);%>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(decryptedValue5);%>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4">
              <%out.println(decryptedValue6);%>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4">
              <%out.println(decryptedValue7);%>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(decryptedValue8);%>
              </div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(decryptedValue9);%>
              </div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(decryptedValue10);%>
              </div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(decryptedValue11);%>
              </div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(s14);%>
              </div></td>
			  
			 
            </tr>
 	
	    <%
					 
			   }
			   
			    }
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
		  
		  
        