package io.sstol.greetings.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController()
public class GreetingsController {
    @GetMapping
    String greetings() {
        return "Hello world!";
    }
}
