package hello;

import hello.model.Goal;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class HelloController {
    @Value("${welcome.message:test}")
    private String message = "Hello World";

    @GetMapping("/")
    public String welcome(Map<String, Object> model) {
        model.put("period", 30);
        return "welcome";
    }

    @PostMapping("/")
    public String welcome(@ModelAttribute Goal goal, Map<String, Object> model) {
        model.put("period", 30);
        System.out.println(goal.toString());
        return "welcome";
    }

}