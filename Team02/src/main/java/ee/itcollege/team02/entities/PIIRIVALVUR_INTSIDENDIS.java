package ee.itcollege.team02.entities;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import ee.itcollege.team02.entities.INTSIDENT;
import javax.persistence.ManyToOne;
import ee.itcollege.team02.entities.PIIRIVALVUR;
import ee.itcollege.team02.entities.VAHTKOND_INTSIDENDIS;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class PIIRIVALVUR_INTSIDENDIS {

    @NotNull
    private Integer piirivalvur_intsidendis_ID;

    @ManyToOne
    private INTSIDENT intsident;

    @ManyToOne
    private PIIRIVALVUR piirivalvur;

    @NotNull
    @ManyToOne
    private VAHTKOND_INTSIDENDIS vahtkond_intsidendis;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date alates;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date kuni;

    @NotNull
    private String kirjeldus;

    private String kommentaar;

    @NotNull
    @Size(max = 32)
    private String avaja;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date avatud;

    @NotNull
    @Size(max = 32)
    private String muutja;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date muudetud;

    @NotNull
    @Size(max = 32)
    private String sulgeja;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date suletud;
}
