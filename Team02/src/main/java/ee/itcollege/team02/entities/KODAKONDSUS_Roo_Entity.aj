// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.team02.entities;

import ee.itcollege.team02.entities.KODAKONDSUS;
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

privileged aspect KODAKONDSUS_Roo_Entity {
    
    declare @type: KODAKONDSUS: @Entity;
    
    @PersistenceContext
    transient EntityManager KODAKONDSUS.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long KODAKONDSUS.id;
    
    @Version
    @Column(name = "version")
    private Integer KODAKONDSUS.version;
    
    public Long KODAKONDSUS.getId() {
        return this.id;
    }
    
    public void KODAKONDSUS.setId(Long id) {
        this.id = id;
    }
    
    public Integer KODAKONDSUS.getVersion() {
        return this.version;
    }
    
    public void KODAKONDSUS.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void KODAKONDSUS.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void KODAKONDSUS.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            KODAKONDSUS attached = KODAKONDSUS.findKODAKONDSUS(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void KODAKONDSUS.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void KODAKONDSUS.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public KODAKONDSUS KODAKONDSUS.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        KODAKONDSUS merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager KODAKONDSUS.entityManager() {
        EntityManager em = new KODAKONDSUS().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long KODAKONDSUS.countKODAKONDSUS() {
        return entityManager().createQuery("SELECT COUNT(o) FROM KODAKONDSUS o", Long.class).getSingleResult();
    }
    
    public static List<KODAKONDSUS> KODAKONDSUS.findAllKODAKONDSUS() {
        return entityManager().createQuery("SELECT o FROM KODAKONDSUS o", KODAKONDSUS.class).getResultList();
    }
    
    public static KODAKONDSUS KODAKONDSUS.findKODAKONDSUS(Long id) {
        if (id == null) return null;
        return entityManager().find(KODAKONDSUS.class, id);
    }
    
    public static List<KODAKONDSUS> KODAKONDSUS.findKODAKONDSUSEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM KODAKONDSUS o", KODAKONDSUS.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
