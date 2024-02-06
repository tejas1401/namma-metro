package com.xworkz.metro.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MetroWebInit extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        System.out.println("inside root config");
        return new Class[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        System.out.println("Inside config class");
        return new Class[]{MetroConfiguration.class};
    }

    @Override
    protected String[] getServletMappings() {
        System.out.println("inside servlet mapping");
        return new String[]{"/"};
    }
}
