package com.xworkz.metro.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.sql.DataSource;
import java.util.Properties;

@ComponentScan(basePackages = "com.xworkz.metro")
@Configuration
@EnableWebMvc
@PropertySource("classpath:connection.properties")
public class MetroConfiguration {
    @Autowired
    public Environment environment;
    public MetroConfiguration(){
        System.out.println("Metro config object created");
    }
    @Bean
    public ViewResolver getViewResolver(){
        return new InternalResourceViewResolver();
    }

    @Bean
    public LocalContainerEntityManagerFactoryBean getBean(){
        LocalContainerEntityManagerFactoryBean bean= new LocalContainerEntityManagerFactoryBean();
        bean.setDataSource(dataSource());
        bean.setPackagesToScan(new String[]{"com.xworkz.metro.dto"});
        HibernateJpaVendorAdapter adapter= new HibernateJpaVendorAdapter();
        bean.setJpaVendorAdapter(adapter);
        bean.setJpaProperties(getHibernateProperties());
        return bean;
    }

    @Bean
    public DataSource dataSource(){
        DriverManagerDataSource dataSource= new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/spring-mvc");
        dataSource.setUsername("root");
        dataSource.setPassword("Xworkzodc@123");
        dataSource.setConnectionProperties(getHibernateProperties());
        return dataSource;
    }
    @Bean
    public Properties getHibernateProperties(){
        Properties properties= new Properties();
        properties.put("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect");
        properties.put("hibernate.show_sql","true");
        properties.put("hibernate.hbm2ddl.auto","update");
        return properties;
    }

}
