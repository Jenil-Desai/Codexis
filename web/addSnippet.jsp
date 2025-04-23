<!DOCTYPE html>

    <%@ include file="layouts/header.jsp" %>
    
        <form action="add-snippet" method="POST">
        <label for="title">Title:</label>
        <input type="text"  name="title" placeholder="Snippet title" required/>

        <label for="language">Language:</label>
        <select id="language" name="language" required>
            <option value="java">Java</option>
            <option value="python">Python</option>
            <option value="javascript">JavaScript</option>
            <option value="php">PHP</option>
        </select>

        <label for="description">Description:</label>
        <textarea  name="des" rows="4" placeholder="Snippet description" required></textarea>

        <label for="code">Code:</label>
        <textarea  name="code" rows="10" placeholder="Write your code here..." required></textarea>

        <label for="tag">Tags:</label>
        <input type="text"  name="tag" placeholder="e.g., Java, Algorithm, OOP"/>

        <input type="submit" value="Submit"/>
    </form>
    

