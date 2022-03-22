<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<h2>Dear Employee, you are WELCOME!!</h2>
<br>
<br>
<br>
<br>
    <b>Your name: ${employee_attribute.name}</b>
    <br>
    <b>Your surname: ${employee_attribute.surname}</b>
    <br>
    <b>Your salary: ${employee_attribute.salary}</b>
    <p>Your department: ${employee_attribute.department}</p>
    <p>Your car brand: ${employee_attribute.carBrand}</p>
    <p>Language(s):
        <ul>
        <c:forEach var="lang" items="${employee_attribute.languages}">
            <li>${lang}</li>
        </c:forEach>
        </ul>
    </p>
</body>
</html>