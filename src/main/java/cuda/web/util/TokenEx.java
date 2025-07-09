package cuda.web.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import cuda.web.define.Define;

public class TokenEx {

	private Map<String, String> map = new HashMap<>();
	
	private String path;

	// path : "config/config.txt"
	public TokenEx(String path) {
		path = Util.dirResources(path);
		
		this.path = path;
		FileEx.exist(path);

		ArrayList<String> list = FileEx.readEx(path, false);

		for (int index = 0; index < list.size(); ++index) {

			String str = list.get(index);

			String[] values = str.split(Define.EQUAL);

			map.put(values[Define.INDEX_0], values[Define.INDEX_1]);
		}
	}

	public String get(String key) {
		if (map.containsKey(key) == false) {
			
			Util.error(Define.ERR_CONDITION, key);
			
			return Define.STR_BLANK;
		}
		return map.get(key);
	}
}
