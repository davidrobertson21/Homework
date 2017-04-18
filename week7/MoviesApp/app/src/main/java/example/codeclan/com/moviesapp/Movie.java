package example.codeclan.com.moviesapp;

/**
 * Created by user on 17/04/2017.
 */

public class Movie {

        private String title;
        private String genre;
        private int ranking;

        public Movie(String title, String genre, int ranking) {
            this.title = title;
            this.genre = genre;
            this.ranking = ranking;
        }


    public String getTitle() {
        return title;
    }

    public void setTitle(String newTitle){
        this.title = newTitle;

    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String newGenre) {
        this.title = newGenre;
    }

    public int getRanking() {
        return ranking;
    }

    public String printDetails() {
        return this.title + ", " + this.genre + ", " + this.ranking;
    }

}



