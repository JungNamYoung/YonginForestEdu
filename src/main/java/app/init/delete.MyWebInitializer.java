package app.init;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import app.config.AppConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//public class MyWebInitializer implements WebApplicationInitializer {
//
//  private static final Logger logger = LoggerFactory.getLogger(MyWebInitializer.class);
//  
//  @Override
//  public void onStartup(ServletContext servletContext) throws ServletException {
//    logger.info("Initializing web application");
//    AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
//    context.register(AppConfig.class);
//
//    DispatcherServlet dispatcherServlet = new DispatcherServlet(context);
//
//    ServletRegistration.Dynamic registration = servletContext.addServlet("dispatcher", dispatcherServlet);
//    registration.setLoadOnStartup(1);
//    registration.addMapping("/");
//    
//    logger.info("Web application initialization completed");
//
//  }
//}