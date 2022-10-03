package com.yuanlrc.movie.config.home;
/**
 * 用来配置前台拦截器的配置类
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.yuanlrc.movie.constant.RuntimeConstant;
import com.yuanlrc.movie.interceptor.home.Gloablinterceptor;
import com.yuanlrc.movie.interceptor.home.HomeLoginInterceptor;
@Configuration
public class HomeWebConfig implements WebMvcConfigurer {
	
	@Autowired
	private HomeLoginInterceptor homeLoginInterceptor;
	
	@Autowired
	private Gloablinterceptor gloablinterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
	    registry.addInterceptor(homeLoginInterceptor).addPathPatterns("/**").excludePathPatterns(RuntimeConstant.homeLoginExcludePathPatterns);
	    registry.addInterceptor(gloablinterceptor).addPathPatterns("/**").excludePathPatterns(RuntimeConstant.homeGloablExcludePathPatterns);
	}

}
