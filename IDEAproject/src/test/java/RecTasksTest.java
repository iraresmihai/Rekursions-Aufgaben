import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Test;

public class RecTasksTest {

    // Aufgabe 1: Summe der Elemente

    @Test
    public void sumEmptyArray() {
        assertEquals(0, RecTasks.sum(new int[]{}));
    }

    @Test
    public void sumSingleElement() {
        assertEquals(7, RecTasks.sum(new int[]{7}));
    }

    @Test
    public void sumSeveralPositiveElements() {
        assertEquals(8, RecTasks.sum(new int[]{2, 5, 1}));
    }

    @Test
    public void sumNegativeAndPositiveElements() {
        assertEquals(-4, RecTasks.sum(new int[]{-3, 1, -2}));
    }

    @Test
    public void sumZeros() {
        assertEquals(0, RecTasks.sum(new int[]{0, 0, 0}));
    }

    @Test
    public void sumCancellation() {
        assertEquals(10, RecTasks.sum(new int[]{100, -50, -40}));
    }

    // Aufgabe 2: Zeichen zaehlen

    @Test
    public void countEmptyString() {
        assertEquals(0, RecTasks.count('x', ""));
    }

    @Test
    public void countExample() {
        assertEquals(2, RecTasks.count('a', "banane"));
    }

    @Test
    public void countCharacterDoesNotOccur() {
        assertEquals(0, RecTasks.count('z', "banane"));
    }

    @Test
    public void countIsCaseSensitive() {
        assertEquals(2, RecTasks.count('A', "AaAa"));
        assertEquals(2, RecTasks.count('a', "AaAa"));
    }

    @Test
    public void countEveryCharacterMatches() {
        assertEquals(4, RecTasks.count('x', "xxxx"));
    }

    @Test
    public void countRepeatedPattern() {
        assertEquals(3, RecTasks.count('b', "abcabcabc"));
    }

    @Test
    public void countSpaces() {
        assertEquals(3, RecTasks.count(' ', "a b  c"));
    }

    // Aufgabe 3: Sortiertes Array

    @Test
    public void isSortedEmptyArray() {
        assertTrue(RecTasks.isSorted(new int[]{}));
    }

    @Test
    public void isSortedSingleElement() {
        assertTrue(RecTasks.isSorted(new int[]{5}));
    }

    @Test
    public void isSortedEqualElements() {
        assertTrue(RecTasks.isSorted(new int[]{1, 1, 1, 1}));
    }

    @Test
    public void isSortedNonDecreasingArray() {
        assertTrue(RecTasks.isSorted(new int[]{1, 2, 2, 5}));
    }

    @Test
    public void isSortedNegativeValues() {
        assertTrue(RecTasks.isSorted(new int[]{-3, -3, -1, 0, 7}));
    }

    @Test
    public void isSortedDetectsInversionAtStart() {
        assertFalse(RecTasks.isSorted(new int[]{5, 1, 2, 3}));
    }

    @Test
    public void isSortedDetectsInversionInMiddle() {
        assertFalse(RecTasks.isSorted(new int[]{1, 3, 2, 4}));
    }

    @Test
    public void isSortedDetectsInversionAtEnd() {
        assertFalse(RecTasks.isSorted(new int[]{1, 2, 3, 0}));
    }

    // Aufgabe 4: Wiederholungen entfernen

    @Test
    public void dedupRunsEmptyString() {
        assertEquals("", RecTasks.dedupRuns(""));
    }

    @Test
    public void dedupRunsSingleCharacter() {
        assertEquals("x", RecTasks.dedupRuns("x"));
    }

    @Test
    public void dedupRunsAllCharactersEqual() {
        assertEquals("x", RecTasks.dedupRuns("xxxx"));
    }

    @Test
    public void dedupRunsExample() {
        assertEquals("abca", RecTasks.dedupRuns("aabbcca"));
    }

    @Test
    public void dedupRunsMississippi() {
        assertEquals("misisipi", RecTasks.dedupRuns("mississippi"));
    }

    @Test
    public void dedupRunsLeavesAlternatingCharactersUnchanged() {
        assertEquals("ababab", RecTasks.dedupRuns("ababab"));
    }

    @Test
    public void dedupRunsAtBothEnds() {
        assertEquals("abca", RecTasks.dedupRuns("aaabcccaaa"));
    }

    @Test
    public void dedupRunsSpaces() {
        assertEquals("a b", RecTasks.dedupRuns("a   b"));
    }

    // Aufgabe 5: Klammern pruefen

    @Test
    public void isBalancedEmptyString() {
        assertTrue(RecTasks.isBalanced(""));
    }

    @Test
    public void isBalancedTextWithoutBraces() {
        assertTrue(RecTasks.isBalanced("abc"));
    }

    @Test
    public void isBalancedSinglePair() {
        assertTrue(RecTasks.isBalanced("{}"));
    }

    @Test
    public void isBalancedNestedBraces() {
        assertTrue(RecTasks.isBalanced("{{}}"));
        assertTrue(RecTasks.isBalanced("{a{}}"));
    }

    @Test
    public void isBalancedSeveralIndependentPairs() {
        assertTrue(RecTasks.isBalanced("{}text{}"));
    }

    @Test
    public void isBalancedIgnoresSquareBrackets() {
        assertTrue(RecTasks.isBalanced("[{}]"));
    }

    @Test
    public void isBalancedDetectsMissingClosingBrace() {
        assertFalse(RecTasks.isBalanced("{{}"));
    }

    @Test
    public void isBalancedDetectsMissingOpeningBrace() {
        assertFalse(RecTasks.isBalanced("{}}"));
    }

    @Test
    public void isBalancedDetectsClosingBraceBeforeOpeningBrace() {
        assertFalse(RecTasks.isBalanced("}{"));
    }

    @Test
    public void isBalancedRejectsRoundBrackets() {
        assertFalse(RecTasks.isBalanced("({a})"));
        assertFalse(RecTasks.isBalanced("text)"));
    }

    @Test
    public void isBalancedRejectsAngleBrackets() {
        assertFalse(RecTasks.isBalanced("<{a}>"));
        assertFalse(RecTasks.isBalanced("text>"));
    }
}
