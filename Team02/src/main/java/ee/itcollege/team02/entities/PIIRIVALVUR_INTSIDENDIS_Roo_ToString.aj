// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.team02.entities;

import java.lang.String;

privileged aspect PIIRIVALVUR_INTSIDENDIS_Roo_ToString {
    
    public String PIIRIVALVUR_INTSIDENDIS.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Alates: ").append(getAlates()).append(", ");
        sb.append("Avaja: ").append(getAvaja()).append(", ");
        sb.append("Avatud: ").append(getAvatud()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Intsident: ").append(getIntsident()).append(", ");
        sb.append("Kirjeldus: ").append(getKirjeldus()).append(", ");
        sb.append("Kommentaar: ").append(getKommentaar()).append(", ");
        sb.append("Kuni: ").append(getKuni()).append(", ");
        sb.append("Muudetud: ").append(getMuudetud()).append(", ");
        sb.append("Muutja: ").append(getMuutja()).append(", ");
        sb.append("Piirivalvur: ").append(getPiirivalvur()).append(", ");
        sb.append("Piirivalvur_intsidendis_ID: ").append(getPiirivalvur_intsidendis_ID()).append(", ");
        sb.append("Suletud: ").append(getSuletud()).append(", ");
        sb.append("Sulgeja: ").append(getSulgeja()).append(", ");
        sb.append("Vahtkond_intsidendis: ").append(getVahtkond_intsidendis()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
