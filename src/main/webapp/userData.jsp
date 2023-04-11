<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your data here</title>
</head>
<body>
<table>
    <thead>
        <tr>
            <th scope="col">
                Names
            </th>
            <th scope="col">
                Birthdate
            </th>
            <th scope="col">
                Native language
            </th>
            <th scope="col">
                Skills
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <% String name = (String) request.getAttribute("name");  %>
            <td> <% out.println(name); %> </td>
        </tr>
        <tr>
            <% String birthdate = (String) request.getAttribute("birthdate");  %>
            <td> <% out.println(birthdate); %> </td>
        </tr>
        <tr>
            <% String nativeLanguage = (String) request.getAttribute("nativeLanguage");  %>
            <td> <% out.println(nativeLanguage); %> </td>
        </tr>
        <tr>
            <% String[] skills = (String[]) request.getAttribute("skills");  %>
            <td>
                <% for (String skill : skills) { %>
                <p><% out.println(skill); %></p>
                <% } %>
            </td>
        </tr>
    </tbody>
    <tfoot>

    </tfoot>
</table>
</body>
</html>
