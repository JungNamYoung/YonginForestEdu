package app.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

import com.zaxxer.hikari.HikariDataSource;

import adminforest.define.AdminForest;
import cuda.web.util.TokenEx;

@Configuration
public class MyBatisConfig {
  @Bean
  public DataSource dataSource() {
    HikariDataSource ds = new HikariDataSource();

    TokenEx tokenEx = new TokenEx("dbconfig/db.txt");
    
    ds.setDriverClassName(tokenEx.get(AdminForest.DB_DRIVER));
    ds.setJdbcUrl(tokenEx.get(AdminForest.DB_URL));
    ds.setUsername(tokenEx.get(AdminForest.DB_USER));
    ds.setPassword(tokenEx.get(AdminForest.DB_PW));
    
    return ds;
  }

  @Bean
  public SqlSessionFactory sqlSessionFactory() throws Exception {
    SqlSessionFactoryBean factory = new SqlSessionFactoryBean();
    factory.setDataSource(dataSource());
    factory.setConfigLocation(new ClassPathResource("dbconfig/mybatis-config.xml"));

    factory.setMapperLocations(new PathMatchingResourcePatternResolver().getResources("classpath:/mappers/*.xml"));
    return factory.getObject();
  }

  @Bean
  public PlatformTransactionManager transactionManager(DataSource dataSource) {
    return new DataSourceTransactionManager(dataSource);
  }

  @Bean
  public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
    return new SqlSessionTemplate(sqlSessionFactory);
  }
}
