package pl.coderslab.web;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.ResourceBundleViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "pl.coderslab.web.controller")
public class WebConfig {

  @Bean
  @Order(0)
  public ViewResolver viewResolver() {
    final InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
    viewResolver.setViewClass(JstlView.class);
    viewResolver.setPrefix("/WEB-INF/views/");
    viewResolver.setSuffix(".jsp");
    // viewResolver.setOrder(0);
    return viewResolver;
  }

  @Bean
  @Order(1)
  public ViewResolver resourceBundleViewResolver() {
    ResourceBundleViewResolver bean = new ResourceBundleViewResolver();
    bean.setBasename("views");
    // bean.setOrder(1);
    return bean;
  }

}