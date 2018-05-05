package pl.coderslab.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.LocaleContextResolver;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import pl.coderslab.security.SecurityConfig;

import java.util.Locale;

import javax.persistence.EntityManagerFactory;
import javax.validation.Validator;

@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(basePackages = "pl.coderslab.repository")
@ComponentScan(basePackages = {"pl.coderslab"})
@Import(value = {SecurityConfig.class})
public class AppConfiguration {//extends WebMvcConfigurerAdapter {

  @Bean
  public LocalEntityManagerFactoryBean entityManagerFactory() {
    final LocalEntityManagerFactoryBean emfb = new LocalEntityManagerFactoryBean();
    emfb.setPersistenceUnitName("schoolPersistenceUnitH2");
    return emfb;
  }

  @Bean
  public JpaTransactionManager transactionManager(final EntityManagerFactory emf) {
    final JpaTransactionManager tm = new JpaTransactionManager(emf);
    return tm;
  }

  @Bean(name = "localeResolver")
  public LocaleContextResolver getLocaleContextResolver() {

    final SessionLocaleResolver localeResolver = new SessionLocaleResolver();
    localeResolver.setDefaultLocale(new Locale("pl", "PL"));

    return localeResolver;
  }

//	@Bean // (destroyMethod = "close")
//	public DataSource getDataSource() {
//		DriverManagerDataSource dataSource = new DriverManagerDataSource();
//		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
//		dataSource.setUrl("jdbc:mysql://localhost:3306/school");
//		dataSource.setUsername("root");
//		dataSource.setPassword("coderslab");
//		// try {
//		// dataSource.getConnection().commit();
//		// } catch (SQLException e) {
//		// // TODO Auto-generated catch block
//		// e.printStackTrace();
//		// }
//		return dataSource;
//	}

  // @EnableJpaRepositories(
  // basePackages = "org.baeldung.persistence.multiple.dao.user",
  // entityManagerFactoryRef = "userEntityManager",
  // transactionManagerRef = "userTransactionManager"
  // )

  @Bean
  public Validator validator() {
    return new LocalValidatorFactoryBean();
  }

//  @Override
//  public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
//    configurer.enable();
//  }
  // @Override
  // public void addFormatters(final FormatterRegistry registry) {
  // registry.addConverter(authorConverter());
  // }

  // @Bean
  // public AuthorConverter authorConverter() {
  // return new AuthorConverter();
  // }
}