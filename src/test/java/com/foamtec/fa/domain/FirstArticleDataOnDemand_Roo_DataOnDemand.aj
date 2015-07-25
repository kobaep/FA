// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.foamtec.fa.domain;

import com.foamtec.fa.domain.FirstArticle;
import com.foamtec.fa.domain.FirstArticleDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect FirstArticleDataOnDemand_Roo_DataOnDemand {
    
    declare @type: FirstArticleDataOnDemand: @Component;
    
    private Random FirstArticleDataOnDemand.rnd = new SecureRandom();
    
    private List<FirstArticle> FirstArticleDataOnDemand.data;
    
    public FirstArticle FirstArticleDataOnDemand.getNewTransientFirstArticle(int index) {
        FirstArticle obj = new FirstArticle();
        setAmount(obj, index);
        setCreateBy(obj, index);
        setCreateDate(obj, index);
        setCustomer(obj, index);
        setDimensionReview(obj, index);
        setDocument(obj, index);
        setDrawingReview(obj, index);
        setEngApproveDate(obj, index);
        setEngSendWorkDate(obj, index);
        setEngSendWorkStatus(obj, index);
        setEngineerReviewBy(obj, index);
        setEngineerStatus(obj, index);
        setEngineerUpdateDate(obj, index);
        setHfDoc(obj, index);
        setMaterial1(obj, index);
        setMaterial2(obj, index);
        setMaterial3(obj, index);
        setMouldDate(obj, index);
        setMouldRequest(obj, index);
        setMsdsDoc(obj, index);
        setNeedDate(obj, index);
        setPartNumber(obj, index);
        setQcReviewBy(obj, index);
        setQcStatus(obj, index);
        setQcUpdateDate(obj, index);
        setReasonEngReject(obj, index);
        setReportType(obj, index);
        setRohsDoc(obj, index);
        setSpecDoc(obj, index);
        setWorkFlow(obj, index);
        return obj;
    }
    
    public void FirstArticleDataOnDemand.setAmount(FirstArticle obj, int index) {
        Integer amount = new Integer(index);
        obj.setAmount(amount);
    }
    
    public void FirstArticleDataOnDemand.setCreateBy(FirstArticle obj, int index) {
        String createBy = "createBy_" + index;
        obj.setCreateBy(createBy);
    }
    
    public void FirstArticleDataOnDemand.setCreateDate(FirstArticle obj, int index) {
        Date createDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setCreateDate(createDate);
    }
    
    public void FirstArticleDataOnDemand.setCustomer(FirstArticle obj, int index) {
        String customer = "customer_" + index;
        obj.setCustomer(customer);
    }
    
    public void FirstArticleDataOnDemand.setDimensionReview(FirstArticle obj, int index) {
        String dimensionReview = "dimensionReview_" + index;
        obj.setDimensionReview(dimensionReview);
    }
    
    public void FirstArticleDataOnDemand.setDocument(FirstArticle obj, int index) {
        String document = "document_" + index;
        obj.setDocument(document);
    }
    
    public void FirstArticleDataOnDemand.setDrawingReview(FirstArticle obj, int index) {
        String drawingReview = "drawingReview_" + index;
        obj.setDrawingReview(drawingReview);
    }
    
    public void FirstArticleDataOnDemand.setEngApproveDate(FirstArticle obj, int index) {
        Date engApproveDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setEngApproveDate(engApproveDate);
    }
    
    public void FirstArticleDataOnDemand.setEngSendWorkDate(FirstArticle obj, int index) {
        Date engSendWorkDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setEngSendWorkDate(engSendWorkDate);
    }
    
    public void FirstArticleDataOnDemand.setEngSendWorkStatus(FirstArticle obj, int index) {
        String engSendWorkStatus = "engSendWorkStatus_" + index;
        obj.setEngSendWorkStatus(engSendWorkStatus);
    }
    
    public void FirstArticleDataOnDemand.setEngineerReviewBy(FirstArticle obj, int index) {
        String engineerReviewBy = "engineerReviewBy_" + index;
        obj.setEngineerReviewBy(engineerReviewBy);
    }
    
    public void FirstArticleDataOnDemand.setEngineerStatus(FirstArticle obj, int index) {
        String engineerStatus = "engineerStatus_" + index;
        obj.setEngineerStatus(engineerStatus);
    }
    
    public void FirstArticleDataOnDemand.setEngineerUpdateDate(FirstArticle obj, int index) {
        Date engineerUpdateDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setEngineerUpdateDate(engineerUpdateDate);
    }
    
    public void FirstArticleDataOnDemand.setHfDoc(FirstArticle obj, int index) {
        String hfDoc = "hfDoc_" + index;
        obj.setHfDoc(hfDoc);
    }
    
    public void FirstArticleDataOnDemand.setMaterial1(FirstArticle obj, int index) {
        String material1 = "material1_" + index;
        obj.setMaterial1(material1);
    }
    
    public void FirstArticleDataOnDemand.setMaterial2(FirstArticle obj, int index) {
        String material2 = "material2_" + index;
        obj.setMaterial2(material2);
    }
    
    public void FirstArticleDataOnDemand.setMaterial3(FirstArticle obj, int index) {
        String material3 = "material3_" + index;
        obj.setMaterial3(material3);
    }
    
    public void FirstArticleDataOnDemand.setMouldDate(FirstArticle obj, int index) {
        Date mouldDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setMouldDate(mouldDate);
    }
    
    public void FirstArticleDataOnDemand.setMouldRequest(FirstArticle obj, int index) {
        String mouldRequest = "mouldRequest_" + index;
        obj.setMouldRequest(mouldRequest);
    }
    
    public void FirstArticleDataOnDemand.setMsdsDoc(FirstArticle obj, int index) {
        String msdsDoc = "msdsDoc_" + index;
        obj.setMsdsDoc(msdsDoc);
    }
    
    public void FirstArticleDataOnDemand.setNeedDate(FirstArticle obj, int index) {
        Date needDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setNeedDate(needDate);
    }
    
    public void FirstArticleDataOnDemand.setPartNumber(FirstArticle obj, int index) {
        String partNumber = "partNumber_" + index;
        obj.setPartNumber(partNumber);
    }
    
    public void FirstArticleDataOnDemand.setQcReviewBy(FirstArticle obj, int index) {
        String qcReviewBy = "qcReviewBy_" + index;
        obj.setQcReviewBy(qcReviewBy);
    }
    
    public void FirstArticleDataOnDemand.setQcStatus(FirstArticle obj, int index) {
        String qcStatus = "qcStatus_" + index;
        obj.setQcStatus(qcStatus);
    }
    
    public void FirstArticleDataOnDemand.setQcUpdateDate(FirstArticle obj, int index) {
        Date qcUpdateDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setQcUpdateDate(qcUpdateDate);
    }
    
    public void FirstArticleDataOnDemand.setReasonEngReject(FirstArticle obj, int index) {
        String reasonEngReject = "reasonEngReject_" + index;
        obj.setReasonEngReject(reasonEngReject);
    }
    
    public void FirstArticleDataOnDemand.setReportType(FirstArticle obj, int index) {
        String reportType = "reportType_" + index;
        obj.setReportType(reportType);
    }
    
    public void FirstArticleDataOnDemand.setRohsDoc(FirstArticle obj, int index) {
        String rohsDoc = "rohsDoc_" + index;
        obj.setRohsDoc(rohsDoc);
    }
    
    public void FirstArticleDataOnDemand.setSpecDoc(FirstArticle obj, int index) {
        String specDoc = "specDoc_" + index;
        obj.setSpecDoc(specDoc);
    }
    
    public void FirstArticleDataOnDemand.setWorkFlow(FirstArticle obj, int index) {
        String workFlow = "workFlow_" + index;
        obj.setWorkFlow(workFlow);
    }
    
    public FirstArticle FirstArticleDataOnDemand.getSpecificFirstArticle(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        FirstArticle obj = data.get(index);
        Long id = obj.getId();
        return FirstArticle.findFirstArticle(id);
    }
    
    public FirstArticle FirstArticleDataOnDemand.getRandomFirstArticle() {
        init();
        FirstArticle obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return FirstArticle.findFirstArticle(id);
    }
    
    public boolean FirstArticleDataOnDemand.modifyFirstArticle(FirstArticle obj) {
        return false;
    }
    
    public void FirstArticleDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = FirstArticle.findFirstArticleEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'FirstArticle' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<FirstArticle>();
        for (int i = 0; i < 10; i++) {
            FirstArticle obj = getNewTransientFirstArticle(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
