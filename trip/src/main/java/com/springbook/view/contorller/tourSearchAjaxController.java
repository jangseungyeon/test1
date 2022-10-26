package com.springbook.view.contorller;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springbook.biz.planner.tourSearchVO;




@Controller
public class tourSearchAjaxController{

		@RequestMapping("/tourApiHouseSearch.do")
		public String getTourHouseList(Model model , HttpServletRequest request) throws Exception{
				
			String apiToururl= "";
			
				if(request.getParameter("keyWorld").equals("")) {
					apiToururl = "http://apis.data.go.kr/B551011/KorService/areaBasedList?"
							+ "numOfRows=10"
							+ "&pageNo=1"
							+ "&MobileOS=ETC"
							+ "&MobileApp=AppTest"
							+ "&ServiceKey=CYndID2JHrOzK1Pr%2FAgioaNHSEKM3ql%2FiYRsxfTe9iJ6XXTbTF1H0oo%2FMYBEdb8iViimIILo%2FbsY63MXYjTZ6g%3D%3D"
							+ "&listYN=Y"
							+ "&arrange=A&"
							+ "&contentTypeId=39"
							+ "&areaCode=1"
							+ "&sigunguCode="
							+ "&cat1=A05"
							+ "&cat2=A0502"
							+ "&cat3="
							+ "&_type=json";	
				}else {
					apiToururl = "http://apis.data.go.kr/B551011/KorService/searchKeyword?"
							+ "numOfRows=10"
							+ "&pageNo=1"
							+ "&MobileOS=ETC"
							+ "&MobileApp=AppTest"
							+ "&_type=json"
							+ "&areaCode="
							+ "&sigunguCode="
							+ "&cat1="
							+ "&cat2="
							+ "&cat3="
							+ "&ServiceKey=CYndID2JHrOzK1Pr%2FAgioaNHSEKM3ql%2FiYRsxfTe9iJ6XXTbTF1H0oo%2FMYBEdb8iViimIILo%2FbsY63MXYjTZ6g%3D%3D"
							+"&keyword=";
					String keyword = request.getParameter("keyWorld");
					keyword = URLEncoder.encode(keyword, "UTF-8");
					apiToururl = apiToururl+keyword;
				}
					
				URL url = new URL(apiToururl);
				InputStream in = url.openStream();                            
		        ByteArrayOutputStream bos1 = new ByteArrayOutputStream();        
		        IOUtils.copy(in, bos1);           
		        in.close();
		        bos1.close();
		      
		        String mbos = bos1.toString("UTF-8");
		 
		        byte[] b = mbos.getBytes("UTF-8");
		        String s = new String(b, "UTF-8");
		        JSONParser jsonParser = new JSONParser();
		        JSONObject jsonObject = (JSONObject)jsonParser.parse(s);
		        JSONObject response = (JSONObject)jsonObject.get("response");
		        JSONObject header = (JSONObject)response.get("header");
		        JSONObject body = (JSONObject)response.get("body");
		        JSONObject items = (JSONObject)body.get("items");
		        JSONArray item = (JSONArray)items.get("item");
		        List<tourSearchVO> tourList = new ArrayList<tourSearchVO>();
		        for(int i=0; i<item.size(); i++) {
		        	JSONObject jsonObj = (JSONObject)item.get(i);
		            tourSearchVO vo = new tourSearchVO();
		            vo.setTitle((String)jsonObj.get("title"));
		            vo.setAddr1((String)jsonObj.get("addr1"));
		            vo.setAddr2((String)jsonObj.get("addr2"));
		            vo.setMapx((String)jsonObj.get("mapx"));
		            vo.setMapy((String)jsonObj.get("mapy"));
		            vo.setFirstimage((String)jsonObj.get("firstimage"));
		            tourList.add(vo);
		        }
		        
		       model.addAttribute("tourList", tourList);
		   
//		        Map<String, Object> rst = new HashMap<String, Object>();
//		        
//		        rst.put("header", header);
//		        rst.put("item", item);
		        
		        return "/test.jsp";
	}
}
