// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.team02.entities;

import ee.itcollege.team02.entities.INTSIDENT;
import ee.itcollege.team02.entities.ISIKU_SEADUS_INTSIDENDIS;
import ee.itcollege.team02.entities.PIIRIRIKKUJA;
import java.lang.String;
import java.util.Date;
import java.util.Set;

privileged aspect ISIK_INTSIDENDIS_Roo_JavaBean {
    
    public PIIRIRIKKUJA ISIK_INTSIDENDIS.getPiiririkkuja() {
        return this.piiririkkuja;
    }
    
    public void ISIK_INTSIDENDIS.setPiiririkkuja(PIIRIRIKKUJA piiririkkuja) {
        this.piiririkkuja = piiririkkuja;
    }
    
    public INTSIDENT ISIK_INTSIDENDIS.getIntsident() {
        return this.intsident;
    }
    
    public void ISIK_INTSIDENDIS.setIntsident(INTSIDENT intsident) {
        this.intsident = intsident;
    }
    
    public Date ISIK_INTSIDENDIS.getAlates() {
        return this.alates;
    }
    
    public void ISIK_INTSIDENDIS.setAlates(Date alates) {
        this.alates = alates;
    }
    
    public Date ISIK_INTSIDENDIS.getKuni() {
        return this.kuni;
    }
    
    public void ISIK_INTSIDENDIS.setKuni(Date kuni) {
        this.kuni = kuni;
    }
    
    public String ISIK_INTSIDENDIS.getKirjeldus() {
        return this.kirjeldus;
    }
    
    public void ISIK_INTSIDENDIS.setKirjeldus(String kirjeldus) {
        this.kirjeldus = kirjeldus;
    }
    
    public String ISIK_INTSIDENDIS.getKommentaar() {
        return this.kommentaar;
    }
    
    public void ISIK_INTSIDENDIS.setKommentaar(String kommentaar) {
        this.kommentaar = kommentaar;
    }
    
    public String ISIK_INTSIDENDIS.getAvaja() {
        return this.avaja;
    }
    
    public void ISIK_INTSIDENDIS.setAvaja(String avaja) {
        this.avaja = avaja;
    }
    
    public Date ISIK_INTSIDENDIS.getAvatud() {
        return this.avatud;
    }
    
    public void ISIK_INTSIDENDIS.setAvatud(Date avatud) {
        this.avatud = avatud;
    }
    
    public String ISIK_INTSIDENDIS.getMuutja() {
        return this.muutja;
    }
    
    public void ISIK_INTSIDENDIS.setMuutja(String muutja) {
        this.muutja = muutja;
    }
    
    public Date ISIK_INTSIDENDIS.getMuudetud() {
        return this.muudetud;
    }
    
    public void ISIK_INTSIDENDIS.setMuudetud(Date muudetud) {
        this.muudetud = muudetud;
    }
    
    public String ISIK_INTSIDENDIS.getSulgeja() {
        return this.sulgeja;
    }
    
    public void ISIK_INTSIDENDIS.setSulgeja(String sulgeja) {
        this.sulgeja = sulgeja;
    }
    
    public Date ISIK_INTSIDENDIS.getSuletud() {
        return this.suletud;
    }
    
    public void ISIK_INTSIDENDIS.setSuletud(Date suletud) {
        this.suletud = suletud;
    }
    
    public Set<ISIKU_SEADUS_INTSIDENDIS> ISIK_INTSIDENDIS.getISIKU_SEADUS_INTSIDENDISs() {
        return this.ISIKU_SEADUS_INTSIDENDISs;
    }
    
    public void ISIK_INTSIDENDIS.setISIKU_SEADUS_INTSIDENDISs(Set<ISIKU_SEADUS_INTSIDENDIS> ISIKU_SEADUS_INTSIDENDISs) {
        this.ISIKU_SEADUS_INTSIDENDISs = ISIKU_SEADUS_INTSIDENDISs;
    }
    
}
