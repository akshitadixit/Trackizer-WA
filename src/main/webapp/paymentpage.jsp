<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body >
        <form method="post" action="payment.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Confirmation</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Your bill is: </td>
                        <td><input type="label" name="bill" value="3457.00" /></td>
                    </tr>
                    <tr>
                        <td>Make Payment</td>
                        <td><input type="checkbox" name="payment" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>