// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.team02.entities;

import ee.itcollege.team02.entities.SEADUSE_PUNKT;
import java.lang.String;
import java.util.Date;
import java.util.Set;

privileged aspect SEADUS_Roo_JavaBean {
    
    public String SEADUS.getKood() {
        return this.kood;
    }
    
    public void SEADUS.setKood(String kood) {
        this.kood = kood;
    }
    
    public String SEADUS.getNimetus() {
        return this.nimetus;
    }
    
    public void SEADUS.setNimetus(String nimetus) {
        this.nimetus = nimetus;
    }
    
    public String SEADUS.getKehtiv_alates() {
        return this.kehtiv_alates;
    }
    
    public void SEADUS.setKehtiv_alates(String kehtiv_alates) {
        this.kehtiv_alates = kehtiv_alates;
    }
    
    public String SEADUS.getKehtiv_kuni() {
        return this.kehtiv_kuni;
    }
    
    public void SEADUS.setKehtiv_kuni(String kehtiv_kuni) {
        this.kehtiv_kuni = kehtiv_kuni;
    }
    
    public String SEADUS.getKommentaar() {
        return this.kommentaar;
    }
    
    public void SEADUS.setKommentaar(String kommentaar) {
        this.kommentaar = kommentaar;
    }
    
    public String SEADUS.getAvaja() {
        return this.avaja;
    }
    
    public void SEADUS.setAvaja(String avaja) {
        this.avaja = avaja;
    }
    
    public Date SEADUS.getAvatud() {
        return this.avatud;
    }
    
    public void SEADUS.setAvatud(Date avatud) {
        this.avatud = avatud;
    }
    
    public String SEADUS.getMuutja() {
        return this.muutja;
    }
    
    public void SEADUS.setMuutja(String muutja) {
        this.muutja = muutja;
    }
    
    public Date SEADUS.getMuudetud() {
        return this.muudetud;
    }
    
    public void SEADUS.setMuudetud(Date muudetud) {
        this.muudetud = muudetud;
    }
    
    public String SEADUS.getSulgeja() {
        return this.sulgeja;
    }
    
    public void SEADUS.setSulgeja(String sulgeja) {
        this.sulgeja = sulgeja;
    }
    
    public Date SEADUS.getSuletud() {
        return this.suletud;
    }
    
    public void SEADUS.setSuletud(Date suletud) {
        this.suletud = suletud;
    }
    
    public Set<SEADUSE_PUNKT> SEADUS.getSEADUSE_PUNKTs() {
        return this.SEADUSE_PUNKTs;
    }
    
    public void SEADUS.setSEADUSE_PUNKTs(Set<SEADUSE_PUNKT> SEADUSE_PUNKTs) {
        this.SEADUSE_PUNKTs = SEADUSE_PUNKTs;
    }
    
}
