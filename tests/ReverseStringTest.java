package interview_programs;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class ReverseStringTest {

    @Test
    public void testReverseNormal() {
        assertEquals("!dlroW olleH", ReverseString.reverse("Hello World!"));
    }

    @Test
    public void testReverseEmptyString() {
        assertEquals("", ReverseString.reverse(""));
    }

    @Test
    public void testReverseSingleCharacter() {
        assertEquals("A", ReverseString.reverse("A"));
    }

    @Test
    public void testReversePalindrome() {
        assertEquals("madam", ReverseString.reverse("madam"));
    }

    @Test
    public void testReverseWithSpaces() {
        assertEquals("  cba", ReverseString.reverse("abc  "));
    }
}
