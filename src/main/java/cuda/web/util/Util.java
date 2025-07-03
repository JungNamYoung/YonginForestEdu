package cuda.web.util;

import java.io.File;
import java.io.IOException;
//import java.io.OutputStreamWriter;
import java.io.OutputStreamWriter;
//import java.io.PrintWriter;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URL;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.core.io.ClassPathResource;

import cuda.web.define.Define;

public class Util {

	static public HashMap<String, Object> makeMap(Object... args) {

		if (args.length % 2 != 0) {
			Util.error(Define.ERR_EVEN);
		}

		HashMap<String, Object> param = new HashMap<>();

		for (int n = 0; n < args.length;) {
			String key = (String) args[n];
			++n;
			Object value = args[n];
			++n;

			param.put(key, value);
		}

		return param;
	}

	static public HashMap<String, Object> MakeList(List<String> list) {

		List<String> typeList = new ArrayList<>();
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("typeList", list);

		return param;
	}

	static public String parseLoc(String loc) {

		String location = loc.trim();

		int n = location.length();

		if (n == 0)
			return Define.STR_BLANK;

		String str = loc.replace(Define.DAEJEON_EX, Define.STR_BLANK);
		str = str.replace(Define.DAEJEON, Define.STR_BLANK);
		str = str.trim();

		String result = str + Define.NEAR;

		return result;
	}

	static public String methodName() {

		StackTraceElement[] stacks = Thread.currentThread().getStackTrace();

		return Thread.currentThread().getStackTrace()[2].getMethodName() + "() : ";
	}

	static public boolean isNumber(String input) {

		if (input == null)
			return false;

		try {
			Double.parseDouble(input);
			return true;
		} catch (NumberFormatException ex) {
			return false;
		}
	}

