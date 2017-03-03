<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type= "text/css" href="results.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result for Salary Calculator</title>
    </head>
    
    <%   
        int hoursWorked = Integer.parseInt(request.getParameter("Hours"));
        int hourPay = Integer.parseInt(request.getParameter("HourPay"));
        int PreDeduct = Integer.parseInt(request.getParameter("PreTaxDeduct"));
        int PostDeduct = Integer.parseInt(request.getParameter("PostTaxDeduct"));
        int Overtime = hoursWorked-40;
        double otPay = hourPay*1.5;
        double grosspay=(40*hourPay)+(Overtime*otPay);
        double ptPay=grosspay-PreDeduct;
    %>
    
    
    <body>
         
        <h1>Salary info</h1>
        <hr>
        <table align="center">
            <tbody>
           
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%=hoursWorked%></td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%=hourPay%></td>
                </tr>
                <tr>
                    <td># Hours Overtime:</td> 
                    <td>
                        <%
                        int[] Hours;
                        if (hoursWorked > 40)
                        { 
                            out.print(Overtime);
                        }
                        else 
                            out.print("0");
                    
                        %>
                    </td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%
                        if (hoursWorked>40)
                        {
                            out.print(otPay);
                        }
                        else
                            out.print("0");
                        
                        %></td>
                </tr>
                <tr>
                    <td>Gross pay:</td>
                    <td><%
                      
                        if (hoursWorked>40)
                        {
                            out.print(grosspay);
                        }
                        else
                            out.print(hoursWorked*hourPay);
                        %></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%=PreDeduct%></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%
                        out.print(ptPay);
                      
                    %></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td><%
                        if (grosspay < 500) {
                        out.print(ptPay*0.18);
                       
                        }
                        else 
                            out.print(ptPay*0.22);
                        %></td>
                </tr>
                <tr>
                    <td>Post-tax pay:</td>
                    <td><%
                        if(grosspay < 500)
                        {
                            out.print(ptPay-(ptPay*0.18));
                        }
                        else
                       
                            out.print(ptPay-(ptPay*0.22));
                    
                    %></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%=PostDeduct%></td>
                </tr>
                <tr>
                    <td>Net pay:</td>
                    <td><%
                        if (grosspay < 500)
                        {
                            out.print((ptPay-(ptPay*0.18))-PostDeduct);
                        }
                        else
                            out.print((ptPay-(ptPay*0.22))-PostDeduct);
                        %></td>
                </tr>
               </tbody>
            </table>  
    </body>
</html>
