//package sunwell.permaisuri.config;
//
//import java.util.Hashtable;
//import java.util.Map;
//
//import javax.persistence.SharedCacheMode;
//import javax.persistence.ValidationMode;
//import javax.sql.DataSource;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.AdviceMode;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.Profile;
//import org.springframework.core.Ordered;
//import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
//import org.springframework.orm.jpa.JpaTransactionManager;
//import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
//import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
//import org.springframework.scheduling.annotation.EnableAsync;
//import org.springframework.scheduling.annotation.EnableScheduling;
//import org.springframework.transaction.PlatformTransactionManager;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//
//@Profile("production")
//@Configuration
//@ComponentScan(basePackages= 
//	{"sunwell.permaisuri.ws", "sunwell.permaisuri.bus", "sunwell.permaisuri.core"}
//)
//@EnableScheduling
//@EnableAsync(
//      mode = AdviceMode.PROXY,  proxyTargetClass = false,
//      order = Ordered
//      .HIGHEST_PRECEDENCE
//)
//@EnableTransactionManagement(
//      mode = AdviceMode.PROXY,  proxyTargetClass = false,
//      order = Ordered.LOWEST_PRECEDENCE
//)
//@EnableJpaRepositories(
//      basePackages = {"sunwell.permaisuri.bus.repository"},
//      entityManagerFactoryRef = "entityManagerFactoryBean",
//      transactionManagerRef = "jpaTransactionManager"
//)
//public class ProdConfig {
//	
//	@Autowired
//	DataSource datasource ;
//	
//	@Bean
//    public LocalContainerEntityManagerFactoryBean entityManagerFactoryBean()
//    {
//        Map<String, Object> properties = new Hashtable<>();
//        properties.put("javax.persistence.schema-generation.database.action",
//                "none");
//
//        HibernateJpaVendorAdapter adapter = new HibernateJpaVendorAdapter();
//        adapter.setDatabasePlatform("org.hibernate.dialect.PostgreSQL82Dialect");
//
//        LocalContainerEntityManagerFactoryBean factory =
//                new LocalContainerEntityManagerFactoryBean();
//        factory.setJpaVendorAdapter(adapter);
//        factory.setDataSource(datasource);
//        factory.setPackagesToScan("sunwell.permaisuri.core.entity");
//        factory.setSharedCacheMode(SharedCacheMode.ENABLE_SELECTIVE);
//        factory.setValidationMode(ValidationMode.NONE);
//        factory.setJpaPropertyMap(properties);
//        return factory;
//    }
//	
//	@Bean
//    public PlatformTransactionManager jpaTransactionManager()
//    {
//        return new JpaTransactionManager(
//                this.entityManagerFactoryBean().getObject()
//        );
//    }
//
//}
