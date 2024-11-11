package fae.engine;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class FaeServerApp {

  private final HttpServletRequest request;

  public FaeServerApp(HttpServletRequest request) {
    this.request = request;
  }

  @GetMapping("/{page}")
   public String renderPage(@PathVariable("page") String page, Model model) {
        if (page == null || page.isEmpty()) {
            return "error";
        }
        model.addAttribute("page", page);
        model.addAttribute("contextPath", request.getContextPath());

        return page;
    } 
}
