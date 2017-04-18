package example.codeclan.com.moviesapp;

import org.junit.Test;

import static junit.framework.Assert.assertEquals;

/**
 * Created by user on 17/04/2017.
 */

    public class MovieTest {

        @Test
        public void testMovieSetup(){
            Movie movie = new Movie("The Godfather", "Drama", 1);
            assertEquals("The Godfather", movie.getTitle());
            assertEquals("Drama", movie.getGenre());
            assertEquals(1, movie.getRanking());

        }

        @Test
        public void testDetails(){
            Movie movie = new Movie("Schindler's List", "Drama", 3);
            assertEquals("Schindler's List, Drama, 3", movie.printDetails());
        }
}
