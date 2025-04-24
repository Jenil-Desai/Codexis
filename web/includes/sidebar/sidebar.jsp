<div class="sidebar bg-dark text-white d-flex flex-column">
    <div class="sidebar-header p-3 border-bottom border-secondary">
        <div class="d-flex align-items-center mb-3">
            <i class="bi bi-code-slash me-2 text-primary"></i>
            <span class="fs-4 fw-bold">Codexis</span>
        </div>
        <div class="position-relative">
            <i class="bi bi-search position-absolute top-50 start-0 translate-middle-y ms-3 text-secondary"></i>
            <input type="text" class="form-control bg-dark text-white border-secondary ps-5" placeholder="Search snippets...">
        </div>
    </div>
    <div class="sidebar-content flex-grow-1 overflow-auto">
        <div class="p-3">
            <p class="text-secondary text-uppercase small fw-bold mb-2">Navigation</p>
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a href="dashboard" class="nav-link active d-flex align-items-center">
                        <i class="bi bi-house me-3"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="snippets.html" class="nav-link text-white d-flex align-items-center">
                        <i class="bi bi-folder me-3"></i>
                        <span>My Snippets</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="ai-insights.html" class="nav-link text-white d-flex align-items-center">
                        <i class="bi bi-cpu me-3"></i>
                        <span>AI Insights</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="settings.html" class="nav-link text-white d-flex align-items-center">
                        <i class="bi bi-gear me-3"></i>
                        <span>Settings</span>
                    </a>
                </li>
            </ul>
        </div>
        <hr class="border-secondary mx-3">
        <div class="p-3">
            <p class="text-secondary text-uppercase small fw-bold mb-2">Recent Snippets</p>
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a href="snippet-detail.html?id=1" class="nav-link text-white d-flex align-items-center">
                        <i class="bi bi-code-slash me-3"></i>
                        <span>Authentication Flow</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="snippet-detail.html?id=2" class="nav-link text-white d-flex align-items-center">
                        <i class="bi bi-code-slash me-3"></i>
                        <span>API Request Helper</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="snippet-detail.html?id=3" class="nav-link text-white d-flex align-items-center">
                        <i class="bi bi-code-slash me-3"></i>
                        <span>React Custom Hook</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="sidebar-footer border-top border-secondary p-3">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a href="addSnippet.jsp" class="nav-link text-white d-flex align-items-center">
                    <i class="bi bi-plus-circle me-3"></i>
                    <span>New Snippet</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="profile.html" class="nav-link text-white d-flex align-items-center">
                    <i class="bi bi-person me-3"></i>
                    <span>John Doe</span>
                </a>
            </li>
        </ul>
        <div class="d-flex justify-content-between align-items-center mt-3">
            <button class="btn btn-dark" id="theme-toggle">
                <i class="bi bi-moon"></i>
            </button>
            <button class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#logoutModal">
                <i class="bi bi-box-arrow-right text-secondary"></i>
            </button>
        </div>
    </div>
</div>
<%@ include file="../logout/logout.jsp" %>