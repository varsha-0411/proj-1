<!DOCTYPE html>
<html>
<head>
    <title>TES Institute</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<header class="top-header">
    <div class="logo">
        <h1>TES Institute</h1>
        <p>Learn Today, Lead Tomorrow</p>
    </div>
    <div class="contact-info">
        <p>📞 +91 98765 43210</p>
        <p>📧 info@tesinstitute.com</p>
    </div>
</header>

<nav class="navbar">
    <a href="index.jsp">Home</a>
    <a href="courses.jsp">Courses</a>
    <a href="about.jsp">About</a>
    <a href="contact.jsp">Contact</a>
    <a href="#admission">Admission</a>
</nav>

<section class="hero">
    <div class="hero-content">
        <h2>Build Your Future with TES Institute</h2>
        <p>
            Join industry-focused training programs in Java, DevOps, AWS,
            Docker, Kubernetes, Jenkins, and Web Development.
        </p>
        <a class="btn" href="courses.jsp">Explore Courses</a>
        <a class="btn secondary" href="#admission">Apply Now</a>
    </div>
</section>

<section class="stats">
    <div>
        <h2>5000+</h2>
        <p>Students Trained</p>
    </div>
    <div>
        <h2>25+</h2>
        <p>Expert Trainers</p>
    </div>
    <div>
        <h2>50+</h2>
        <p>Live Projects</p>
    </div>
    <div>
        <h2>90%</h2>
        <p>Placement Support</p>
    </div>
</section>

<section class="section">
    <h2>Why Choose TES Institute?</h2>

    <div class="cards">
        <div class="card">
            <h3>Real-Time Training</h3>
            <p>Learn with real-time scenarios, tools, and industry-level project practice.</p>
        </div>

        <div class="card">
            <h3>DevOps Lab Setup</h3>
            <p>Practice Jenkins, Docker, Kubernetes, AWS, Git, Maven, and SonarQube.</p>
        </div>

        <div class="card">
            <h3>Career Guidance</h3>
            <p>Resume building, interview preparation, mock interviews, and placement support.</p>
        </div>
    </div>
</section>

<section class="section courses-preview">
    <h2>Popular Courses</h2>

    <div class="cards">
        <div class="course-card">
            <h3>Java Full Stack</h3>
            <p>Core Java, Spring Boot, MySQL, JSP, Servlets, HTML, CSS.</p>
            <span>Duration: 4 Months</span>
        </div>

        <div class="course-card">
            <h3>DevOps Engineering</h3>
            <p>Git, Maven, Jenkins, Docker, Kubernetes, Ansible, Terraform.</p>
            <span>Duration: 3 Months</span>
        </div>

        <div class="course-card">
            <h3>AWS Cloud</h3>
            <p>EC2, S3, VPC, IAM, ELB, Auto Scaling, RDS, CloudWatch.</p>
            <span>Duration: 2 Months</span>
        </div>
    </div>
</section>

<section class="section trainers">
    <h2>Meet Our Trainers</h2>

    <div class="cards">
        <div class="trainer-card">
            <h3>Raj Kumar</h3>
            <p>Senior Java Developer</p>
        </div>

        <div class="trainer-card">
            <h3>Anil Dev</h3>
            <p>DevOps Engineer</p>
        </div>

        <div class="trainer-card">
            <h3>Sneha Reddy</h3>
            <p>AWS Cloud Trainer</p>
        </div>
    </div>
</section>

<section class="admission" id="admission">
    <h2>Admission Enquiry</h2>
    <p>Fill your details and our team will contact you.</p>

    <form action="contact" method="post">
        <input type="text" name="name" placeholder="Enter your name" required>
        <input type="email" name="email" placeholder="Enter your email" required>
        <input type="text" name="phone" placeholder="Enter your phone number" required>

        <select name="course" required>
            <option value="">Select Course</option>
            <option>Java Full Stack</option>
            <option>DevOps Engineering</option>
            <option>AWS Cloud</option>
            <option>Web Development</option>
        </select>

        <textarea name="message" placeholder="Write your message"></textarea>

        <button type="submit">Submit Enquiry</button>
    </form>
</section>

<footer>
    <div class="footer-container">
        <div>
            <h3>TES Institute</h3>
            <p>Learn Today, Lead Tomorrow</p>
        </div>

        <div>
            <h3>Quick Links</h3>
            <p><a href="index.jsp">Home</a></p>
            <p><a href="courses.jsp">Courses</a></p>
            <p><a href="about.jsp">About</a></p>
            <p><a href="contact.jsp">Contact</a></p>
        </div>

        <div>
            <h3>Contact</h3>
            <p>Ramachandrapuram, India</p>
            <p>+91 98765 43210</p>
            <p>jana@tesinstitute.com</p>
        </div>
    </div>

    <p class="copy">&copy; 2026 TES Institute. All rights reserved.</p>
</footer>

</body>
</html>
