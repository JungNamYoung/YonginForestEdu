package adminforest.log.vo;

public class RequestStatVo{
 private String controller;
 private String method;
 private String nameText;
 private Integer count;
 private String uri;
 
 public String getController() {
	return controller;
 }
 public void setController(String controller) {
	this.controller = controller;
 }
 public String getMethod() {
	return method;
 }
 public void setMethod(String method) {
	this.method = method;
 }
 public String getNameText() {
	return nameText;
 }
 public void setNameText(String nameText) {
	this.nameText = nameText;
 }
 public Integer getCount() {
	return count;
 }
 public void setCount(Integer count) {
	this.count = count;
 }
 public String getUri() {
	return uri;
 }
 public void setUri(String uri) {
	this.uri = uri;
 }
}