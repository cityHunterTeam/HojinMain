package search;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServlet;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;

public class searchDTO1{
    public static void main(String[] args) throws IOException {
        StringBuilder urlBuilder = new StringBuilder("http://openapi.tago.go.kr/openapi/service/TrainInfoService/getStrtpntAlocFndTrainInfo"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=sOy5hEZhdouT3bt0KCjqLrVKs9CplOTB%2F8ZV%2BTxKxftTiPvsPtd1IiIAxjy66VtyIiQRk7r5AP0SNnW7J5yArw%3D%3D" + 
        		"" + 
        		""); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
        urlBuilder.append("&" + URLEncoder.encode("depPlaceId","UTF-8") + "=" + URLEncoder.encode("NAT010000", "UTF-8")); /*출발기차역ID*/
        urlBuilder.append("&" + URLEncoder.encode("arrPlaceId","UTF-8") + "=" + URLEncoder.encode("NAT011668", "UTF-8")); /*도착기차역ID*/
        urlBuilder.append("&" + URLEncoder.encode("depPlandTime","UTF-8") + "=" + URLEncoder.encode("20200101", "UTF-8")); /*출발일*/
        urlBuilder.append("&" + URLEncoder.encode("trainGradeCode","UTF-8") + "=" + URLEncoder.encode("00", "UTF-8")); /*차량종류코드*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
      System.out.println(sb.toString());
        
        try {
        	Node arrplacename = null;
        	Node depplacename = null;
        	DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
        	DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
        	
        	FileOutputStream output = new FileOutputStream("./WebContent/SearchXml/PM10");
        	output.write(sb.toString().getBytes());
        	output.close();
        	
        	Document doc = dBuilder.parse("./WebContent/SearchXml/PM10");
        	doc.getDocumentElement().normalize();
        	
        	Element body = (Element) doc.getElementsByTagName("body").item(0);
        	Element items = (Element) body.getElementsByTagName("items").item(0);
        	Element item = (Element) items.getElementsByTagName("item").item(0);
        	
        	arrplacename = item.getElementsByTagName("arrplacename").item(0);
        	depplacename = item.getElementsByTagName("depplacename").item(0);
        	System.out.println(arrplacename.getNodeName());
        	System.out.println(arrplacename.getChildNodes().item(0).getNodeValue());
        	
        	System.out.println(depplacename.getNodeName());
        	System.out.println(depplacename.getChildNodes().item(0).getNodeValue());
        }catch (Exception e) {
        	e.printStackTrace();
        }
        
    }
}
