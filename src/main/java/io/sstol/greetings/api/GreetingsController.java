package io.sstol.greetings.api;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
public class GreetingsController {
    @GetMapping
    String greetings() {
        log.info("Hello world!");
        return "Hello world!";
    }
}
