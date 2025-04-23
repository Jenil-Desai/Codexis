<!DOCTYPE html>
<html lang="en">
    <%@include file="layouts/header.jsp" %>
    <%@ include file="utils/session.jsp" %>
    <body>
        <div class="d-flex">
            <%@include file="includes/sidebar/sidebar.jsp" %>
            <div class="main-content flex-grow-1 overflow-auto p-4">
                <div class="container-fluid">
                    <form action="add-snippet" method="POST">
                        <div class="d-flex align-items-center gap-3 mb-4">
                            <a href="dashboard.jsp" class="btn btn-outline-secondary btn-sm rounded-circle">
                                <i class="bi bi-arrow-left"></i>
                            </a>
                            <h1 class="fw-bold mb-0">Create New Snippet</h1>
                        </div>

                        <div class="row g-4">
                            <%@include file="includes/error.jsp" %>
                            <div class="col-lg-8">
                                <div class="mb-4">
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <label for="title" class="form-label">Title</label>
                                            <input type="text" class="form-control" id="title" name="title" placeholder="Snippet title">
                                        </div>
                                        <div class="col-md-6">
                                            <label for="language" class="form-label">Language</label>
                                            <input type="text" class="form-select" id="language" list="programmingLanguage" name="language">
                                            <datalist id="programmingLanguage"></datalist>
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-4">
                                    <label for="description" class="form-label">Description</label>
                                    <textarea class="form-control" name="des" id="description" rows="3" placeholder="Describe what this snippet does"></textarea>
                                </div>

                                <div class="mb-4">
                                    <label for="code" class="form-label">Code</label>
                                    <div id="editor"></div>
                                    <input type="hidden" name="code" id="code-hidden">
                                </div>

                                <div class="mb-4">
                                    <label class="form-label">Tags</label>
                                    <div class="d-flex flex-wrap gap-2 mb-2" id="tags-container"></div>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="new-tag" name="tag" placeholder="Add a tag">
                                        <button class="btn btn-outline-primary" type="button" id="add-tag-btn">
                                            <i class="bi bi-tags"></i>
                                        </button>
                                    </div>
                                </div>

                                <div class="d-flex justify-content-end gap-2">
                                    <button class="btn btn-outline-secondary">Cancel</button>
                                    <button class="btn btn-primary" onclick="saveCodeToHidden()">
                                        <i class="bi bi-save me-2"></i> Save Snippet
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script>
            require.config({paths: {'vs': 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.45.0/min/vs'}});
            let editor;

            require(["vs/editor/editor.main"], function () {
                editor = monaco.editor.create(document.getElementById('editor'), {
                    value: "// Enter your code here",
                    language: "javascript",
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

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
