package com.foamtec.fa.domain;
import com.foamtec.fa.base.BaseEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(inheritanceType = "TABLE_PER_CLASS")
@RooJson(deepSerialize = true)
public class AppUser extends BaseEntity {

    /**
     */
    private String username;

    /**
     */
    private String password;

    /**
     */
    private String name;

    /**
     */
    private String department;

    /**
     */
    private String appRole;
}
