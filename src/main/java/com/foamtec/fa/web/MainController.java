package com.foamtec.fa.web;
import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.http.HttpHeaders;
import java.security.Principal;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import java.util.Map;
import java.util.HashMap;
import org.json.JSONObject;

@Controller
@RequestMapping("/main")
public class MainController {

	@RequestMapping(value = "/show", produces = "text/html")
    public String showFa(Model uiModel, Principal principal) {
        return "main/show";
    }

    @RequestMapping(value = "/user", method = RequestMethod.POST, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> getUserLoing(Principal principal) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        try {
        	String name = principal.getName();

            Map<String, Object> map = new HashMap<String, Object>();

            map.put("username", name);
            map.put("appRole", "admin");
            map.put("param", "true");

            JSONObject jsonObjectMap = new JSONObject(map);

    		return new ResponseEntity<String>(jsonObjectMap.toString(), headers, HttpStatus.OK);
        } catch (Exception e) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("param", "false");
            JSONObject jsonObjectMap = new JSONObject(map);
        	return new ResponseEntity<String>(jsonObjectMap.toString(), headers, HttpStatus.OK);
        }
    }

}