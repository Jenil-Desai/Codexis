<!DOCTYPE html>
<html lang="en">
    <%@ include file="layouts/header.jsp" %>
    <%@ include file="utils/session.jsp" %>
    <body>
        <div class="d-flex">
            <!-- Sidebar -->
            <%@include file="includes/sidebar/sidebar.jsp" %>

            <!-- Main Content -->
            <div class="main-content flex-grow-1 overflow-auto p-4">
                <div class="container-fluid">
                    <!-- Welcome Section -->
                    <div class="mb-5">
                        <h1 class="fw-bold mb-2">Welcome back, John</h1>
                        <p class="text-secondary">Here's what's happening with your snippets today.</p>
                    </div>

                    <!-- Quick Stats Cards -->
                    <div class="row g-4 mb-5">
                        <div class="col-md-4">
                            <div class="card border-0 shadow-sm h-100">
                                <div class="card-body">
                                    <h5 class="card-title">Quick Actions</h5>
                                    <div class="d-grid gap-2 mt-3">
                                        <button class="btn btn-outline-primary text-start">
                                            <i class="bi bi-plus-circle me-2"></i> Create New Snippet
                                        </button>
                                        <button class="btn btn-outline-primary text-start">
                                            <i class="bi bi-upload me-2"></i> Import Code
                                        </button>
                                        <button class="btn btn-outline-primary text-start">
                                            <i class="bi bi-search me-2"></i> Explore Snippets
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card border-0 shadow-sm h-100">
                                <div class="card-body">
                                    <h5 class="card-title">AI Recommendations</h5>
                                    <p class="card-subtitle text-secondary small mb-3">Based on your recent activity</p>
                                    <div class="bg-light rounded p-3 mb-2">
                                        <div class="d-flex">
                                            <i class="bi bi-stars text-primary mt-1 me-2"></i>
                                            <div>
                                                <p class="mb-0 fw-medium small">Optimize your API calls</p>
                                                <p class="mb-0 text-secondary small">Your fetch snippets could be more efficient</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="bg-light rounded p-3">
                                        <div class="d-flex">
                                            <i class="bi bi-stars text-primary mt-1 me-2"></i>
                                            <div>
                                                <p class="mb-0 fw-medium small">Update React patterns</p>
                                                <p class="mb-0 text-secondary small">Your hooks could use the latest React 18 features</p>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-link text-decoration-none w-100 mt-2">View All Insights</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card border-0 shadow-sm h-100">
                                <div class="card-body">
                                    <h5 class="card-title">Stats Overview</h5>
                                    <div class="mt-3">
                                        <div class="mb-3">
                                            <div class="d-flex justify-content-between align-items-center mb-1 small">
                                                <span>Total Snippets</span>
                                                <span class="fw-medium">24</span>
                                            </div>
                                            <div class="progress" style="height: 8px;">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 80%"></div>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <div class="d-flex justify-content-between align-items-center mb-1 small">
                                                <span>AI Enhanced</span>
                                                <span class="fw-medium">16</span>
                                            </div>
                                            <div class="progress" style="height: 8px;">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 60%"></div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="d-flex justify-content-between align-items-center mb-1 small">
                                                <span>Recently Used</span>
                                                <span class="fw-medium">8</span>
                                            </div>
                                            <div class="progress" style="height: 8px;">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 30%"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Snippets Section -->
                    <div>
                        <div class="d-flex justify-content-between align-items-center mb-4">
                            <h2 class="fw-bold">Your Snippets</h2>
                            <ul class="nav nav-pills">
                                <li class="nav-item">
                                    <a class="nav-link active" href="#recent" data-bs-toggle="tab">Recent</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#popular" data-bs-toggle="tab">Popular</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#ai" data-bs-toggle="tab">AI Enhanced</a>
                                </li>
                            </ul>
                        </div>

                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="recent">
                                <div class="d-flex flex-column gap-3">
                                    <!-- Snippet Card 1 -->
                                    <a href="snippet-detail.html?id=1" class="text-decoration-none">
                                        <div class="card border-0 shadow-sm hover-card">
                                            <div class="card-body p-3">
                                                <div class="d-flex justify-content-between">
                                                    <div>
                                                        <div class="d-flex align-items-center gap-2">
                                                            <h5 class="card-title mb-0">Authentication Flow</h5>
                                                            <span class="badge bg-primary bg-opacity-10 text-primary">AI Enhanced</span>
                                                        </div>
                                                        <p class="card-text text-secondary mt-1">JWT authentication with refresh tokens</p>
                                                    </div>
                                                    <div class="text-end">
                                                        <span class="badge bg-secondary bg-opacity-10">JavaScript</span>
                                                        <p class="text-secondary small mt-1">Updated 2 hours ago</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                    <!-- Snippet Card 2 -->
                                    <a href="snippet-detail.html?id=2" class="text-decoration-none">
                                        <div class="card border-0 shadow-sm hover-card">
                                            <div class="card-body p-3">
                                                <div class="d-flex justify-content-between">
                                                    <div>
                                                        <h5 class="card-title mb-0">API Request Helper</h5>
                                                        <p class="card-text text-secondary mt-1">Utility functions for API requests with error handling</p>
                                                    </div>
                                                    <div class="text-end">
                                                        <span class="badge bg-secondary bg-opacity-10">TypeScript</span>
                                                        <p class="text-secondary small mt-1">Updated Yesterday</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                    <!-- Snippet Card 3 -->
                                    <a href="snippet-detail.html?id=3" class="text-decoration-none">
                                        <div class="card border-0 shadow-sm hover-card">
                                            <div class="card-body p-3">
                                                <div class="d-flex justify-content-between">
                                                    <div>
                                                        <div class="d-flex align-items-center gap-2">
                                                            <h5 class="card-title mb-0">React Custom Hook</h5>
                                                            <span class="badge bg-primary bg-opacity-10 text-primary">AI Enhanced</span>
                                                        </div>
                                                        <p class="card-text text-secondary mt-1">useLocalStorage hook for persistent state</p>
                                                    </div>
                                                    <div class="text-end">
                                                        <span class="badge bg-secondary bg-opacity-10">TypeScript</span>
                                                        <p class="text-secondary small mt-1">Updated 3 days ago</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="text-center mt-4">
                                    <button class="btn btn-outline-primary">View All Snippets</button>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="popular">
                                <!-- Popular snippets content -->
                                <div class="d-flex flex-column gap-3">
                                    <!-- Snippet Card 1 -->
                                    <a href="snippet-detail.html?id=4" class="text-decoration-none">
                                        <div class="card border-0 shadow-sm hover-card">
                                            <div class="card-body p-3">
                                                <div class="d-flex justify-content-between">
                                                    <div>
                                                        <div class="d-flex align-items-center gap-2">
                                                            <h5 class="card-title mb-0">Form Validation</h5>
                                                            <span class="badge bg-primary bg-opacity-10 text-primary">AI Enhanced</span>
                                                        </div>
                                                        <p class="card-text text-secondary mt-1">Reusable form validation with Zod</p>
                                                    </div>
                                                    <div class="text-end">
                                                        <span class="badge bg-secondary bg-opacity-10">TypeScript</span>
                                                        <p class="text-secondary small mt-1">Updated 1 week ago</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                    <!-- Snippet Card 2 -->
                                    <a href="snippet-detail.html?id=5" class="text-decoration-none">
                                        <div class="card border-0 shadow-sm hover-card">
                                            <div class="card-body p-3">
                                                <div class="d-flex justify-content-between">
                                                    <div>
                                                        <h5 class="card-title mb-0">Database Connection</h5>
                                                        <p class="card-text text-secondary mt-1">PostgreSQL connection with connection pooling</p>
                                                    </div>
                                                    <div class="text-end">
                                                        <span class="badge bg-secondary bg-opacity-10">JavaScript</span>
                                                        <p class="text-secondary small mt-1">Updated 2 weeks ago</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="ai">
                                <!-- AI enhanced snippets content -->
                                <div class="d-flex flex-column gap-3">
                                    <!-- Snippet Card 1 -->
                                    <a href="snippet-detail.html?id=1" class="text-decoration-none">
                                        <div class="card border-0 shadow-sm hover-card">
                                            <div class="card-body p-3">
                                                <div class="d-flex justify-content-between">
                                                    <div>
                                                        <div class="d-flex align-items-center gap-2">
                                                            <h5 class="card-title mb-0">Authentication Flow</h5>
                                                            <span class="badge bg-primary bg-opacity-10 text-primary">AI Enhanced</span>
                                                        </div>
                                                        <p class="card-text text-secondary mt-1">JWT authentication with refresh tokens</p>
                                                    </div>
                                                    <div class="text-end">
                                                        <span class="badge bg-secondary bg-opacity-10">JavaScript</span>
                                                        <p class="text-secondary small mt-1">Updated 2 hours ago</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                    <!-- More AI enhanced snippets -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>