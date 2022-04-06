package com.da.st5.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.ViewResolver;

import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

@Configuration
@ComponentScan("com.da.st5.*")

@EnableTransactionManagement

// Load to Environment.
@PropertySources({ @PropertySource("classpath:ds/datasource-cfg.properties") })

public class ApplicationContextConfig {

   
   @Autowired
   private Environment env;

//   @Bean(name = "viewResolver")
//   public InternalResourceViewResolver getViewResolver() {
//       InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
//
//       viewResolver.setPrefix("/WEB-INF/pages/");
//       viewResolver.setSuffix(".jsp");
//       
//       return viewResolver;
//   }
   @Bean(name = "viewResolver")
	public ViewResolver getViewResolver1() {
		UrlBasedViewResolver viewResolver = new UrlBasedViewResolver();
		// TilesView 3
		viewResolver.setViewClass(TilesView.class);
		return viewResolver;
	}
   
   @Bean(name = "tilesConfigurer")
	public TilesConfigurer getTilesConfigurer() {
		TilesConfigurer tilesConfigurer = new TilesConfigurer();

		// TilesView 3
		tilesConfigurer.setDefinitions("/WEB-INF/tiles.xml");

		return tilesConfigurer;
	}

   @Bean(name = "dataSource")
   public DataSource getDataSource() {
       DriverManagerDataSource dataSource = new DriverManagerDataSource();

       // See: datasouce-cfg.properties
       dataSource.setDriverClassName(env.getProperty("ds.database-driver"));
       dataSource.setUrl(env.getProperty("ds.url"));
       dataSource.setUsername(env.getProperty("ds.username"));
       dataSource.setPassword(env.getProperty("ds.password"));

       System.out.println("## getDataSource: " + dataSource);

       return dataSource;
   }

   @Bean(name = "transactionManager")
   public DataSourceTransactionManager getTransactionManager() {
       DataSourceTransactionManager txManager = new DataSourceTransactionManager();

       DataSource dataSource = this.getDataSource();
       txManager.setDataSource(dataSource);

       return txManager;
   }

}
