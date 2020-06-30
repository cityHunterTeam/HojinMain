package searchForward;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.json.JSONException;
import org.json.JSONObject;
import org.json.XML;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

@WebServlet("/json/*")
public class searchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		doHandle(request, response);
	}
    
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextPage = null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String depPlaceId = request.getParameter("code1");
		String arrPlaceId = request.getParameter("code2");

		String trainGradeCode = request.getParameter("form_control");
	
		String date =request.getParameter("datepicker_1");


		String month = date.substring(0,2);
		String nal = date.substring(3,5);
		String year = date.substring(6,date.length());
		String depPlandTime = year + month + nal;
		String action = request.getPathInfo();
		System.out.println("action:" + action);
	        StringBuilder urlBuilder = new StringBuilder("http://openapi.tago.go.kr/openapi/service/TrainInfoService/getStrtpntAlocFndTrainInfo"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=sOy5hEZhdouT3bt0KCjqLrVKs9CplOTB%2F8ZV%2BTxKxftTiPvsPtd1IiIAxjy66VtyIiQRk7r5AP0SNnW7J5yArw%3D%3D"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
	        urlBuilder.append("&" + URLEncoder.encode("depPlaceId","UTF-8") + "=" + URLEncoder.encode(depPlaceId, "UTF-8")); /*출발기차역ID*/
	        urlBuilder.append("&" + URLEncoder.encode("arrPlaceId","UTF-8") + "=" + URLEncoder.encode(arrPlaceId, "UTF-8")); /*도착기차역ID*/
	        urlBuilder.append("&" + URLEncoder.encode("depPlandTime","UTF-8") + "=" + URLEncoder.encode(depPlandTime, "UTF-8")); /*출발일*/
	        urlBuilder.append("&" + URLEncoder.encode("trainGradeCode","UTF-8") + "=" + URLEncoder.encode(trainGradeCode, "UTF-8")); /*차량종류코드*/
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
	        System.out.println(sb.toString());
	        try {
	        	Node arrplacename = null;
	        	Node depplacename = null;
	        	DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
	        	DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
	        	
	        	ServletContext context = this.getServletContext();
	        	String path = context.getRealPath("PM");
	        	File dir = new File(path);
	        	if(!dir.exists())dir.mkdir();
	        	File file = new File(dir,"search");
	        	PrintWriter output = new PrintWriter(new BufferedWriter(new FileWriter(file)));
//	        	FileOutputStream output = new FileOutputStream("/PM10");
//	        	output.write(sb.toString().getBytes());
//	        	output.close();
	        	
	        	output.print(sb.toString());
	        	output.close();
	        	Document doc = dBuilder.parse(path+"/search");
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
	        rd.close();
	        conn.disconnect();
	        	
	        	
	        	
		
			nextPage = "/mem/index.do";
			RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
			dispatch.forward(request, response);
		}
	}


