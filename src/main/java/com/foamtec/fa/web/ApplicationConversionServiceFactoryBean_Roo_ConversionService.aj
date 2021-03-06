// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.foamtec.fa.web;

import com.foamtec.fa.domain.AppUser;
import com.foamtec.fa.domain.FirstArticle;
import com.foamtec.fa.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<AppUser, String> ApplicationConversionServiceFactoryBean.getAppUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.foamtec.fa.domain.AppUser, java.lang.String>() {
            public String convert(AppUser appUser) {
                return new StringBuilder().append(appUser.getCreateDate()).append(' ').append(appUser.getEngineerUpdateDate()).append(' ').append(appUser.getQcUpdateDate()).append(' ').append(appUser.getUsername()).toString();
            }
        };
    }
    
    public Converter<Long, AppUser> ApplicationConversionServiceFactoryBean.getIdToAppUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.foamtec.fa.domain.AppUser>() {
            public com.foamtec.fa.domain.AppUser convert(java.lang.Long id) {
                return AppUser.findAppUser(id);
            }
        };
    }
    
    public Converter<String, AppUser> ApplicationConversionServiceFactoryBean.getStringToAppUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.foamtec.fa.domain.AppUser>() {
            public com.foamtec.fa.domain.AppUser convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), AppUser.class);
            }
        };
    }
    
    public Converter<FirstArticle, String> ApplicationConversionServiceFactoryBean.getFirstArticleToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.foamtec.fa.domain.FirstArticle, java.lang.String>() {
            public String convert(FirstArticle firstArticle) {
                return new StringBuilder().append(firstArticle.getCreateDate()).append(' ').append(firstArticle.getEngineerUpdateDate()).append(' ').append(firstArticle.getQcUpdateDate()).append(' ').append(firstArticle.getCreateBy()).toString();
            }
        };
    }
    
    public Converter<Long, FirstArticle> ApplicationConversionServiceFactoryBean.getIdToFirstArticleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.foamtec.fa.domain.FirstArticle>() {
            public com.foamtec.fa.domain.FirstArticle convert(java.lang.Long id) {
                return FirstArticle.findFirstArticle(id);
            }
        };
    }
    
    public Converter<String, FirstArticle> ApplicationConversionServiceFactoryBean.getStringToFirstArticleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.foamtec.fa.domain.FirstArticle>() {
            public com.foamtec.fa.domain.FirstArticle convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), FirstArticle.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAppUserToStringConverter());
        registry.addConverter(getIdToAppUserConverter());
        registry.addConverter(getStringToAppUserConverter());
        registry.addConverter(getFirstArticleToStringConverter());
        registry.addConverter(getIdToFirstArticleConverter());
        registry.addConverter(getStringToFirstArticleConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
