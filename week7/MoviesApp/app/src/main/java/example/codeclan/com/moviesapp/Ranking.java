package example.codeclan.com.moviesapp;

import java.util.ArrayList;

/**
 * Created by user on 17/04/2017.
 */

public class  Ranking {
    private Movie[] movies;

    public Ranking() {
        this.movies = new Movie[10];
    }

    public void setMovie(Movie movie) {
        int position = movie.getRanking() -1;
        this.movies[position] = movie;
    }

    public Movie getMovieByRanking(int ranking) {
        return movies[ranking - 1 ];

    }

}
