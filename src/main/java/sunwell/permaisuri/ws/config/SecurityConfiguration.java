package sunwell.permaisuri.ws.config;

import java.security.MessageDigest;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.provider.error.OAuth2AccessDeniedHandler;

@Profile("!testing")
@Configuration
//@EnableWebMvcSecurity
@Order(1)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter
{
	
	@Autowired
	DataSource dataSource;
	
	@Bean
    public AuthenticationManager authenticationManagerBean()
      throws Exception {
        return super.authenticationManagerBean();
    }
	
    @Override
    protected void configure(AuthenticationManagerBuilder builder)
            throws Exception
    {
        builder
//		        .inMemoryAuthentication()
//		        .withUser("Kong").password("12345").roles("USER");
		        .jdbcAuthentication()
		        .dataSource(this.dataSource)
		        
		        .usersByUsernameQuery
		        ("SELECT username, pwd, true FROM usercredential WHERE username = ?") 
		        
		        .authoritiesByUsernameQuery
		        ("SELECT U.username, C.type FROM usercredential U inner join contact C on (C.usercred_id=U.systemid) "
		        		+ "WHERE username = ?")
		        
//		        .passwordEncoder(new Md5PasswordEncoder() {
//		        	@Override
//		        	public String encodePassword(String rawPass, Object salt) {
//		        		// TODO Auto-generated method stub
//		        		String s = super.encodePassword(rawPass, salt);
//		        		System.out.println("RAW: " + rawPass + " Encoded: " + s);
//		        		System.out.println("IS EQUAL: " + 
//				        		s.equals("827ccb0eea8a706c4c34a16891f84e7b"));
//		        		return "827ccb0eea8a706c4c34a16891f84e7b";
//		        	}
//		        });
		        .passwordEncoder(new BCryptPasswordEncoder());
    }

    @Override
    public void configure(WebSecurity security)
    {
//        security.ignoring().antMatchers("/resource/**");
    }

    @Override
    protected void configure(HttpSecurity security) throws Exception
    {
        security
        		.requestMatchers().antMatchers("/*")
        		.and()
                .authorizeRequests()
//                	.antMatchers("/oauth/token").denyAll()
                    .antMatchers("/", "/test", "/application.properties.disabled").permitAll()
//                    .antMatchers("/secure/**").hasAuthority("USER")
//                    .antMatchers("/admin/**").hasAuthority("ADMIN")
                    .anyRequest().authenticated()
//                .and().formLogin()
//                    .loginPage("/log")
//                    .defaultSuccessUrl("/welcome/")
//                    .failureUrl("/login?error")
//                    .usernameParameter("username")
//                    .passwordParameter("password")
//                    .permitAll()
                .and().logout()
                    .logoutUrl("/logout").logoutSuccessUrl("/login?loggedOut")
                    .invalidateHttpSession(true).deleteCookies("JSESSIONID")
                    .permitAll()
                .and().sessionManagement()
                    .sessionFixation().changeSessionId()
                    .maximumSessions(1).maxSessionsPreventsLogin(true)
                .and().and().csrf().disable();
        		
    }
}
