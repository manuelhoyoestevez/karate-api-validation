package demo.secondDemo;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;

//@KarateOptions(tags = {"~@ignore"})
class SecondDemoRunner {

    @Karate.Test
    Karate testFullPath() {
        return new Karate().feature("classpath:demo/secondDemo/features/get-customer-by-id.feature",
                "classpath:demo/secondDemo/features/delete-customer.feature")
                .tags("@second-demo");

    }
}
