<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculation</title>
</head>
<body>
<h1><%= "calculator" %>
</h1>
<br/>
<form method="GET" action="Calculate">
    <input type="text" name="num1" placeholder="Enter First Number" />
    <br/><br/>

    <select name="sign">
        <option> + </option>
        <option> - </option>
        <option> * </option>
        <option> / </option>
    </select>
    <br/><br/>

    <input type="text" name="num1" placeholder="Enter Second Number"/>
    <br/><br/>

    <input type="submit" value="calculator"/>
    <br/><br/>

</form>
</body>
</html>