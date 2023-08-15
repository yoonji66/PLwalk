package dto;
import java.io.Serializable;

public class Course implements Serializable {
	private String courseId;		//코스 식별 아이디
	private String name;			//코스명
	private String location;		//주소
	private String description;		//상세설명
	private String openingTime;		//개장시간
	private Integer price;			//입장료
	private String walkingTime;		//산책시간
	private String leaderNumber;	//대표자 전화번호
	private String filename;		//이미지 파일명
	private Integer quantity;		//신청자 인원수
	
	public Course() {
		super();
	}
	
	public String getCourseId() {
		return courseId;
	}
	
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getLocation() {
		return location;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getOpeningTime() {
		return openingTime;
	}
	
	public void setOpeningTime(String openingTime) {
		this.openingTime = openingTime;
	}
	
	public Integer getPrice() {
		return price;
	}
	
	public void setPrice(Integer price) {
		this.price = price;
	}
	
	public String getWalkingTime() {
		return walkingTime;
	}
	
	public void setWalkingTime(String walkingTime) {
		this.walkingTime = walkingTime;
	}
	
	public String getLeaderNumber() {
		return leaderNumber;
	}
	
	public void setLeaderNumber(String leaderNumber) {
		this.leaderNumber = leaderNumber;
	}
	
	public String getFilename() {
		return filename;
	}
	
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public Integer getQuantity() {
		return quantity;
	}
	
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
}