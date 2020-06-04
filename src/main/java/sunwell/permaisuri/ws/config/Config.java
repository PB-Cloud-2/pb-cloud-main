//package sunwell.permaisuri.ws.config;
//
//import java.nio.charset.StandardCharsets;
//import java.text.SimpleDateFormat;
//
//import org.springframework.context.MessageSource;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.support.ReloadableResourceBundleMessageSource;
//import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
//import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
//import org.springframework.validation.beanvalidation.MethodValidationPostProcessor;
//
//import com.fasterxml.jackson.annotation.JsonInclude.Include;
//import com.fasterxml.jackson.annotation.JsonAutoDetect;
//import com.fasterxml.jackson.databind.ObjectMapper;
//import com.fasterxml.jackson.databind.SerializationFeature;
//
//@Configuration
//public class Config
//{
//	@Bean
//	public Jackson2ObjectMapperBuilder objectMapperBuilder() {
//	    return new Jackson2ObjectMapperBuilder() {
//
//			@Override
//			public void configure (ObjectMapper objectMapper)
//			{
//				super.configure(objectMapper);
//				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//				objectMapper.setDateFormat(sdf);
//				objectMapper.setSerializationInclusion(Include.NON_NULL);
//				objectMapper.enable(SerializationFeature.INDENT_OUTPUT);
//				objectMapper.setVisibilityChecker(objectMapper.getSerializationConfig().getDefaultVisibilityChecker()
//						.withFieldVisibility(JsonAutoDetect.Visibility.ANY)
//						.withGetterVisibility(JsonAutoDetect.Visibility.NONE)
//						.withSetterVisibility(JsonAutoDetect.Visibility.NONE));
//			}
//
//	    };
//	}
//	
//	@Bean
//	public MessageSource messageSource ()
//	{
//		ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
//		messageSource.setCacheSeconds(-1);
//		messageSource.setDefaultEncoding(StandardCharsets.UTF_8.name());
//		messageSource.setBasenames("/WEB-INF/i18n/titles", "/WEB-INF/i18n/messages", "/WEB-INF/i18n/errors",
//				"/WEB-INF/i18n/validation");
//		return messageSource;
//	}
//
//	@Bean
//	public LocalValidatorFactoryBean localValidatorFactoryBean ()
//	{
//		LocalValidatorFactoryBean validator = new LocalValidatorFactoryBean();
//		validator.setValidationMessageSource(this.messageSource());
//		return validator;
//	}
//
//	@Bean
//	public MethodValidationPostProcessor methodValidationPostProcessor ()
//	{
//		MethodValidationPostProcessor processor = new MethodValidationPostProcessor();
//		processor.setValidator(this.localValidatorFactoryBean());
//		return processor;
//	}
//	
//}
