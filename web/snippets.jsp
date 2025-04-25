<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="layouts/header.jsp" %>
    <body>
        <!-- Navigation -->
        <%@include file="includes/navbar/navbar.jsp" %>

        <!-- Hero Section -->
        <section class="py-4 bg-dark">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <h1 class="fw-bold mb-3">Public Snippets</h1>
                        <p class="lead text-secondary mb-0">
                            Discover, learn from, and use code snippets shared by the Codexis community.
                        </p>
                    </div>
                    <div class="col-lg-6">
                        <div class="search-container mt-3 mt-lg-0">
                            <i class="bi bi-search"></i>
                            <input type="text" class="form-control search-input" placeholder="Search snippets by title, description, or code...">
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Filters Section -->
        <section class="py-4 bg-oxford-blue border-bottom border-dark">
            <div class="container">
                <div class="d-flex justify-content-between g-3">
                    <div class="d-flex gap-2">
                        <select class="form-select">
                            <option selected>All Languages</option>
                        </select>
                        <select class="form-select">
                            <option selected>All Categories</option>
                        </select>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="d-flex gap-2">
                            <button class="btn btn-outline-light filter-btn active flex-grow-1">
                                <i class="bi bi-grid-3x3-gap-fill me-1"></i> Grid
                            </button>
                            <button class="btn btn-outline-light filter-btn flex-grow-1">
                                <i class="bi bi-list me-1"></i> List
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Snippets Grid -->
        <section class="py-5">
            <div class="container">
                <div class="row g-4">
                    <% List<models.Snippets> snippets = (List<models.Snippets>) request.getAttribute("snippets");%>
                    <% for (int i = 0; i < snippets.size(); i++) {%>
                    <div class="col-lg-4 col-md-6">
                        <div class="card snippet-card">
                            <div class="card-body p-0">
                                <div class="position-relative">
                                    <span class="badge bg-primary language-badge"><%= snippets.get(i).getLanguage()%></span>
                                    <div class="snippet-actions">
                                        <button class="btn btn-sm btn-dark me-1" title="Copy to clipboard">
                                            <i class="bi bi-clipboard"></i>
                                        </button>
                                        <button class="btn btn-sm btn-dark" title="Save to your snippets">
                                            <i class="bi bi-bookmark-plus"></i>
                                        </button>
                                    </div>
                                    <div class="code-preview">
                                        <pre>
                                           <code class="language-<%= snippets.get(i).getLanguage().toLowerCase()%>">
                                                <%= snippets.get(i).getCode()%>
                                           </code>
                                        </pre>
                                    </div>
                                </div>
                                <div class="p-3">
                                    <h5 class="card-title mb-1">
                                        <a href="#" class="text-white text-decoration-none hover-primary"><%= snippets.get(i).getTitle()%></a>
                                    </h5>
                                    <p class="text-secondary small mb-2"><%= snippets.get(i).getDescription()%></p>
                                    <div class="mb-3">
                                        <a href="#" class="tag-badge"><%= snippets.get(i).getTags()%></a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="d-flex align-items-center snippet-author">
                                            <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Author" class="me-2">
                                            <span class="text-secondary small"><%= snippets.get(i).getFname() + " " + snippets.get(i).getLname()%></span>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <div class="d-flex align-items-center me-3">
                                                <i class="bi bi-star-fill text-warning me-1"></i>
                                                <span class="text-secondary small">42</span>
                                            </div>
                                            <div class="d-flex align-items-center">
                                                <i class="bi bi-eye text-secondary me-1"></i>
                                                <span class="text-secondary small">1.2k</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% }%>
                </div>
            </div>
        </section>

        <!-- Share Your Snippet CTA -->
        <section class="py-5 bg-primary text-white">
            <div class="container py-4 text-center">
                <h2 class="fw-bold mb-3">Have a useful code snippet to share?</h2>
                <p class="lead mb-4 mx-auto" style="max-width: 700px;">
                    Share your knowledge with the community. Your snippet could help other developers solve their problems.
                </p>
                <a href="dashboard" class="btn btn-light btn-lg">
                    Share Your Snippet <i class="bi bi-upload ms-2"></i>
                </a>
            </div>
        </section>

        <!-- Footer -->
        <%@include file="includes/footer/footer.jsp" %>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Prism.js for syntax highlighting -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/components/prism-core.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/plugins/autoloader/prism-autoloader.min.js"></script>
    </body>
</html>