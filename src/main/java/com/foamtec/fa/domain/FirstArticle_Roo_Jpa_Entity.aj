// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.foamtec.fa.domain;

import com.foamtec.fa.domain.FirstArticle;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

privileged aspect FirstArticle_Roo_Jpa_Entity {
    
    declare @type: FirstArticle: @Entity;
    
    declare @type: FirstArticle: @Inheritance(strategy = InheritanceType.TABLE_PER_CLASS);
    
}
