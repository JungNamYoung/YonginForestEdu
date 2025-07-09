package app.init;

import java.io.File;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import adminforest.define.AdminForest;
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

		TokenEx tokenEx = new TokenEx(Util.dirResources(AdminForest.CONFIG_TXT));

		String dir = tokenEx.get(AdminForest.UPLOAD_DIR);

		File file = new File(dir);

		if (file.exists() == false) {
			file.mkdirs();
		}

		MultipartConfigElement multipartConfig = new MultipartConfigElement(dir);

		registration.setMultipartConfig(multipartConfig);
	}
}