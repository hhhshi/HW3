
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
            {taxAmount = pretaxpay * 0.18;}
          else {taxAmount = pretaxpay * 0.22;}
          
          double postaxpay = pretaxpay - taxAmount;          
          double postdeduct = Double.parseDouble(request.getParameter("posttax"));
          double netpay = postaxpay - postdeduct;
        %>
    
    <body>
        <h1>Salary Information</h1>
        
        <div id="table">
        <table id="result">
            <tbody>
            <tr>
                <td class="col1">Total Hours Worked:</td>
                <td><%= hoursWorked %></td>
            </tr>
            
            <tr>
                <td class="col1">Hourly Rate:</td>
                <td><%= payRate %></td>
            </tr>
                
            <tr>
                <td class="col1"># Hours Overtime:</td>
                <td><%= otHour %></td>
            </tr>
            
            <tr>
                <td class="col1">Overtime Hourly Rate:</td>
                <td><%= otPayRate %></td>
            </tr>
            
            <tr>
                <td class="col1">Gross Pay:</td>
                <td><%= grossPay %></td>
            </tr>
            
            <tr>
                <td class="col1">Pre-tax Deduct:</td>
                <td><%= prededuct %></td>
            </tr>
            
            <tr>
                <td class="col1">Pre-tax Pay:</td>
                <td><%= pretaxpay %></td>
            </tr>
            
            <tr>
                <td class="col1">Tax Amount:</td>
                <td><%= taxAmount %></td>
            </tr>
            
            <tr>
                <td class="col1">Post-tax Pay</td>
                <td><%= postaxpay %></td>
            </tr>
            
            <tr>
                <td class="col1">Post-tax Deduct:</td>
                <td><%= postdeduct %></td>
            </tr>
            
            <tr>
                <td class="col1">Net Pay:</td>
                <td id="netpay"><%= netpay %></td>
            </tr>
            
           
            </tbody>
        </table>
        </div>
    </body>
</html>
