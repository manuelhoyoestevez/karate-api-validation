package demo;

import com.intuit.karate.junit5.Karate;

class FullDemoTest {

    @Karate.Test
    Karate testAll() {
        return new Karate().relativeTo(getClass());
    }
    
}
