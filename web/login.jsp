<!DOCTYPE html>
<html lang="en">
    <%@ include file="layouts/header.jsp" %>
    <%
        String userId = (String) session.getAttribute("userId");

        if (userId != null) {
            // User logged in, redirect to dashboard page
            response.sendRedirect("dashboard.jsp");
            return;
        }
    %>

<body>
<div class="min-vh-100 d-flex align-items-center justify-content-center py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8">
                <!-- Logo and Header -->
                <div class="text-center mb-4">
                    <div class="d-inline-flex align-items-center mb-2">
                        <i class="bi bi-code-slash text-primary fs-3 me-2"></i>
                        <span class="fs-2 fw-bold">Codexis</span>
                    </div>
                    <p class="text-secondary">Welcome back! Log in to your account</p>
                </div>

                <%@ include file="includes/error.jsp" %>

                <!-- Login Card -->
                <div class="card border-0 shadow-lg">
                    <div class="card-body p-4 p-md-5">
                        <h2 class="fs-4 fw-bold mb-4">Log In</h2>

                        <form action="login" method="POST">
                            <!-- Email -->
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>

                            <!-- Password -->
                            <div class="mb-3">
                                <div class="d-flex justify-content-between">
                                    <label for="password" class="form-label">Password</label>
                                    <a href="#" class="text-primary small text-decoration-none">Forgot password?</a>
                                </div>
                                <div class="input-group">
                                    <input type="password" class="form-control" id="password" name="password" required>
                                    <button class="btn btn-outline-secondary" type="button" id="togglePassword">
                                        <i class="bi bi-eye"></i>
                                    </button>
                                </div>
                            </div>

                            <!-- Remember Me -->
                            <div class="mb-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="remember">
                                    <label class="form-check-label text-secondary" for="remember">
                                        Remember me
                                    </label>
                                </div>
                            </div>

                            <!-- Submit Button -->
                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary w-100 py-2">
                                    Log In
                                </button>
                            </div>

                            <!-- Social Login -->
                            <div class="text-center">
                                <p class="text-secondary small mb-3">Or log in with</p>
                                <div class="d-flex justify-content-center gap-2">
                                    <button type="button" class="btn btn-outline-secondary">
                                        <i class="bi bi-github"></i>
                                    </button>
                                    <button type="button" class="btn btn-outline-secondary">
                                        <i class="bi bi-google"></i>
                                    </button>
                                    <button type="button" class="btn btn-outline-secondary">
                                        <i class="bi bi-microsoft"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        <!-- Register Link -->
                        <div class="text-center mt-4">
                            <p class="text-secondary mb-0">
                                Don't have an account? <a href="register.jsp" class="text-primary">Register</a>
                            </p>
                        </div>
                    </div>
                </div>

                <!-- Footer -->
                <div class="text-center mt-4">
                    <p class="text-secondary small">
                        &copy; <script>document.write(new Date().getFullYear())</script> Codexis. All rights reserved.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<!-- Password Toggle Script -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const togglePassword = document.getElementById('togglePassword');
        const password = document.getElementById('password');

        togglePassword.addEventListener('click', function() {
            // Toggle the password visibility
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);

            // Toggle the eye icon
            this.querySelector('i').classList.toggle('bi-eye');
            this.querySelector('i').classList.toggle('bi-eye-slash');
        });
    });
</script>
</body>
</html>