	static public Float toFloat(Object obj) {

		String input = (String) obj;

		if (input == null)
			return 0f;

		try {
			Float n = Float.parseFloat(input);
			return n;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return 0f;
	}

	static public String toString(String num) {

		BigDecimal tmp;
		try {
			tmp = new BigDecimal(num);
		} catch (NumberFormatException e) {
			tmp = new BigDecimal("0");
		}

		return tmp.toString();
	}

	static public String toString(Object obj) {

		String ret = Define.STR_BLANK;

		if (obj instanceof Integer) {
			int num = (Integer) obj;
			return Integer.toString(num);
		} else if (obj instanceof String) {
			return (String) obj;
		} else {
			ret = obj.toString();
		}

		return ret;
	}

	static public String cvtDate(Date date) {
		SimpleDateFormat tFormat = new SimpleDateFormat(Define.YMD);
		return tFormat.format(date);
	}

	static public String getDate() {
		Date date = new Date();
		SimpleDateFormat tFormat = new SimpleDateFormat("yyyyMMdd_HHmmss");
		return tFormat.format(date).toString();
	}

	static public String makeDir() {

		LocalDateTime time = LocalDateTime.now();

		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyMMdd_HHmmss");

		String str = time.format(format);

		return str;

	}

	static public Period calDate(Date date) {

		Date now = new Date();

		LocalDate tNow = now.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();

		LocalDate tDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();

		Period diff = Period.between(tDate, tNow);

		// Date result = new Date(diff.getYears(), diff.getMonths(), diff.getDays());

		return diff;
	}

	static public boolean empty(String str) {

		if (str == null)
			return true;

		if (str.length() == 0)
			return true;

		return false;
	}

	static public void merge(List<?> list, List<Object> result) {
		for (int i = 0; i < list.size(); ++i) {
			// Map tMap = list.get(i);
			result.add(list.get(i));
		}
	}

	public static void SendSocket(String ip, int port) {
		try {
			Socket socket = new Socket();

//			Locale loc = Locale.getDefault();

//			if (config.getIdnsUse().equals(Define.YES)) 
//			{
			// socket.connect(new InetSocketAddress(config.getIdnsIp(),
			// Integer.valueOf(config.getIdnsPort())));

			socket.connect(new InetSocketAddress(ip, port));

			socket.close();
//			}

		} catch (UnknownHostException ex) {
			ex.printStackTrace();
		} catch (IOException ex) {
			ex.printStackTrace();
		}

	}

	public static HashMap<String, String> toStringEx(HashMap<String, Object> tMap) {

		HashMap<String, String> result = new HashMap<>();

		for (String key : tMap.keySet()) {
			result.put(key, tMap.get(key).toString());
		}

		return result;
	}

	public static HashMap<String, String> toString(HashMap<String, Object> tMap) {

		HashMap<String, String> newMap = new HashMap<>();

		for (Entry<String, Object> entry : tMap.entrySet()) {
			if (entry.getValue() instanceof String) {
				newMap.put(entry.getKey(), (String) entry.getValue());
			} else if (entry.getValue() instanceof Integer) {
				newMap.put(entry.getKey(), String.valueOf(entry.getValue()));
			} else {
				error(Define.ERR_CONDITION);
			}
		}

		return newMap;
	}

	public static void error(String... msgs) {

		String msg = Define.STR_BLANK;

//		if (msgs.length > Define.COUNT_0) {
//			msg = Define.ERR_MSG + msgs[Define.INDEX_0];
//		}

		msg = Define.ERR_MSG;

		for (String str : msgs) {
			msg += (str + " | ");
		}

		try {
			throw new Exception(msg);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static void log(String... args) {

		String result = "";

//		if(args.length > Define.COUNT_0) {
//			
//		}
//		
		for (int i = Define.INDEX_1; i < args.length; ++i) {
//			result = String.format(args[Define.INDEX_0], args)
		}

		System.out.println(result);
	}

	static public String error(Exception e) {
		String[] msgs = e.getMessage().split("\r\n###");
		String msg = msgs[Define.MSG_INDEX];
		return msg;
	}

	public static void pass() {

	}

	static public Method Method(Object ins, String name, Object... args) {

		Class[] paraTypes = new Class[args.length];

		for (int n = 0; n < args.length; ++n) {
			paraTypes[n] = (Class) args[n];
		}
		Method paraFunc = null;
		try {
			paraFunc = ins.getClass().getMethod(name, paraTypes);

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return paraFunc;
	}

	static public Object[] Param(Object... args) {

		Object[] params = new Object[args.length];

		for (int n = 0; n < args.length; ++n) {
			params[n] = args[n];
		}

		return params;
	}

	static public String now(String format) {
		// SimpleDateFormat sdf = new SimpleDateFormat(Define.YMD_HMS_EX);
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		Date now = new Date();
		String str = sdf.format(now);
		return str;
	}

	static public void print(String str) {
		System.out.println(str);
	}

	static public String toCamel(String str, boolean upper) {

		String[] wordList = str.toLowerCase().split("_");

		String finalStr = "";

		int n = 0;

		for (String word : wordList) {

			if (upper) {
				finalStr += cap(word);
			} else {
				if (n == 0) {
					finalStr += word;
				} else
					finalStr += cap(word);
			}

			++n;
		}

		return finalStr;
	}

	static public String cap(String line) {
		return Character.toUpperCase(line.charAt(Define.INDEX_0)) + line.substring(Define.INDEX_1);
	}

	static public String uncap(String line) {
		return Character.toLowerCase(line.charAt(Define.INDEX_0)) + line.substring(Define.INDEX_1);
	}

	static public String toType(String type) {

		String chanageType = type.toLowerCase();

		if (chanageType.indexOf("int") >= Define.INDEX_0 || chanageType.equalsIgnoreCase("decimal") // ||
																									// chanageType.equalsIgnoreCase("numeric")
				|| chanageType.equalsIgnoreCase("serial")) {
			return "Integer";
		}

		if (chanageType.indexOf("float") >= Define.INDEX_0 || chanageType.equalsIgnoreCase("numeric")) {
			return "Float";
		}

		if (chanageType.indexOf("varchar") >= Define.INDEX_0 || chanageType.indexOf("text") >= Define.INDEX_0 || chanageType.indexOf("char") >= Define.INDEX_0) {
			return "String";
		}

		if (chanageType.equalsIgnoreCase("timestamp") || chanageType.equalsIgnoreCase("datetime") || chanageType.equalsIgnoreCase("time") || chanageType.equalsIgnoreCase("date")) {
			return "Date";
		}

		if (chanageType.equalsIgnoreCase("float")) {
			return "Float";
		}

		Util.error(type + Define.SPACE + Define.COLON + Define.SPACE + chanageType);

		return Define.STR_BLANK;
	}

	public static ArrayList<String> toList(String[] word) {

		ArrayList<String> list = new ArrayList<>();

		for (int i = 0; i < word.length; ++i) {
			list.add(word[i].trim());
		}

		return list;
	}

	public static String dirRes() {

//		String str = Thread.currentThread().getStackTrace()[1].getFileName();
//		str = Thread.currentThread().getStackTrace()[1].getClassName();
		String str = ClassLoader.getSystemClassLoader().getResource(".").getPath();

		str = str.substring(Define.INDEX_1);

		// str += "res/";
		// str += "token/";
		str += "cuda/token/";
		return str;

	}

	// 서버 컴퓨터로 기준으로 전체 경로 얻기
	// resource 경로에서 시작
	// 예) dirResEx("komoran/userDic.txt")
	static public String dirClass(String fileName) {

		ClassPathResource classPathResource = new ClassPathResource(fileName);

		String result = null;

		try {
			URL url = classPathResource.getURL();
			result = url.getPath().substring(Define.INDEX_1, url.getPath().length());
			FileEx.exist(result);

		} catch (IOException ex) {
			ex.printStackTrace();
		}

		return result;
	}

//	public static String dirResEx(ClassLoader classLoader) {
//		
//		String str = classLoader.getSystemClassLoader().getResource(".").getPath();
//		
//		str = str.substring(Define.INDEX_1);
//	
//		str += "cuda/token/";
//		return str;
//		
//	}

	static public String text(ArrayList<String> param) {

		String str = "";

		for (String txt : param) {
			str += txt;
		}

		return str;
	}

	static public String toText(Map<String, Object> map) {

		String text = Define.STR_BLANK;

		for (String key : map.keySet()) {

			Object value = map.get(key);

			text += String.format("key: %s, vlaue: %s \n", key, value);
		}

		return text;
	}

	static public String removeSpace(String str) {

		String result = str;

		result = result.replace(Define.SPACE, Define.STR_BLANK);

		return result;
	}

	static public boolean isEmpty(Object obj) {

		if (obj == null) {
			return true;
		}

		if (obj instanceof String) {

			if (Define.STR_BLANK.equals(obj.toString().trim())) {
				return true;
			}
		} else {
			pass();
		}

		return false;
	}

	static public boolean isNotEmpty(Object obj) {
		return !isEmpty(obj);
	}

	static public boolean equal(Object obj, String str) {

		if (obj == null)
			return false;

		if (obj instanceof String) {

			if (obj.toString().trim().equals(str)) {
				return true;
			}
		}

		return false;
	}

	// 리턴 예시 : D:\00_eGov_work\git_projects\geoje\GeojeChat
	static public String dirCurrent() {

		File file = new File("");

		return file.getAbsolutePath();
	}

	static public Process run(String exe) {

		Process ps = null;

		try {
			ps = Runtime.getRuntime().exec(exe);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ps;
	}

	static public void send(String host, int port, String msg) {
		try (
				// Socket socket = new Socket("localhost", 12345);
				Socket socket = new Socket(host, port);

				PrintWriter writer = new PrintWriter(new OutputStreamWriter(socket.getOutputStream()), true)) {

			// writer.println("exit");
			writer.println(msg);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	static public int toInt(Object object) {
		int value = Integer.parseInt(Util.toStr(object));
		return value;
	}

	static public String toStr(Object obj) {
		String str = String.valueOf(obj);
		return str;
	}
}
