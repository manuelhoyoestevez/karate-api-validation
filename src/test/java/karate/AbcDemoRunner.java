package karate;

import com.intuit.karate.junit5.Karate;

class AbcDemoRunner {

    @Karate.Test
    Karate retrieveSteps() {
        return new Karate().feature(
                "classpath:abc/features/retrieve-steps.feature",
                "classpath:abc/features/gate-state-update.feature"
        );
    }

}
