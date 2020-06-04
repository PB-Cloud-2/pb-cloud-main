package sunwell.permaisuri;


import java.nio.charset.StandardCharsets;





import java.text.SimpleDateFormat;
import java.util.Properties;
import java.util.concurrent.Executor;

import javax.jms.ConnectionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jms.DefaultJmsListenerContainerFactoryConfigurer;
import org.springframework.context.ApplicationContext;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.AdviceMode;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.Ordered;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.http.MediaType;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.jms.annotation.EnableJms;
import org.springframework.jms.config.DefaultJmsListenerContainerFactory;
import org.springframework.jms.config.JmsListenerContainerFactory;
import org.springframework.jms.support.converter.MappingJackson2MessageConverter;
import org.springframework.jms.support.converter.MessageConverter;
import org.springframework.jms.support.converter.MessageType;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.scheduling.TaskScheduler;
import org.springframework.scheduling.annotation.AsyncConfigurer;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.SchedulingConfigurer;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;
import org.springframework.scheduling.config.ScheduledTaskRegistrar;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.validation.beanvalidation.MethodValidationPostProcessor;
import org.springframework.validation.beanvalidation.SpringValidatorAdapter;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

import sunwell.permaisuri.bus.service.ProductService;
import sunwell.permaisuri.bus.service.ProductSvc;
import sunwell.permaisuri.ws.service.TestService;
import sunwell.permaisuri.ws.service.TestSvc;

@SpringBootApplication
@EnableJms
@EnableScheduling
@EnableAsync(
      mode = AdviceMode.PROXY,  proxyTargetClass = false,
      order = Ordered
      .HIGHEST_PRECEDENCE
)
@EnableTransactionManagement(
      mode = AdviceMode.PROXY,  proxyTargetClass = false,
      order = Ordered.LOWEST_PRECEDENCE
)
//@EnableJpaRepositories(
//      basePackages = "sunwell.permaisuri.bus.repository",
//      entityManagerFactoryRef = "entityManagerFactoryBean",
//      transactionManagerRef = "jpaTransactionManager"
//)
public class Application extends WebMvcConfigurerAdapter implements AsyncConfigurer, SchedulingConfigurer 
{
//	@Autowired
//	ProductService testSvc;
	
//	@Autowired
//	TestService testSvc;
	
    @Autowired 
    SpringValidatorAdapter validator;

	
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
	
	private static final String SERVER_EMAIL = "susantobenny50@gmail.com";
	private static final String SERVER_EMAIL_PASSWORD = "onenandonly";
//	
////	@Autowired
////	private org.springframework.context.ApplicationContext context;
//
//	public static void main(String[] args) {
//		SpringApplication.run(Application.class, args);
//	}
	
	
//	
	@Bean
	public Jackson2ObjectMapperBuilder objectMapperBuilder() {
		System.out.println("OBJECT MAPPER CALLED");
	    return new Jackson2ObjectMapperBuilder() {

			@Override
			public void configure (ObjectMapper objectMapper)
			{
				super.configure(objectMapper);
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				objectMapper.setDateFormat(sdf);
				objectMapper.setSerializationInclusion(Include.NON_NULL);
				objectMapper.enable(SerializationFeature.INDENT_OUTPUT);
				objectMapper.setVisibilityChecker(objectMapper.getSerializationConfig().getDefaultVisibilityChecker()
						.withFieldVisibility(JsonAutoDetect.Visibility.ANY)
						.withGetterVisibility(JsonAutoDetect.Visibility.NONE)
						.withSetterVisibility(JsonAutoDetect.Visibility.NONE));
			}

	    };
	}
//	
	@Bean
	public MessageSource messageSource ()
	{
		ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
		messageSource.setCacheSeconds(-1);
		messageSource.setDefaultEncoding(StandardCharsets.UTF_8.name());
		messageSource.setBasenames("/WEB-INF/i18n/titles", "/WEB-INF/i18n/messages", "/WEB-INF/i18n/errors",
				"/WEB-INF/i18n/validation");
		return messageSource;
	}
//
	@Bean
	public LocalValidatorFactoryBean localValidatorFactoryBean ()
	{
		LocalValidatorFactoryBean validator = new LocalValidatorFactoryBean();
		validator.setValidationMessageSource(this.messageSource());
		return validator;
	}

	@Bean
	public MethodValidationPostProcessor methodValidationPostProcessor ()
	{
		MethodValidationPostProcessor processor = new MethodValidationPostProcessor();
		processor.setValidator(this.localValidatorFactoryBean());
		return processor;
	}
	
	@Override
	public void configureContentNegotiation (ContentNegotiationConfigurer configurer)
	{
		configurer.favorPathExtension(false).favorParameter(false).ignoreAcceptHeader(false)
				.defaultContentType(MediaType.APPLICATION_JSON);
	}
//	
//	
//
	@Bean
	public JavaMailSender mailSender ()
	{
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		mailSender.setHost("smtp.gmail.com");
		mailSender.setPort(587);

		mailSender.setUsername(SERVER_EMAIL);
		mailSender.setPassword(SERVER_EMAIL_PASSWORD);

		Properties props = mailSender.getJavaMailProperties();
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.debug", "true");
		return mailSender;
	}
	
	@Bean
	public LocaleResolver localeResolver ()
	{
		return new SessionLocaleResolver();
	}
	
	@Bean
	public ThreadPoolTaskScheduler taskScheduler ()
	{
//		log.info("Setting up thread pool task scheduler with 20 threads.");
		ThreadPoolTaskScheduler scheduler = new ThreadPoolTaskScheduler();
		scheduler.setPoolSize(20);
		scheduler.setThreadNamePrefix("task-");
		scheduler.setAwaitTerminationSeconds(60);
		scheduler.setWaitForTasksToCompleteOnShutdown(true);
//		scheduler.setErrorHandler(t -> schedulingLogger.error("Unknown error occurred while executing task.", t));
//		scheduler.setRejectedExecutionHandler(
//				(r, e) -> schedulingLogger.error("Execution of task {} was rejected for unknown reasons.", r));
		return scheduler;
	}
	
	// Only required due to defining myFactory in the receiver
//	  @Bean
//	  public JmsListenerContainerFactory<?> myFactory(
//	      ConnectionFactory connectionFactory,
//	      DefaultJmsListenerContainerFactoryConfigurer configurer) {
//	    DefaultJmsListenerContainerFactory factory = new DefaultJmsListenerContainerFactory();
//	    configurer.configure(factory, connectionFactory);
//	    return factory;
//	  }
	  // Serialize message content to json using TextMessage
//	  @Bean
//	  public MessageConverter jacksonJmsMessageConverter(ObjectMapper _objectMapper) {
//	    MappingJackson2MessageConverter converter = new MappingJackson2MessageConverter();
//	    converter.setTargetType(MessageType.TEXT);
//	    converter.setTypeIdPropertyName("_type");
//	    converter.setObjectMapper(_objectMapper);
//	    return converter;
//	  }

	
	@Override
	public Validator getValidator() {
		return validator;
	}

	

	@Override
	public Executor getAsyncExecutor ()
	{
		Executor executor = this.taskScheduler();
		// log.info("Configuring asynchronous method executor {}.", executor);
		return executor;
	}

	@Override
	public void configureTasks (ScheduledTaskRegistrar registrar)
	{
		TaskScheduler scheduler = this.taskScheduler();
//		log.info("Configuring scheduled method executor {}.", scheduler);
		registrar.setTaskScheduler(scheduler);
	}
	
}
