package ee.itcollege.team02.web;

import ee.itcollege.team02.entities.OBJEKT;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "objekts", formBackingObject = OBJEKT.class)
@RequestMapping("/objekts")
@Controller
public class OBJEKTController {
}
