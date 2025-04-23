<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark sticky-top py-3">
    <div class="container">
        <a class="navbar-brand d-flex align-items-center" href="#">
            <i class="bi bi-code-slash me-2 text-primary fs-4"></i>
            <span class="fw-bold fs-4">Codexis</span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#features">Features</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#how-it-works">How It Works</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#testimonials">Testimonials</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#pricing">Pricing</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#faq">FAQ</a>
                </li>
            </ul>
            <%
                String userId = (String) session.getAttribute("userId");

                if (userId != null) {
            %>
            <div class="d-flex">
                <a href="dashboard.jsp" class="btn btn-outline-light">Dashboard</a>
            </div>
            <%
            } else {
            %>
            <div class="d-flex gap-2">
                <a href="login.jsp" class="btn btn-outline-light">Log In</a>
                <a href="register.jsp" class="btn btn-primary">Sign Up</a>
            </div>
            <%
                }
            %>
        </div>
    </div>
</nav>