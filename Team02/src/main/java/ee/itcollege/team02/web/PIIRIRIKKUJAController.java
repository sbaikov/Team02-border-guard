package ee.itcollege.team02.web;

import ee.itcollege.team02.entities.PIIRIRIKKUJA;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "piiririkkujas", formBackingObject = PIIRIRIKKUJA.class)
@RequestMapping("/piiririkkujas")
@Controller
public class PIIRIRIKKUJAController {
}
