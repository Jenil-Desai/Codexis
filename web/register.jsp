<!DOCTYPE html>
<html lang="en">
<%@ include file="layouts/header.jsp" %>
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
                    <p class="text-secondary">Create your account to get started</p>
                </div>

                <%@ include file="includes/error.jsp" %>

                <!-- Registration Card -->
                <div class="card border-0 shadow-lg">
                    <div class="card-body p-4 p-md-5">
                        <h2 class="fs-4 fw-bold mb-4">Register</h2>

                        <form action="register" method="POST">
                            <div class="row g-3">
                                <!-- First Name -->
                                <div class="col-md-6">
                                    <label for="firstName" class="form-label">First Name</label>
                                    <input type="text" class="form-control" id="firstName" name="firstName" required>
                                </div>

                                <!-- Last Name -->
                                <div class="col-md-6">
                                    <label for="lastName" class="form-label">Last Name</label>
                                    <input type="text" class="form-control" id="lastName" name="lastName" required>
                                </div>

                                <!-- Email -->
                                <div class="col-12">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>

                                <!-- Password -->
                                <div class="col-12">
                                    <label for="password" class="form-label">Password</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" id="password" name="password" required>
                                        <button class="btn btn-outline-secondary" type="button" id="togglePassword">
                                            <i class="bi bi-eye"></i>
                                        </button>
                                    </div>
                                    <div class="form-text text-secondary">
                                        Password must be at least 8 characters long
                                    </div>
                                </div>

                                <!-- Terms and Conditions -->
                                <div class="col-12">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="terms" required>
                                        <label class="form-check-label text-secondary" for="terms">
                                            I agree to the <a href="#" class="text-primary">Terms of Service</a> and <a href="#" class="text-primary">Privacy Policy</a>
                                        </label>
                                    </div>
                                </div>

                                <!-- Submit Button -->
                                <div class="col-12 mt-4">
                                    <button type="submit" class="btn btn-primary w-100 py-2">
                                        Create Account
                                    </button>
                                </div>
                            </div>
                        </form>

                        <!-- Login Link -->
                        <div class="text-center mt-4">
                            <p class="text-secondary mb-0">
                                Already have an account? <a href="login.jsp" class="text-primary">Log in</a>
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