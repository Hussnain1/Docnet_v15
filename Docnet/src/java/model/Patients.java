package model;
// Generated May 13, 2015 2:35:10 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Patients generated by hbm2java
 */
@Entity
@Table(name="patients"
    ,catalog="docnet"
)
public class Patients  implements java.io.Serializable {


     private long pid;
     private String name;
     private String address;
     private String image;
     private long phoneNumber;
     private String email;
     private String bio;
     private int age;
     private String bloodGroup;
     private long emergencyContact;

    public Patients() {
    }

	
    public Patients(long pid, String name, String address, long phoneNumber, String email, int age, String bloodGroup, long emergencyContact) {
        this.pid = pid;
        this.name = name;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.age = age;
        this.bloodGroup = bloodGroup;
        this.emergencyContact = emergencyContact;
    }
    public Patients(long pid, String name, String address, String image, long phoneNumber, String email, String bio, int age, String bloodGroup, long emergencyContact) {
       this.pid = pid;
       this.name = name;
       this.address = address;
       this.image = image;
       this.phoneNumber = phoneNumber;
       this.email = email;
       this.bio = bio;
       this.age = age;
       this.bloodGroup = bloodGroup;
       this.emergencyContact = emergencyContact;
    }
   
     @Id 

    
    @Column(name="pid", nullable=false)
    public long getPid() {
        return this.pid;
    }
    
    public void setPid(long pid) {
        this.pid = pid;
    }

    
    @Column(name="Name", nullable=false, length=45)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    
    @Column(name="Address", nullable=false, length=45)
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    
    @Column(name="Image", length=45)
    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }

    
    @Column(name="PhoneNumber", nullable=false)
    public long getPhoneNumber() {
        return this.phoneNumber;
    }
    
    public void setPhoneNumber(long phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    
    @Column(name="Email", nullable=false, length=45)
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    
    @Column(name="Bio", length=100)
    public String getBio() {
        return this.bio;
    }
    
    public void setBio(String bio) {
        this.bio = bio;
    }

    
    @Column(name="Age", nullable=false)
    public int getAge() {
        return this.age;
    }
    
    public void setAge(int age) {
        this.age = age;
    }

    
    @Column(name="BloodGroup", nullable=false, length=2)
    public String getBloodGroup() {
        return this.bloodGroup;
    }
    
    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    
    @Column(name="EmergencyContact", nullable=false)
    public long getEmergencyContact() {
        return this.emergencyContact;
    }
    
    public void setEmergencyContact(long emergencyContact) {
        this.emergencyContact = emergencyContact;
    }




}

