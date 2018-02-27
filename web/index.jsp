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
                        <td class="input">Hours Worked:</td>
                        <td class="input"><input class="tbox" type="text" name="hrwork" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td class="input">Hourly Pay:</td>
                        <td class="input"><input class="tbox" type="text" name="hrpay" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td class="input">Pre-tax Deduct:</td>
                        <td class="input"><input class="tbox" type="text" name="pretax" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td class="input">Post-tax Deduct:</td>
                        <td class="input"><input class="tbox" type="text" name="posttax" value="" size="50"></td>
                    </tr>
                </tbody>
            </table>

            <br>
            <label></label>
                 <input type="reset" value="Clear" id="clear">
                 <input type="submit" value="Submit" id="submit">
            
        </form>
       
    </body>
</html>
