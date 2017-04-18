package example.codeclan.com.moviesapp;

import org.junit.Before;
import org.junit.Test;

import static junit.framework.Assert.assertEquals;

/**
 * Created by user on 17/04/2017.
 */

public class RankingTest {

    Movie movie1;
    Movie movie2;
    Movie movie3;
    Movie movie4;
    Movie movie5;
    Movie movie6;
    Movie movie7;
    Movie movie8;
    Movie movie9;
    Movie movie10;

    Ranking ranking;

    @Before
    public void before() {
        ranking = new Ranking();

        movie1 = new Movie("The Shawshank Redemption", "Drama", 1);
        movie2 = new Movie("The Godfather", "Drama", 2);
        movie3 = new Movie("The Godfather: Part II", "Drama", 3);
        movie4 = new Movie("The Dark Knight", "Drama", 4);
        movie5 = new Movie("12 Angry Men", "Drama", 5);
        movie6 = new Movie("Schindler's List", "Drama", 6);
        movie7 = new Movie("Pulp Fiction", "Drama", 7);
        movie8 = new Movie("The Lord of the Rings: The Return of the King", "Drama", 8);
        movie9 = new Movie("The Good, the Bad and the Ugly", "Drama", 9);
        movie10 = new Movie("Fight Club", "Drama", 10);

        ranking.setMovie(movie1);
        ranking.setMovie(movie2);
        ranking.setMovie(movie3);
        ranking.setMovie(movie4);
        ranking.setMovie(movie5);
        ranking.setMovie(movie6);
        ranking.setMovie(movie7);
        ranking.setMovie(movie8);
        ranking.setMovie(movie9);
        ranking.setMovie(movie10);

        /*
            Test that ranking getMovieByRanking method returns the movie object that has a title of schindlers list

            movie movie = ranking.getMovieByRanking(6);
            assertequals(shcnidlers list, movie.getTitle())
         */

    }

    @Test
    public void testMovieRanking() {
        Movie movie = ranking.getMovieByRanking(6);
        assertEquals("Schindler's List", movie.getTitle());
    }

}