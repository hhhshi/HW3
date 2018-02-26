
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>result</title>
        <link rel="stylesheet" type="text/css" href="hanstyle.css">
    </head>
        <%
          int hours = Integer.parseInt(request.getParameter("hrwork"));
          double hrpay = Double.parseDouble(request.getParameter("hrpay"));
          
          int overtime = 40 - hours;
          double overpay = 1.5 * hrpay;
          
          double grosspay = hours*hrpay + overtime*overpay;
          
          double prededuct = Double.parseDouble(request.getParameter("pretax"));
          double pretaxpay = grosspay - prededuct;
          
          double tax;
          if(grosspay < 500)
            {tax = grosspay * 0.18;}
          else {tax = grosspay * 0.22;}
          
          double postaxpay = pretaxpay - tax;
          double postdeduct = Double.parseDouble(request.getParameter("posttax"));
          double netpay = postaxpay - postdeduct;
          
        %>
    
    <body>
        <h1>Salary Info</h1>
        
        <table>
            <tr>
                <td>Total Hours Worked:</td>
                <td><%= hours %></td>
            </tr>
            
            <tr>
                <td>Hourly Rate:</td>
                <td><%= hrpay %></td>
            </tr>
            
            <tr>
                <td># Hours Overtime:</td>
                <td><%= overtime %></td>
            </tr>
            
            <tr>
                <td>Overtime Hourly Rate:</td>
                <td><%= overpay %></td>
            </tr>
            
            <tr>
                <td>Gross Pay:</td>
                <td><%= grosspay %></td>
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
                <td><%= tax %></td>
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
            
        </table>
    </body>
</html>
