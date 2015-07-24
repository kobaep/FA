package com.foamtec.fa.domain;
import com.foamtec.fa.base.BaseEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(inheritanceType = "TABLE_PER_CLASS")
@RooJson(deepSerialize = true)
public class FirstArticle extends BaseEntity {

    /**
     */
    private String createBy;

    /**
     */
    private String customer;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date needDate;

    /**
     */
    private String partNumber;

    /**
     */
    private Integer amount;

    /**
     */
    private String material1;

    /**
     */
    private String material2;

    /**
     */
    private String material3;

    /**
     */
    private String reportType;

    /**
     */
    private String engineerReviewBy;

    /**
     */
    private String drawingReview;

    /**
     */
    private String mouldRequest;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date mouldDate;

    /**
     */
    private String engineerStatus;

    /**
     */
    private String qcReviewBy;

    /**
     */
    private String dimensionReview;

    /**
     */
    private String document;

    /**
     */
    private String specDoc;

    /**
     */
    private String rohsDoc;

    /**
     */
    private String msdsDoc;

    /**
     */
    private String hfDoc;

    /**
     */
    private String qcStatus;

    /**
     */
    private String workFlow;
}
