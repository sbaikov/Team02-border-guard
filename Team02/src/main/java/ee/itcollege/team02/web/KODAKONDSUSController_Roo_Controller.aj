// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.team02.web;

import ee.itcollege.team02.entities.KODAKONDSUS;
import ee.itcollege.team02.entities.PIIRIRIKKUJA;
import ee.itcollege.team02.entities.RIIK;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect KODAKONDSUSController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String KODAKONDSUSController.create(@Valid KODAKONDSUS KODAKONDSUS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("KODAKONDSUS", KODAKONDSUS);
            addDateTimeFormatPatterns(uiModel);
            return "kodakondsus/create";
        }
        uiModel.asMap().clear();
        KODAKONDSUS.persist();
        return "redirect:/kodakondsus/" + encodeUrlPathSegment(KODAKONDSUS.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String KODAKONDSUSController.createForm(Model uiModel) {
        uiModel.addAttribute("KODAKONDSUS", new KODAKONDSUS());
        addDateTimeFormatPatterns(uiModel);
        return "kodakondsus/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String KODAKONDSUSController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("kodakondsus", KODAKONDSUS.findKODAKONDSUS(id));
        uiModel.addAttribute("itemId", id);
        return "kodakondsus/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String KODAKONDSUSController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("kodakondsus", KODAKONDSUS.findKODAKONDSUSEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) KODAKONDSUS.countKODAKONDSUS() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("kodakondsus", KODAKONDSUS.findAllKODAKONDSUS());
        }
        addDateTimeFormatPatterns(uiModel);
        return "kodakondsus/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String KODAKONDSUSController.update(@Valid KODAKONDSUS KODAKONDSUS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("KODAKONDSUS", KODAKONDSUS);
            addDateTimeFormatPatterns(uiModel);
            return "kodakondsus/update";
        }
        uiModel.asMap().clear();
        KODAKONDSUS.merge();
        return "redirect:/kodakondsus/" + encodeUrlPathSegment(KODAKONDSUS.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String KODAKONDSUSController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("KODAKONDSUS", KODAKONDSUS.findKODAKONDSUS(id));
        addDateTimeFormatPatterns(uiModel);
        return "kodakondsus/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String KODAKONDSUSController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        KODAKONDSUS.findKODAKONDSUS(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/kodakondsus";
    }
    
    @ModelAttribute("kodakondsus")
    public Collection<KODAKONDSUS> KODAKONDSUSController.populateKODAKONDSUS() {
        return KODAKONDSUS.findAllKODAKONDSUS();
    }
    
    @ModelAttribute("piiririkkujas")
    public Collection<PIIRIRIKKUJA> KODAKONDSUSController.populatePIIRIRIKKUJAS() {
        return PIIRIRIKKUJA.findAllPIIRIRIKKUJAS();
    }
    
    @ModelAttribute("riiks")
    public Collection<RIIK> KODAKONDSUSController.populateRIIKS() {
        return RIIK.findAllRIIKS();
    }
    
    void KODAKONDSUSController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("KODAKONDSUS_alates_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("KODAKONDSUS_kuni_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("KODAKONDSUS_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("KODAKONDSUS_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("KODAKONDSUS_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String KODAKONDSUSController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
