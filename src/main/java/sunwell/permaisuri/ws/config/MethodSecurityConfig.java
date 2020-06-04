//package sunwell.permaisuri.ws.config;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.autoconfigure.security.oauth2.method.OAuth2MethodSecurityConfiguration;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.Profile;
//import org.springframework.security.access.expression.method.MethodSecurityExpressionHandler;
//import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
//import org.springframework.security.config.annotation.method.configuration.GlobalMethodSecurityConfiguration;
//import org.springframework.security.oauth2.provider.expression.OAuth2MethodSecurityExpressionHandler;
//
//@Profile("!Testing")
//@Configuration
//@EnableGlobalMethodSecurity(prePostEnabled = true, proxyTargetClass = false, order = 0)
//public class MethodSecurityConfig extends GlobalMethodSecurityConfiguration {
//    
//	@Autowired
//    private OAuth2MethodSecurityConfiguration securityConfig;
// 
//    @Override
//    protected MethodSecurityExpressionHandler createExpressionHandler() {
//        return new OAuth2MethodSecurityExpressionHandler();
//    }
//}
