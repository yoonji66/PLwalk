package dto;
import java.io.Serializable;

public class Course implements Serializable {
	private String courseId;		//�ڽ� �ĺ� ���̵�
	private String name;			//�ڽ���
	private String location;		//�ּ�
	private String description;		//�󼼼���
	private String openingTime;		//����ð�
	private Integer price;			//�����
	private String walkingTime;		//��å�ð�
	private String leaderNumber;	//��ǥ�� ��ȭ��ȣ
	private String filename;		//�̹��� ���ϸ�
	private Integer quantity;		//��û�� �ο���
	
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