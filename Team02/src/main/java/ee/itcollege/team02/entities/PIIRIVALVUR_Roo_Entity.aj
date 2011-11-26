// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.team02.entities;

import ee.itcollege.team02.entities.PIIRIVALVUR;
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

privileged aspect PIIRIVALVUR_Roo_Entity {
    
    declare @type: PIIRIVALVUR: @Entity;
    
    @PersistenceContext
    transient EntityManager PIIRIVALVUR.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long PIIRIVALVUR.id;
    
    @Version
    @Column(name = "version")
    private Integer PIIRIVALVUR.version;
    
    public Long PIIRIVALVUR.getId() {
        return this.id;
    }
    
    public void PIIRIVALVUR.setId(Long id) {
        this.id = id;
    }
    
    public Integer PIIRIVALVUR.getVersion() {
        return this.version;
    }
    
    public void PIIRIVALVUR.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void PIIRIVALVUR.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PIIRIVALVUR.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PIIRIVALVUR attached = PIIRIVALVUR.findPIIRIVALVUR(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PIIRIVALVUR.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PIIRIVALVUR.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PIIRIVALVUR PIIRIVALVUR.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PIIRIVALVUR merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager PIIRIVALVUR.entityManager() {
        EntityManager em = new PIIRIVALVUR().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PIIRIVALVUR.countPIIRIVALVURS() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PIIRIVALVUR o", Long.class).getSingleResult();
    }
    
    public static List<PIIRIVALVUR> PIIRIVALVUR.findAllPIIRIVALVURS() {
        return entityManager().createQuery("SELECT o FROM PIIRIVALVUR o", PIIRIVALVUR.class).getResultList();
    }
    
    public static PIIRIVALVUR PIIRIVALVUR.findPIIRIVALVUR(Long id) {
        if (id == null) return null;
        return entityManager().find(PIIRIVALVUR.class, id);
    }
    
    public static List<PIIRIVALVUR> PIIRIVALVUR.findPIIRIVALVUREntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PIIRIVALVUR o", PIIRIVALVUR.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
