package fae.engine.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

  @Value("${external.resource.path:classpath:/static}")
  private String externalResourcePath;
 
  @Override
  public void addResourceHandlers(final ResourceHandlerRegistry registry) {
    registry
      .addResourceHandler("/public/**")
      .addResourceLocations(externalResourcePath)
      .setCachePeriod(0);
  }
}
