<!DOCTYPE html>
<html lang="en">
    <%@ include file="layouts/header.jsp" %>
    <body>
        <%@include file="./includes/navbar/navbar.jsp" %>

        <!-- Hero Section -->
        <section class="position-relative overflow-hidden py-5">
            <div class="animated-gradient position-absolute w-100 h-100 opacity-20"></div>
            <div class="container py-5 position-relative">
                <div class="row align-items-center">
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <h1 class="display-3 fw-bold mb-4">
                            Code Smarter, <span class="text-primary">Not Harder.</span>
                        </h1>
                        <p class="lead text-secondary mb-4">
                            Manage your code snippets with AI-powered insights, syntax highlighting, and seamless organization. Boost your productivity and write better code with Codexis.
                        </p>
                        <div class="d-flex flex-wrap gap-3">
                            <a href="register.html" class="btn btn-primary btn-lg">
                                Get Started Free <i class="bi bi-arrow-right ms-2"></i>
                            </a>
                            <a href="#demo" class="btn btn-outline-light btn-lg">
                                <i class="bi bi-play-circle me-2"></i> Watch Demo
                            </a>
                        </div>
                        <div class="mt-4 d-flex align-items-center">
                            <div class="d-flex">
                                <img src="https://randomuser.me/api/portraits/men/32.jpg" class="rounded-circle border border-2 border-dark" width="40" height="40" alt="User">
                                <img src="https://randomuser.me/api/portraits/women/44.jpg" class="rounded-circle border border-2 border-dark ms-n2" width="40" height="40" alt="User">
                                <img src="https://randomuser.me/api/portraits/men/67.jpg" class="rounded-circle border border-2 border-dark ms-n2" width="40" height="40" alt="User">
                            </div>
                            <div class="ms-3">
                                <p class="mb-0 text-secondary"><span class="text-primary fw-bold">5,000+</span> developers trust Codexis</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="position-relative">
                            <div class="card border-0 shadow-lg overflow-hidden">
                                <div class="card-body p-0">
                                    <img src="https://via.placeholder.com/800x500/0d1b2a/778da9?text=Codexis+Dashboard" class="img-fluid" alt="Codexis Dashboard">
                                </div>
                            </div>
                            <div class="position-absolute top-0 end-0 translate-middle-y me-n5 d-none d-xl-block">
                                <div class="card border-0 shadow-lg bg-primary text-white p-3" style="width: 200px;">
                                    <div class="d-flex align-items-center mb-2">
                                        <i class="bi bi-lightning-charge fs-4 me-2"></i>
                                        <h5 class="mb-0">AI Powered</h5>
                                    </div>
                                    <p class="mb-0 small">Get intelligent suggestions to improve your code quality</p>
                                </div>
                            </div>
                            <div class="position-absolute bottom-0 start-0 translate-middle-y ms-n5 d-none d-xl-block">
                                <div class="card border-0 shadow-lg p-3" style="width: 200px;">
                                    <div class="d-flex align-items-center mb-2">
                                        <i class="bi bi-code-slash fs-4 me-2 text-primary"></i>
                                        <h5 class="mb-0">Syntax Highlighting</h5>
                                    </div>
                                    <p class="mb-0 small text-secondary">Support for 100+ programming languages</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Trusted By Section -->
        <section class="py-5 bg-dark">
            <div class="container py-4">
                <p class="text-center text-secondary mb-4">TRUSTED BY DEVELOPERS FROM</p>
                <div class="row justify-content-center align-items-center">
                    <div class="col-6 col-md-2 mb-4 mb-md-0">
                        <div class="text-center">
                            <i class="bi bi-microsoft text-secondary" style="font-size: 2.5rem;"></i>
                        </div>
                    </div>
                    <div class="col-6 col-md-2 mb-4 mb-md-0">
                        <div class="text-center">
                            <i class="bi bi-google text-secondary" style="font-size: 2.5rem;"></i>
                        </div>
                    </div>
                    <div class="col-6 col-md-2 mb-4 mb-md-0">
                        <div class="text-center">
                            <i class="bi bi-amazon text-secondary" style="font-size: 2.5rem;"></i>
                        </div>
                    </div>
                    <div class="col-6 col-md-2 mb-4 mb-md-0">
                        <div class="text-center">
                            <i class="bi bi-meta text-secondary" style="font-size: 2.5rem;"></i>
                        </div>
                    </div>
                    <div class="col-6 col-md-2">
                        <div class="text-center">
                            <i class="bi bi-spotify text-secondary" style="font-size: 2.5rem;"></i>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Features Section -->
        <section id="features" class="py-5">
            <div class="container py-5">
                <div class="text-center mb-5">
                    <h2 class="display-5 fw-bold mb-3">Powerful Features</h2>
                    <p class="lead text-secondary mx-auto" style="max-width: 700px;">
                        Everything you need to manage, organize, and optimize your code snippets in one place.
                    </p>
                </div>

                <div class="row g-4 mb-5">
                    <div class="col-md-4">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body p-4">
                                <div class="rounded-circle bg-primary bg-opacity-10 p-3 d-inline-flex mb-3">
                                    <i class="bi bi-cpu text-primary fs-4"></i>
                                </div>
                                <h3 class="fs-4 fw-bold mb-2">AI-Powered Insights</h3>
                                <p class="text-secondary">
                                    Get intelligent suggestions, auto-fixes, and optimizations for your code snippets. Our AI analyzes your code to find potential bugs and performance issues.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body p-4">
                                <div class="rounded-circle bg-primary bg-opacity-10 p-3 d-inline-flex mb-3">
                                    <i class="bi bi-code-slash text-primary fs-4"></i>
                                </div>
                                <h3 class="fs-4 fw-bold mb-2">Syntax Highlighting</h3>
                                <p class="text-secondary">
                                    Beautiful syntax highlighting for over 100 programming languages and frameworks. Make your code more readable and easier to understand.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body p-4">
                                <div class="rounded-circle bg-primary bg-opacity-10 p-3 d-inline-flex mb-3">
                                    <i class="bi bi-search text-primary fs-4"></i>
                                </div>
                                <h3 class="fs-4 fw-bold mb-2">Smart Search</h3>
                                <p class="text-secondary">
                                    Find your snippets instantly with powerful search and AI-powered tagging. Never lose track of your code again with our intelligent organization system.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body p-4">
                                <div class="rounded-circle bg-primary bg-opacity-10 p-3 d-inline-flex mb-3">
                                    <i class="bi bi-cloud-arrow-up text-primary fs-4"></i>
                                </div>
                                <h3 class="fs-4 fw-bold mb-2">Cloud Sync</h3>
                                <p class="text-secondary">
                                    Access your snippets from anywhere with seamless cloud synchronization. Your code is always available on all your devices.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body p-4">
                                <div class="rounded-circle bg-primary bg-opacity-10 p-3 d-inline-flex mb-3">
                                    <i class="bi bi-share text-primary fs-4"></i>
                                </div>
                                <h3 class="fs-4 fw-bold mb-2">Collaboration</h3>
                                <p class="text-secondary">
                                    Share snippets with your team and collaborate in real-time. Perfect for pair programming and code reviews.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body p-4">
                                <div class="rounded-circle bg-primary bg-opacity-10 p-3 d-inline-flex mb-3">
                                    <i class="bi bi-shield-check text-primary fs-4"></i>
                                </div>
                                <h3 class="fs-4 fw-bold mb-2">Security</h3>
                                <p class="text-secondary">
                                    Keep your code secure with end-to-end encryption and granular access controls. You decide who can view and edit your snippets.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- How It Works Section -->
        <section id="how-it-works" class="py-5 bg-dark">
            <div class="container py-5">
                <div class="text-center mb-5">
                    <h2 class="display-5 fw-bold mb-3">How It Works</h2>
                    <p class="lead text-secondary mx-auto" style="max-width: 700px;">
                        Get started with Codexis in just a few simple steps
                    </p>
                </div>

                <div class="row">
                    <div class="col-lg-10 mx-auto">
                        <div class="row g-4">
                            <div class="col-md-4">
                                <div class="text-center">
                                    <div class="rounded-circle bg-primary bg-opacity-10 p-4 d-inline-flex mb-3" style="width: 100px; height: 100px;">
                                        <i class="bi bi-person-plus text-primary fs-1"></i>
                                    </div>
                                    <h3 class="fs-4 fw-bold mb-2">1. Create Account</h3>
                                    <p class="text-secondary">
                                        Sign up for a free account to get started with Codexis.
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="text-center">
                                    <div class="rounded-circle bg-primary bg-opacity-10 p-4 d-inline-flex mb-3" style="width: 100px; height: 100px;">
                                        <i class="bi bi-code-square text-primary fs-1"></i>
                                    </div>
                                    <h3 class="fs-4 fw-bold mb-2">2. Add Snippets</h3>
                                    <p class="text-secondary">
                                        Create or import your code snippets into the platform.
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="text-center">
                                    <div class="rounded-circle bg-primary bg-opacity-10 p-4 d-inline-flex mb-3" style="width: 100px; height: 100px;">
                                        <i class="bi bi-lightning-charge text-primary fs-1"></i>
                                    </div>
                                    <h3 class="fs-4 fw-bold mb-2">3. Boost Productivity</h3>
                                    <p class="text-secondary">
                                        Let AI enhance your code and organize your snippets.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Demo Section -->
        <section id="demo" class="py-5">
            <div class="container py-5">
                <div class="row align-items-center">
                    <div class="col-lg-5 mb-4 mb-lg-0">
                        <h2 class="display-5 fw-bold mb-3">See Codexis in Action</h2>
                        <p class="lead text-secondary mb-4">
                            Watch how Codexis can transform your coding workflow with AI-powered insights and organization.
                        </p>
                        <ul class="list-unstyled">
                            <li class="d-flex align-items-center mb-3">
                                <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                <span class="text-secondary">Intelligent code suggestions</span>
                            </li>
                            <li class="d-flex align-items-center mb-3">
                                <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                <span class="text-secondary">Automatic code organization</span>
                            </li>
                            <li class="d-flex align-items-center mb-3">
                                <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                <span class="text-secondary">Seamless team collaboration</span>
                            </li>
                            <li class="d-flex align-items-center">
                                <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                <span class="text-secondary">Advanced search capabilities</span>
                            </li>
                        </ul>
                        <a href="register.html" class="btn btn-primary mt-4">
                            Try It Free <i class="bi bi-arrow-right ms-2"></i>
                        </a>
                    </div>
                    <div class="col-lg-7">
                        <div class="card border-0 shadow-lg overflow-hidden">
                            <div class="ratio ratio-16x9">
                                <div class="bg-dark d-flex align-items-center justify-content-center">
                                    <div class="text-center">
                                        <i class="bi bi-play-circle text-primary" style="font-size: 5rem;"></i>
                                        <p class="mt-3 text-secondary">Click to watch demo video</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials Section -->
        <section id="testimonials" class="py-5 bg-dark">
            <div class="container py-5">
                <div class="text-center mb-5">
                    <h2 class="display-5 fw-bold mb-3">What Developers Say</h2>
                    <p class="lead text-secondary mx-auto" style="max-width: 700px;">
                        Don't just take our word for it. Here's what developers around the world think about Codexis.
                    </p>
                </div>

                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body p-4">
                                <div class="d-flex align-items-center mb-4">
                                    <div class="rounded-circle bg-primary bg-opacity-10 d-flex align-items-center justify-content-center" style="width: 60px; height: 60px;">
                                        <span class="fw-bold text-primary">JD</span>
                                    </div>
                                    <div class="ms-3">
                                        <h4 class="fs-5 fw-bold mb-0">Jane Doe</h4>
                                        <p class="text-secondary small mb-0">Senior Developer at TechCorp</p>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                </div>
                                <p class="text-secondary">
                                    "Codexis has completely transformed how I manage my code snippets. The AI suggestions are spot on and have saved me countless hours. I can't imagine going back to my old workflow."
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body p-4">
                                <div class="d-flex align-items-center mb-4">
                                    <div class="rounded-circle bg-primary bg-opacity-10 d-flex align-items-center justify-content-center" style="width: 60px; height: 60px;">
                                        <span class="fw-bold text-primary">JS</span>
                                    </div>
                                    <div class="ms-3">
                                        <h4 class="fs-5 fw-bold mb-0">John Smith</h4>
                                        <p class="text-secondary small mb-0">Freelance Developer</p>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-half text-warning"></i>
                                </div>
                                <p class="text-secondary">
                                    "The search functionality is incredible. I can find any snippet in seconds, even if I don't remember the exact name or language. This has been a game-changer for my productivity."
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body p-4">
                                <div class="d-flex align-items-center mb-4">
                                    <div class="rounded-circle bg-primary bg-opacity-10 d-flex align-items-center justify-content-center" style="width: 60px; height: 60px;">
                                        <span class="fw-bold text-primary">AK</span>
                                    </div>
                                    <div class="ms-3">
                                        <h4 class="fs-5 fw-bold mb-0">Alex Kim</h4>
                                        <p class="text-secondary small mb-0">Lead Developer at StartupX</p>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                </div>
                                <p class="text-secondary">
                                    "As a team lead, Codexis has been invaluable for sharing code standards and best practices. The collaboration features make it easy to review and improve each other's code."
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Pricing Section -->
        <section id="pricing" class="py-5">
            <div class="container py-5">
                <div class="text-center mb-5">
                    <h2 class="display-5 fw-bold mb-3">Simple, Transparent Pricing</h2>
                    <p class="lead text-secondary mx-auto" style="max-width: 700px;">
                        Choose the plan that's right for you. All plans include a 14-day free trial.
                    </p>
                </div>

                <div class="row g-4 justify-content-center">
                    <div class="col-lg-4 col-md-6">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body p-4">
                                <h3 class="text-center fw-bold mb-3">Free</h3>
                                <div class="text-center mb-4">
                                    <span class="display-5 fw-bold">$0</span>
                                    <span class="text-secondary">/month</span>
                                </div>
                                <ul class="list-unstyled mb-4">
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                        <span class="text-secondary">Up to 50 snippets</span>
                                    </li>
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                        <span class="text-secondary">Basic syntax highlighting</span>
                                    </li>
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                        <span class="text-secondary">Simple search</span>
                                    </li>
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-x-circle-fill text-secondary me-2"></i>
                                        <span class="text-secondary">AI-powered insights</span>
                                    </li>
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-x-circle-fill text-secondary me-2"></i>
                                        <span class="text-secondary">Team collaboration</span>
                                    </li>
                                </ul>
                                <div class="text-center">
                                    <a href="register.html" class="btn btn-outline-primary w-100">Get Started</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="card h-100 border-0 shadow-lg position-relative">
                            <div class="position-absolute top-0 start-50 translate-middle">
                                <span class="badge bg-primary px-3 py-2 rounded-pill">MOST POPULAR</span>
                            </div>
                            <div class="card-body p-4 pt-5">
                                <h3 class="text-center fw-bold mb-3">Pro</h3>
                                <div class="text-center mb-4">
                                    <span class="display-5 fw-bold">$12</span>
                                    <span class="text-secondary">/month</span>
                                </div>
                                <ul class="list-unstyled mb-4">
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                        <span class="text-secondary">Unlimited snippets</span>
                                    </li>
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                        <span class="text-secondary">Advanced syntax highlighting</span>
                                    </li>
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                        <span class="text-secondary">AI-powered search</span>
                                    </li>
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                        <span class="text-secondary">AI code suggestions</span>
                                    </li>
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-x-circle-fill text-secondary me-2"></i>
                                        <span class="text-secondary">Team collaboration</span>
                                    </li>
                                </ul>
                                <div class="text-center">
                                    <a href="register.html" class="btn btn-primary w-100">Get Started</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body p-4">
                                <h3 class="text-center fw-bold mb-3">Team</h3>
                                <div class="text-center mb-4">
                                    <span class="display-5 fw-bold">$29</span>
                                    <span class="text-secondary">/month</span>
                                </div>
                                <ul class="list-unstyled mb-4">
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                        <span class="text-secondary">Unlimited snippets</span>
                                    </li>
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                        <span class="text-secondary">Advanced syntax highlighting</span>
                                    </li>
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                        <span class="text-secondary">AI-powered search</span>
                                    </li>
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                        <span class="text-secondary">Advanced AI insights</span>
                                    </li>
                                    <li class="d-flex align-items-center mb-3">
                                        <i class="bi bi-check-circle-fill text-primary me-2"></i>
                                        <span class="text-secondary">Team collaboration (up to 10)</span>
                                    </li>
                                </ul>
                                <div class="text-center">
                                    <a href="register.html" class="btn btn-outline-primary w-100">Get Started</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- FAQ Section -->
        <section id="faq" class="py-5 bg-dark">
            <div class="container py-5">
                <div class="text-center mb-5">
                    <h2 class="display-5 fw-bold mb-3">Frequently Asked Questions</h2>
                    <p class="lead text-secondary mx-auto" style="max-width: 700px;">
                        Got questions? We've got answers. If you can't find what you're looking for, feel free to contact our support team.
                    </p>
                </div>

                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="accordion" id="faqAccordion">
                            <div class="accordion-item bg-dark border-0 mb-3">
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button bg-dark text-white" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        How does the AI code enhancement work?
                                    </button>
                                </h2>
                                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-secondary">
                                        Our AI analyzes your code snippets for potential bugs, security vulnerabilities, and performance issues. It then provides suggestions to improve your code based on best practices and patterns learned from millions of code repositories. The more you use Codexis, the more personalized the suggestions become.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item bg-dark border-0 mb-3">
                                <h2 class="accordion-header" id="headingTwo">
                                    <button class="accordion-button bg-dark text-white collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        Can I import my existing code snippets?
                                    </button>
                                </h2>
                                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-secondary">
                                        Yes! Codexis supports importing code snippets from various sources including GitHub Gists, Pastebin, and local files. You can also bulk import snippets using our API or command-line tool.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item bg-dark border-0 mb-3">
                                <h2 class="accordion-header" id="headingThree">
                                    <button class="accordion-button bg-dark text-white collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        Is my code secure with Codexis?
                                    </button>
                                </h2>
                                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-secondary">
                                        Absolutely. We use end-to-end encryption to ensure your code is secure. Your snippets are only accessible to you and those you explicitly share them with. We never use your code to train our AI models without your permission.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item bg-dark border-0 mb-3">
                                <h2 class="accordion-header" id="headingFour">
                                    <button class="accordion-button bg-dark text-white collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                        Can I use Codexis offline?
                                    </button>
                                </h2>
                                <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-secondary">
                                        Yes, we offer a desktop application that works offline and syncs your changes when you're back online. This is available for Pro and Team plan subscribers.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item bg-dark border-0">
                                <h2 class="accordion-header" id="headingFive">
                                    <button class="accordion-button bg-dark text-white collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                        How do I cancel my subscription?
                                    </button>
                                </h2>
                                <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-secondary">
                                        You can cancel your subscription at any time from your account settings. If you cancel, you'll still have access to your paid features until the end of your billing period. We don't offer refunds for partial months.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA Section -->
        <section class="py-5 bg-primary text-white">
            <div class="container py-5 text-center">
                <h2 class="display-5 fw-bold mb-3">Ready to Code Smarter?</h2>
                <p class="lead mb-5 mx-auto" style="max-width: 700px;">
                    Join thousands of developers who are saving time and writing better code with Codexis.
                </p>
                <div class="d-flex flex-column flex-sm-row justify-content-center gap-3">
                    <a href="register.html" class="btn btn-light btn-lg">
                        Get Started Free <i class="bi bi-arrow-right ms-2"></i>
                    </a>
                    <a href="#demo" class="btn btn-outline-light btn-lg">
                        Watch Demo
                    </a>
                </div>
                <p class="mt-3 text-white-50">No credit card required. 14-day free trial.</p>
            </div>
        </section>

        <%@include file="./includes/footer/footer.jsp" %>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>