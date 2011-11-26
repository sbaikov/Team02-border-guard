// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.team02.entities;

import ee.itcollege.team02.entities.PIIRIVALVUR_INTSIDENDIS;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PIIRIVALVUR_INTSIDENDIS_Roo_Entity {
    
    declare @type: PIIRIVALVUR_INTSIDENDIS: @Entity;
    
    @PersistenceContext
    transient EntityManager PIIRIVALVUR_INTSIDENDIS.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long PIIRIVALVUR_INTSIDENDIS.id;
    
    @Version
    @Column(name = "version")
    private Integer PIIRIVALVUR_INTSIDENDIS.version;
    
    public Long PIIRIVALVUR_INTSIDENDIS.getId() {
        return this.id;
    }
    
    public void PIIRIVALVUR_INTSIDENDIS.setId(Long id) {
        this.id = id;
    }
    
    public Integer PIIRIVALVUR_INTSIDENDIS.getVersion() {
        return this.version;
    }
    
    public void PIIRIVALVUR_INTSIDENDIS.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void PIIRIVALVUR_INTSIDENDIS.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PIIRIVALVUR_INTSIDENDIS.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PIIRIVALVUR_INTSIDENDIS attached = PIIRIVALVUR_INTSIDENDIS.findPIIRIVALVUR_INTSIDENDIS(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PIIRIVALVUR_INTSIDENDIS.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PIIRIVALVUR_INTSIDENDIS.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PIIRIVALVUR_INTSIDENDIS PIIRIVALVUR_INTSIDENDIS.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PIIRIVALVUR_INTSIDENDIS merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager PIIRIVALVUR_INTSIDENDIS.entityManager() {
        EntityManager em = new PIIRIVALVUR_INTSIDENDIS().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PIIRIVALVUR_INTSIDENDIS.countPIIRIVALVUR_INTSIDENDISs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PIIRIVALVUR_INTSIDENDIS o", Long.class).getSingleResult();
    }
    
    public static List<PIIRIVALVUR_INTSIDENDIS> PIIRIVALVUR_INTSIDENDIS.findAllPIIRIVALVUR_INTSIDENDISs() {
        return entityManager().createQuery("SELECT o FROM PIIRIVALVUR_INTSIDENDIS o", PIIRIVALVUR_INTSIDENDIS.class).getResultList();
    }
    
    public static PIIRIVALVUR_INTSIDENDIS PIIRIVALVUR_INTSIDENDIS.findPIIRIVALVUR_INTSIDENDIS(Long id) {
        if (id == null) return null;
        return entityManager().find(PIIRIVALVUR_INTSIDENDIS.class, id);
    }
    
    public static List<PIIRIVALVUR_INTSIDENDIS> PIIRIVALVUR_INTSIDENDIS.findPIIRIVALVUR_INTSIDENDISEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PIIRIVALVUR_INTSIDENDIS o", PIIRIVALVUR_INTSIDENDIS.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
