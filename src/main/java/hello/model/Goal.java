package hello.model;

/**
 * Created by nuko on 2018. 5. 1..
 */
public class Goal {
    private String title;
    private String compensation;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCompensation() {
        return compensation;
    }

    public void setCompensation(String compensation) {
        this.compensation = compensation;
    }

    @Override
    public String toString() {
        return "Goal{" +
                "title='" + title + '\'' +
                ", compensation='" + compensation + '\'' +
                '}';
    }

}
