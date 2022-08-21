package uca.ungallocontenis.kenkougymapi.repository.KenkouUser;

import org.springframework.data.jpa.repository.JpaRepository;

import uca.ungallocontenis.kenkougymapi.entity.KenkouUser.KenkouUser;

public interface KenkouUserRepository extends JpaRepository<KenkouUser, String> {
    public KenkouUser findByUsername(String username);
    public KenkouUser findByUsernameOrEmail(String username, String email);
}
