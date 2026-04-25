<!DOCTYPE html>
<html>
<head>
    <title>Contact - TES Institute</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <h1>Contact TES Institute</h1>
</header>
<nav>
    <a href="index.jsp">Home</a>
    <a href="courses.jsp">Courses</a>
    <a href="about.jsp">About</a>
    <a href="contact.jsp">Contact</a>
</nav>
<section class="form-section">
    <h2>Admission Enquiry</h2>
    <form action="contact" method="post">
        <label>Name</label>
        <input type="text" name="name" required>

        <label>Email</label>
        <input type="email" name="email" required>

        <label>Course Interested</label>
        <select name="course">
            <option>Java Full Stack</option>
            <option>DevOps</option>
            <option>AWS Cloud</option>
            <option>Frontend Development</option>
        </select>

        <button type="submit">Submit</button>
    </form>
</section>
<footer><p>&copy; 2026 TES Institute</p></footer>
</body>
</html>
