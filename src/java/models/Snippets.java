package models;

public class Snippets {
    private String id;
    private String title;
    private String language;
    private String description;
    private String code;
    private String tags;
    private boolean enchanced;
    private String fname;
    private String lname;

    public Snippets(String id,String title, String language, String description, String code, String tags, boolean enchanced, String fname, String lname) {
        this.id = id;
        this.title = title;
        this.language = language;
        this.description = description;
        this.code = code;
        this.tags = tags;
        this.enchanced = enchanced;
        this.fname = fname;
        this.lname = lname;
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

    public String getId() {
        return id;
    }

    public boolean isEnchanced() {
        return enchanced;
    }

    public String getFname() {
        return fname;
    }

    public String getLname() {
        return lname;
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

    public void setId(String id) {
        this.id = id;
    }

    public void setEnchanced(boolean enchanced) {
        this.enchanced = enchanced;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }
    
    
}
