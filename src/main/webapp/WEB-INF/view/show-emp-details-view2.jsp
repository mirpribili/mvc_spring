<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<h2>Dear Employee, you are WELCOME!!</h2>
<br>
<br>
<br>
<br>
    <b>Your name: ${employee.name}</b>
    <br>
    <b>Your surname: ${employee.surname}</b>
    <br>
    <b>Your salary: ${employee.salary}</b>
    <p>Your department: ${employee.department}</p>
    <p>Your car brand: ${employee.carBrand}</p>
    <p>Language(s):
        <ul>
        <c:forEach var="lang" items="${employee.languages}">
            <li>${lang}</li>
        </c:forEach>
        </ul>
    </p>
    <p>Your phone number: ${employee.phoneNumber}</p>
    <p>Your email: ${employee.email}</p>
</body>
</html>