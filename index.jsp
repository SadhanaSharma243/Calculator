<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" import="calculator.Web" %>
<!DOCTYPE html>
<html>
   <head>
      <title>IT214 Project</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   <body>
      <form method="post" action="index.jsp">
         <table border="1" style="margin-top:-50px;">
            <tr>
               <td>Enter First Number</td>
               <td><input type="text" name="t1"></td>
            </tr> 
            <br>
            <tr>
            <td>Enter Second Number</td>
            <td><input type="text" name="t2"></td>
            </tr>
            <br>
            <tr>
               <td></td>
               <td>
                  <select name="opt">
                     <option value="select">select</option>
                     <option value="+">+</option>
                     <option value="-">-</option>
                     <option value="*">*</option>
                     <option value="/">/</option>
		     <option value="sqrt">sqrt</option>
	             <option value="^">^</option>
		     <option value="!">!</option>
                  </select>
               </td>
            </tr>
            </br>
            <tr>
               <td></td>
               <td><input type="submit" value="Calculate"></td>
            </tr>
         </table>
      </form>
      <% 
		 try {
		     if (request.getParameter("t1") != null) {
		         int num1, num2;
		         String operator;
		         
		         num1 = Integer.parseInt(request.getParameter("t1"));
		         
		         num2 = Integer.parseInt(request.getParameter("t2"));
		         operator = request.getParameter("opt");
		         
		         if (operator.equals("+")) {
		             out.println(num1 + num2);
		             
		         } else if (operator.equals("-")) {
		             out.println(num1 - num2);
		             
		         } else if (operator.equals("*")) {
		             out.println(num1 * num2);
		             
		         } else if (operator.equals("/")) {
		             out.println(num1 / num2);
		         } else if (operator.equals("sqrt"){
	                     math.sqrt(num1);
			     
			 } else if (operator.equals("!")) {
			     if (num1 <= 1){
		               return 1;
			     } else {
				return num1 * fact(num1-1);
			     }
			 
			 } else if (operartor.equals("^"){
			     math.pow(num1,num2)
			    }
		     }
		 } catch (Exception ex) {
		     out.println("Syntax Err");
		 } 
      %>
      
   </body>
</html>
