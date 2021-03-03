package demo.firstDemo;

import com.intuit.karate.junit5.Karate;

class FirstDemoRunner {

    @Karate.Test
    Karate testFullPath() {
        return new Karate().feature("classpath:demo/firstDemo/features/get-customer.feature",
                "classpath:demo/firstDemo/features/post-customer.feature",
                "classpath:demo/firstDemo/features/delete-customer.feature")
                .tags("@first-demo");

    }

    // Otra forma de ejecutar las features
    /*
        @Karate.Test
        Karate testFeatures() {
            return new Karate().feature("features/get-customer",
                                        "features/post-customer",
                                        "features/delete-customer")
                                .relativeTo(getClass());
        }
    */

}
