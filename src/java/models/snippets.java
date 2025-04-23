package models;

public class snippets {
    private String title;
    private String language;
    private String description;
    private String code;
    private String tags;

    public snippets(String title, String language, String description, String code, String tags) {
        this.title = title;
        this.language = language;
        this.description = description;
        this.code = code;
        this.tags = tags;
    }

    // Getters
    public String getTitle() {
        return title;
    }

    public String getLanguage() {
        return language;
    }

    public String getDescription() {
        return description;
    }

    public String getCode() {
        return code;
    }

    public String getTags() {
        return tags;
    }

    // Setters
    public void setTitle(String title) {
        this.title = title;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }
}
