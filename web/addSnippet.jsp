<!DOCTYPE html>
<html lang="en">
    <%@include file="layouts/header.jsp" %>
    <%@ include file="utils/session.jsp" %>
    <body>
        <div class="d-flex">
            <%@include file="includes/sidebar/sidebar.jsp" %>
            <div class="main-content flex-grow-1 overflow-auto p-4">
                <div class="container-fluid">
                    <form action="add-snippet" method="POST" onsubmit="return saveCodeToHidden();">
                        <% session.setAttribute("title", "Create New Snippet");%>
                        <%@include file="includes/form-page-header/formPageHeader.jsp" %>

                        <div class="row g-4">
                            <%@include file="includes/error.jsp" %>
                            <div class="col-lg-8">
                                <div class="mb-4">
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <label for="title" class="form-label">Title</label>
                                            <input type="text" class="form-control" id="title" name="title" placeholder="Snippet title" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="language" class="form-label">Language</label>
                                            <input type="text" class="form-select" id="language" list="programmingLanguage" name="language" required>
                                            <datalist id="programmingLanguage"></datalist>
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-4">
                                    <label for="description" class="form-label">Description</label>
                                    <textarea class="form-control" name="des" id="description" rows="3" placeholder="Describe what this snippet does" required></textarea>
                                </div>

                                <div class="mb-4">
                                    <label for="code" class="form-label">Code</label>
                                    <div id="editor"></div>
                                    <input type="hidden" name="code" id="code-hidden" required>
                                </div>

                                <div class="mb-4">
                                    <label class="form-label">Tags</label>
                                    <div class="d-flex flex-wrap gap-2 mb-2" id="tags-container"></div>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="new-tag" name="tag" placeholder="Add a tag" required>
                                        <button class="btn btn-outline-primary" type="button" id="add-tag-btn">
                                            <i class="bi bi-tags"></i>
                                        </button>
                                    </div>
                                </div>

                                <div class="d-flex justify-content-end gap-2">
                                    <button class="btn btn-outline-secondary">Cancel</button>
                                    <button class="btn btn-primary">
                                        <i class="bi bi-save me-2"></i> Save Snippet
                                    </button>
                                </div>
                            </div>

                            <!-- AI Enhancement Panel -->
                            <div class="col-lg-4">
                                <div class="sticky-top pt-2">
                                    <div class="card border-0 shadow-sm">
                                        <div class="card-body p-4">
                                            <h3 class="fs-5 fw-medium mb-4 d-flex align-items-center">
                                                <i class="bi bi-cpu me-2 text-primary"></i>
                                                AI Enhancement
                                            </h3>
                                            <div class="d-grid gap-2">
                                                <button class="btn btn-outline-primary text-start" onClick="fixError()">
                                                    <i class="bi bi-check me-2"></i> Auto Fix Errors
                                                </button>
                                                <button class="btn btn-outline-primary text-start">
                                                    <i class="bi bi-code-slash me-2"></i> Optimize Code
                                                </button>
                                            </div>
                                            <hr>
                                            <h3 class="fs-5 fw-medium mb-4 d-flex align-items-center">
                                                <i class="bi bi-text-paragraph me-2 text-primary"></i>
                                                AI Details
                                            </h3>
                                            <div class="d-grid gap-2">
                                                <button class="btn btn-outline-primary text-start" onClick="fixError()">
                                                    <i class="bi bi-check me-2"></i> Auto-Generate Title
                                                </button>
                                                <button class="btn btn-outline-primary text-start">
                                                    <i class="bi bi-code-slash me-2"></i> Auto-Generate Description
                                                </button>
                                                <button class="btn btn-outline-primary text-start">
                                                    <i class="bi bi-tags me-2"></i> Auto-Generate Tags
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script>

        </script>
        <script>
            require.config({paths: {'vs': 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.45.0/min/vs'}});
            let editor;

            require(["vs/editor/editor.main"], function () {
                editor = monaco.editor.create(document.getElementById('editor'), {
                    value: "// Enter your code here",
                    language: "python",
                    theme: "vs-dark",
                    automaticLayout: true
                });

                document.getElementById("language").addEventListener("change", function () {
                    const lang = this.value.toLowerCase();
                    monaco.editor.setModelLanguage(editor.getModel(), lang);
                });
            });

            function saveCodeToHidden() {
                const code = editor.getValue();
                document.getElementById("code-hidden").value = code;
                return true;
            }

        </script>

        <script>
            fetch("https://api.github.com/languages")
                    .then((response) => response.json())
                    .then((data) => {
                        const languageSelect = document.getElementById("programmingLanguage")
                        data.forEach((language) => {
                            const option = document.createElement("option")
                            option.value = language.name
                            option.textContent = language.name
                            languageSelect.appendChild(option)
                        })
                    })
                    .catch((error) => console.error("Error fetching languages:", error))
        </script>
        <script>

        </script>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
