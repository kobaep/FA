package com.foamtec.fa.domain;

import com.foamtec.fa.domain.FirstArticle;
import java.util.List;
import javax.persistence.EntityManager;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.hibernate.criterion.Criterion;

privileged aspect FirstArticle_Custom_Jpa_ActiveRecord {

    public static List<FirstArticle> FirstArticle.findByWorkFlow(String workFlow) {
        EntityManager em = FirstArticle.entityManager();
        Criteria c = ((Session)em.getDelegate()).createCriteria(FirstArticle.class);
        Criterion case1 = Restrictions.eq("workFlow",workFlow);
        c.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        c.add(case1);
        return c.list();
    }
    
}
