package model;
// Generated May 13, 2015 2:35:10 PM by Hibernate Tools 4.3.1


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Images generated by hbm2java
 */
@Entity
@Table(name="images"
    ,catalog="docnet"
)
public class Images  implements java.io.Serializable {


     private Integer id;
     private String imagename;
     private String imagepath;
     private Date date;

    public Images() {
    }

    public Images(String imagename, String imagepath, Date date) {
       this.imagename = imagename;
       this.imagepath = imagepath;
       this.date = date;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="ID", nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    
    @Column(name="imagename", nullable=false, length=250)
    public String getImagename() {
        return this.imagename;
    }
    
    public void setImagename(String imagename) {
        this.imagename = imagename;
    }

    
    @Column(name="imagepath", nullable=false, length=250)
    public String getImagepath() {
        return this.imagepath;
    }
    
    public void setImagepath(String imagepath) {
        this.imagepath = imagepath;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="date", nullable=false, length=10)
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }




}


