package ee.itcollege.team02.web;

import ee.itcollege.team02.entities.PIIRIVALVUR_INTSIDENDIS;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "piirivalvur_intsidendiss", formBackingObject = PIIRIVALVUR_INTSIDENDIS.class)
@RequestMapping("/piirivalvur_intsidendiss")
@Controller
public class PIIRIVALVUR_INTSIDENDISController {
}
