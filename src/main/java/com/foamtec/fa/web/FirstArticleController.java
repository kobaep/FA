package com.foamtec.fa.web;
import com.foamtec.fa.domain.FirstArticle;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.ui.Model;
import java.security.Principal;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.RequestMethod;
import org.json.JSONObject;
import org.json.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import java.util.Date;
import java.util.Map;
import java.util.HashMap;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import org.springframework.web.bind.annotation.PathVariable;

@RooWebJson(jsonObject = FirstArticle.class)
@Controller
@RequestMapping("/firstarticles")
@RooWebScaffold(path = "firstarticles", formBackingObject = FirstArticle.class)
public class FirstArticleController {

    private static Logger LOGGER = LoggerFactory.getLogger(FirstArticleController.class);

    @RequestMapping(value = "/create", produces = "text/html")
    public String showFa(Model uiModel, Principal principal) {
        return "fastatus/create";
    }

    @RequestMapping(value = "/engview", produces = "text/html")
    public String engineerReview(Model uiModel, Principal principal) {
        return "fastatus/engineer-review";
    }

    @RequestMapping(value = "/engviewdata", method = RequestMethod.POST, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> getDataEngineer(Principal principal) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        try {
            List<FirstArticle> firstArticles = FirstArticle.findByWorkFlow("engineer");
            JSONArray dataAllForSend = new JSONArray();
            for (FirstArticle f : firstArticles) {
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                String createDate = sdf.format(f.getCreateDate());
                String needDate = sdf.format(f.getNeedDate());
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("createDate", createDate);
                jsonObject.put("needDate", needDate);
                jsonObject.put("partNumber", f.getPartNumber());
                jsonObject.put("amount", f.getAmount());
                jsonObject.put("mat1", f.getMaterial1());
                jsonObject.put("mat2", f.getMaterial2());
                jsonObject.put("mat3", f.getMaterial3());
                jsonObject.put("doc", f.getReportType());
                jsonObject.put("createBy", f.getCreateBy());
                jsonObject.put("id", f.getId());
                dataAllForSend.put(jsonObject);
            }
            return new ResponseEntity<String>(dataAllForSend.toString(), headers, HttpStatus.OK);
        } catch (Exception e) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("param", "false");
            JSONObject jsonObjectMap = new JSONObject(map);
            return new ResponseEntity<String>(jsonObjectMap.toString(), headers, HttpStatus.OK);
        }
    }

    @RequestMapping(value = "/engapprove/{id}", produces = "text/html")
    public String engineerReview(Model uiModel, @PathVariable("id") Long id, Principal principal) {
        uiModel.addAttribute("firstArticle", FirstArticle.findFirstArticle(id));
        return "fastatus/engineer-approve";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> save(@RequestParam("data") String data, Principal principal) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        try {
            JSONObject jsonObject = new JSONObject(data);
            Date createDate = new Date();
            String createBy = principal.getName();
            String customer = jsonObject.getString("custormer");
            String needDate = jsonObject.getString("needDate");
            String partNumber = jsonObject.getString("partNumber");
            Integer amount = jsonObject.getInt("amount");
            String mat1 = jsonObject.getString("mat1");
            String mat2 = jsonObject.getString("mat2");
            String mat3 = jsonObject.getString("mat3");
            String reportType = jsonObject.getString("reportType");
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("createDate", createDate);
            map.put("createBy", createBy);
            map.put("customer", customer);
            map.put("needDate", needDate);
            map.put("partNumber", partNumber);
            map.put("amount", amount);
            map.put("mat1", mat1);
            map.put("mat2", mat2);
            map.put("mat3", mat3);
            map.put("reportType", reportType);
            JSONObject jsonObjectMap = new JSONObject(map);
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            Date convertedNeedDate = sdf.parse(needDate);
            FirstArticle firstArticle = new FirstArticle();
            firstArticle.setCreateDate(createDate);
            firstArticle.setCreateBy(createBy);
            firstArticle.setCustomer(customer);
            firstArticle.setNeedDate(convertedNeedDate);
            firstArticle.setPartNumber(partNumber);
            firstArticle.setAmount(amount);
            firstArticle.setMaterial1(mat1);
            firstArticle.setMaterial2(mat2);
            firstArticle.setMaterial3(mat3);
            firstArticle.setReportType(reportType);
            firstArticle.setWorkFlow("engineer");
            firstArticle.persist();
            return new ResponseEntity<String>(jsonObjectMap.toString(), headers, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<String>("false", headers, HttpStatus.OK);
        }
    }

    @RequestMapping(value = "/engupdateapprove", method = RequestMethod.POST, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> update(@RequestParam("data") String data, Principal principal) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        try {
            JSONObject jsonObject = new JSONObject(data);
            String updateBy = principal.getName();
            Long id = jsonObject.getLong("id");
            String drawingReview = jsonObject.getString("drawingReview");
            String mouldRequest = jsonObject.getString("mouldRequest");
            String mouldDate = jsonObject.getString("mouldDate");
            String engineerStatus = jsonObject.getString("engineerStatus");
            String reason = jsonObject.getString("reason");

            FirstArticle firstArticle = FirstArticle.findFirstArticle(id);
            firstArticle.setEngineerReviewBy(updateBy);
            if ("01".equals(drawingReview)) {
                firstArticle.setWorkFlow("engineerSendBack");
            } else {
                firstArticle.setWorkFlow("engineerSendWork");
            }
            firstArticle.setDrawingReview(drawingReview);
            firstArticle.setMouldRequest(mouldRequest);
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                Date convertedMouldDate = sdf.parse(mouldDate);
                firstArticle.setMouldDate(convertedMouldDate);
            } catch (Exception e) {

            }
            firstArticle.setEngApproveDate(new Date());
            firstArticle.setEngineerStatus(engineerStatus);
            firstArticle.setReasonEngReject(reason);
            firstArticle.persist();

            return new ResponseEntity<String>(jsonObject.toString(), headers, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<String>("false", headers, HttpStatus.OK);
        }
    }

    @RequestMapping(value = "/engwaitsend", produces = "text/html")
    public String engineerReviewWaitSand(Model uiModel, Principal principal) {
        return "fastatus/engineer-wait-send";
    }

    @RequestMapping(value = "/engwaitsenddata", method = RequestMethod.POST, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> getDataEngineerWaitSend(Principal principal) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        try {
            List<FirstArticle> firstArticles = FirstArticle.findByWorkFlow("engineerSendWork");
            JSONArray dataAllForSend = new JSONArray();
            for (FirstArticle f : firstArticles) {
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                String createDate = sdf.format(f.getCreateDate());
                String needDate = sdf.format(f.getNeedDate());
                String engApproveDate = sdf.format(new Date());
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("createDate", createDate);
                jsonObject.put("needDate", needDate);
                jsonObject.put("partNumber", f.getPartNumber());
                jsonObject.put("amount", f.getAmount());
                jsonObject.put("engApproveDate", engApproveDate);
                jsonObject.put("approveBy", f.getEngineerReviewBy());
                jsonObject.put("createBy", f.getCreateBy());
                jsonObject.put("id", f.getId());
                dataAllForSend.put(jsonObject);
            }
            return new ResponseEntity<String>(dataAllForSend.toString(), headers, HttpStatus.OK);
        } catch (Exception e) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("param", "false");
            JSONObject jsonObjectMap = new JSONObject(map);
            return new ResponseEntity<String>(jsonObjectMap.toString(), headers, HttpStatus.OK);
        }
    }

    @RequestMapping(value = "/engsenditem/{id}", produces = "text/html")
    public String engineerSendItem(Model uiModel, @PathVariable("id") Long id, Principal principal) {
        uiModel.addAttribute("firstArticle", FirstArticle.findFirstArticle(id));
        return "fastatus/engineer-send-item";
    }
}
