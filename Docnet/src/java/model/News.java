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
 * News generated by hbm2java
 */
@Entity
@Table(name="news"
    ,catalog="docnet"
)
public class News  implements java.io.Serializable {


     private Integer id;
     private String newstitle;
     private Date newsdate;
     private String newscontent;

    public News() {
    }

    public News(String newstitle, Date newsdate, String newscontent) {
       this.newstitle = newstitle;
       this.newsdate = newsdate;
       this.newscontent = newscontent;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="ID", nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    
    @Column(name="newstitle", nullable=false, length=250)
    public String getNewstitle() {
        return this.newstitle;
    }
    
    public void setNewstitle(String newstitle) {
        this.newstitle = newstitle;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="newsdate", nullable=false, length=10)
    public Date getNewsdate() {
        return this.newsdate;
    }
    
    public void setNewsdate(Date newsdate) {
        this.newsdate = newsdate;
    }

    
    @Column(name="newscontent", nullable=false, length=500)
    public String getNewscontent() {
        return this.newscontent;
    }
    
    public void setNewscontent(String newscontent) {
        this.newscontent = newscontent;
    }




}


