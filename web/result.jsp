
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="hanstyle.css">
        <title>result</title>       
    </head>
        <%
          int hoursWorked = Integer.parseInt(request.getParameter("hrwork"));
          double payRate = Double.parseDouble(request.getParameter("hrpay"));
          
          int otHour = hoursWorked - 40;
          double otPayRate = 1.5 * payRate;
          double otPay;
          double regularPay;
          double grossPay;
          if(hoursWorked > 40) 
                 {
                  otPay = otPayRate * otHour;
                  regularPay = 40 * payRate;
                  grossPay = regularPay + otPay;
                 }
          else {
            grossPay = hoursWorked * payRate;}
          
          double prededuct = Double.parseDouble(request.getParameter("pretax"));
          double pretaxpay = grossPay - prededuct;
          
          double taxAmount;
          if(grossPay < 500)
            {taxAmount = grossPay * 0.18;}
          else {taxAmount = grossPay * 0.22;}
          
          double postaxpay = pretaxpay - taxAmount;          
          double postdeduct = Double.parseDouble(request.getParameter("posttax"));
          double netpay = postaxpay - postdeduct;
        %>
    
    <body>
        <h1>Salary Info</h1>
        
        <table border="1">
            <tbody>
            <tr>
                <td>Total Hours Worked:</td>
                <td><%= hoursWorked %></td>
            </tr>
            
            <tr>
                <td>Hourly Rate:</td>
                <td><%= payRate %></td>
            </tr>
                
            <tr>
                <td># Hours Overtime:</td>
                <td><%= otHour %></td>
            </tr>
            
            <tr>
                <td>Overtime Hourly Rate:</td>
                <td><%= otPayRate %></td>
            </tr>
            
            <tr>
                <td>Gross Pay:</td>
                <td><%= grossPay %></td>
            </tr>
            
            <tr>
                <td>Pre-tax Deduct:</td>
                <td><%= prededuct %></td>
            </tr>
            
            <tr>
                <td>Pre-tax Pay:</td>
                <td><%= pretaxpay %></td>
            </tr>
            
            <tr>
                <td>Tax Amount:</td>
                <td><%= taxAmount %></td>
            </tr>
            
            <tr>
                <td>Post-tax Pay</td>
                <td><%= postaxpay %></td>
            </tr>
            
            <tr>
                <td>Post-tax Deduct:</td>
                <td><%= postdeduct %></td>
            </tr>
            
            <tr>
                <td>Net Pay:</td>
                <td><%= netpay %></td>
            </tr>
            
           
            </tbody>
        </table>
    </body>
</html>
