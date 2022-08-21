package uca.ungallocontenis.kenkougymapi.config.KenkouGymApp;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@ConfigurationProperties(prefix = "kenkougymapp.info")
@Configuration(value = "KenkouGymAppInfo", proxyBeanMethods = false)
public class KenkouGymAppInfo {
    
    private String name;
    private String secret;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSecret() {
        return secret;
    }

    public void setSecret(String secret) {
        this.secret = secret;
    }
}
