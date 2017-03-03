<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type= "text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        <hr>
        <form name="CalculatorFrom" action="results.jsp" method="post">
            <table align="center">
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td> <input type="text" name="Hours" value="" size="20"></td>
                    </tr>
                   
                    <tr>
                        <td>Hourly Pay:</td>
                        <td> <input type="text" name="HourPay" value="" size="20"></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td> <input type="text" name="PreTaxDeduct" value="" size="20"></td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct</td>
                        <td> <input type="text" name="PostTaxDeduct" value="" size="20" required ></td>
                    </tr>
                </tbody>   
            </table>
          
            <input align="middle" type="reset" value="Clear" id="clear">
            <input align="middle" type="submit" value="Submit" id="submit" >
          
        </form>    
    </body>
    
</html>
