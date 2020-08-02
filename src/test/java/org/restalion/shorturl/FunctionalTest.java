package org.restalion.shorturl;

import com.intuit.karate.junit5.Karate;

import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;

@TestInstance(Lifecycle.PER_CLASS)
class FunctionalTest {
    
    @Karate.Test
    Karate createNewShortUrlTest() {
        return Karate.run("features/createNewShortUrlTest").relativeTo(getClass());
    }

    @Karate.Test
    Karate useShortUrlTest() {
        return Karate.run("features/useShortUrlTest").relativeTo(getClass());
    }
}