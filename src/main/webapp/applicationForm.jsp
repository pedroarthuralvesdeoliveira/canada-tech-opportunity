<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tech vacancy form</title>
</head>
<body>
    <form action="applicationForm" method="post">
        <label>
            Name
            <input type="text" name="name" required>
        </label>
        <label>
            Birthdate
            <input type="datetime" name="birthdate" required>
        </label>
        <label for="nativeLanguage">Choose your native language: </label>
        <select name="nativeLanguage" id="nativeLanguage" required>
            <option value="english">English</option>
            <option value="portuguese">Portuguese</option>
            <option value="spanish">Spanish</option>
        </select>
        <input type="checkbox" id="java" name="skills" value="Java">
        <label for="java">Java</label>
        <input type="checkbox" id="javascript" name="skills" value="JavaScript">
        <label for="javascript">JavaScript</label>
        <input type="checkbox" id="html" name="skills" value="HTML">
        <label for="html">HTML</label>
        <input type="checkbox" id="css" name="skills" value="CSS">
        <label for="css">CSS</label>
        <input type="submit" value="Save">
    </form>
</body>
</html>
