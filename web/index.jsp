<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="hanstyle.css">
    </head>
    <body>
        <h1>Simple Salary Calculator </h1>
        
        <form name="demoForm" action="results.jsp" method="post">
            <label>Hours Worked:</label><input class="tbox" type="text" name="hrwork" value="" size="50">
            
            <br>
            <label>Hourly Pay:</label><input class="tbox" type="text" name="hrpay" value="" size="50">
            
            <br>
            <label>Pre-tax Deduct:</label><input class="tbox" type="text" name="pretax" value="" size="50">
            
            <br>
            <label>Post-tax Deduct:</label><input class="tbox" type="text" name="posttax" value="" size="50">
            
            <br> 
            <label> </label>
                 <input type="reset" value="Clear" id="clear">
                 <input type="submit" value="Submit" id="submit">
        </form>
    </body>
</html>
