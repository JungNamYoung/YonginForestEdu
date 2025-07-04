package app.init;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import app.config.AppConfig;
import cuda.web.util.TokenEx;
import cuda.web.util.Util;
import jakarta.servlet.MultipartConfigElement;
import jakarta.servlet.ServletRegistration;

public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { AppConfig.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

	@Override
	protected void customizeRegistration(ServletRegistration.Dynamic registration) {
		
		TokenEx tokenEx = new TokenEx(Util.dirClass("config/config.txt"));
		
		MultipartConfigElement multipartConfig = new MultipartConfigElement(tokenEx.get("upload.temp.dir"));
		
		registration.setMultipartConfig(multipartConfig);
	}
}