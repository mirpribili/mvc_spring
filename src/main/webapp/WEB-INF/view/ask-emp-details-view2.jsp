<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
    <h2>Dear Employee, Please enter your details</h2>
    <form:form action="showDetails2" modelAttribute="employee">
        Name:<form:input path="name"/>
        <br>
        <br>
        Surname:<form:input path="surname"/>
        <br>
        <br>
        Salary:<form:input path="salary"/>
        <br>
        <br>
        <br>
        <input type="submit" value="OK">
    </form:form>
</body>
</html>