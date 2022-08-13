package uca.ungallocontenis.kenkougymapi.entity.KenkouUser;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity(name = "KenkouUser")
@Table(name = "kenkou_user")
public class KenkouUser {
    
    @Id
    private String username;
    private String email;
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastname;
    private boolean enabled;
    private String password;
    @ManyToMany
    @JoinTable(name = "user_role", joinColumns = {@JoinColumn(name = "username", referencedColumnName = "username")}, inverseJoinColumns = {@JoinColumn(name = "role_code", referencedColumnName = "role_code")})
    private List<KenkouRole> usersRoles;
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<KenkouRole> getUsersRoles() {
        return usersRoles;
    }

    public void setUsersRoles(List<KenkouRole> usersRoles) {
        this.usersRoles = usersRoles;
    }
}
