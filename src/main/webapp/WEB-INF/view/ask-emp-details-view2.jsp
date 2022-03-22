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
        Department:<form:select path="department">
                    <%--HARD CODE--%>
                    <%--<form:option value="Information Technology" label="IT"/>--%>
                    <%--<form:option value="Human Resources" label="HR"/>--%>
                    <%--<form:option value="Sales" label="Sales"/>--%>
                    <form:options items="${employee.departments}"/>
                   </form:select>
        <br>
        <br>
        <p>Which car do you want?
            <%--HARD CODE--%>
            <%--BMW<form:radiobutton path="carBrand" value="BMW"/>--%>
            <%--Audi<form:radiobutton path="carBrand" value="Audi"/>--%>
            <%--Hammer<form:radiobutton path="carBrand" value="Hammer"/>--%>
            <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>

        </p>

        <input type="submit" value="OK">
    </form:form>
</body>
</html>