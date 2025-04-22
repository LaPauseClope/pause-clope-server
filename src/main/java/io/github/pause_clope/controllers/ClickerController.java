package io.github.pause_clope.controllers;

import io.github.pause_clope.dto.SaveRequest;
import io.github.pause_clope.services.ClickerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/clicker")
public class ClickerController {

    private final ClickerService clickerService;
    private final Logger logger = LoggerFactory.getLogger(ClickerController.class);

    public ClickerController(ClickerService clickerService) {
        this.clickerService = clickerService;
    }

    @PostMapping("/save")
    public ResponseEntity<String> saveClickerData(@RequestBody SaveRequest body) {
        logger.info(body.getClicks().toString());
        logger.info(body.getNickname());
        return ResponseEntity.ok().body("ok");
    }
}
