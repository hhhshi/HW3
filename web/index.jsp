<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="hanstyle.css">
        <title>Salary Calculator</title>
        
    </head>
    <body>
        <h1>Simple Salary Calculator </h1>
        
        <form name="demoForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input class="tbox" type="text" name="hrwork" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input class="tbox" type="text" name="hrpay" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input class="tbox" type="text" name="pretax" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input class="tbox" type="text" name="posttax" value="" size="50"></td>
                    </tr>
                </tbody>
            </table>

                 <input type="reset" value="Clear" id="clear">
                 <input type="submit" value="Submit" id="submit">
            
        </form>
    </body>
</html>
