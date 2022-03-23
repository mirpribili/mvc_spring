<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
    <h2>Dear Employee, Please enter your details</h2>
    <form:form action="showDetails2" modelAttribute="employee">
        Name:<form:input path="name"/>
        <form:errors path="name"/>
        <br>
        <br>
        Surname:<form:input path="surname"/>
        <form:errors path="surname"/>
        <br>
        <br>
        Salary:<form:input path="salary"/>
        <form:errors path="salary"/>
        <br>
        <br>
        Phone number:<form:input path="phoneNumber"/>
                <form:errors path="phoneNumber"/>
        <br>
        <br>
        Email:<form:input path="email"/>
               <form:errors path="email"/>
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
        <p>Foreign Language(s)</p>
        <%--EN <form:checkbox path="languages" value="English"/>--%>
        <%--DE <form:checkbox path="languages" value="Deutsch"/>--%>
        <%--FR <form:checkbox path="languages" value="French"/>--%>
        <form:checkboxes path="languages" items="${employee.languagesList}"/>

        <input type="submit" value="OK">
    </form:form>
</body>
</html>