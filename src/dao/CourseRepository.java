package dao;

import java.util.ArrayList;
import dto.Course;

public class CourseRepository {
	private ArrayList<Course> listOfCourses=new ArrayList<Course>();
	private static CourseRepository instance=new CourseRepository();
	
	public static CourseRepository getInstance() {
		return instance;
	}

	public CourseRepository() {
		Course ICFountainPark=new Course();
		Course ICLeisureSportsPark=new Course();
		Course GDWatersidePark=new Course();
		Course BDREcologicalPark=new Course();
		Course PTLake=new Course();
		Course DDSNeighborhoodPark=new Course();
		Course TBCForest=new Course();
		Course SPGarden=new Course();
		Course PTSG=new Course();
		Course GGVillage=new Course();
		
		ICFountainPark.setCourseId("I6526");
		ICFountainPark.setName("이충분수공원");
		ICFountainPark.setLocation("경기도 평택시 서정로 303");
		ICFountainPark.setDescription("분수공원, 잔디광장, 부락산 등산로 등 다양한 산책로가 있어요.");
		ICFountainPark.setOpeningTime("00:00~24:00");
		ICFountainPark.setPrice(0);
		ICFountainPark.setWalkingTime("21:30~22:30");
		ICFountainPark.setLeaderNumber("010-8024-6526");
		ICFountainPark.setFilename("I6526.jpg");
		
		ICLeisureSportsPark.setCourseId("I6302");
		ICLeisureSportsPark.setName("이충레포츠공원");
		ICLeisureSportsPark.setLocation("경기도 평택시 장안웃길 149");
		ICLeisureSportsPark.setDescription("축구경기장 둘레길, 광장 등의 산책로가 있어요.");
		ICLeisureSportsPark.setOpeningTime("00:00~24:00");
		ICLeisureSportsPark.setPrice(0);
		ICLeisureSportsPark.setWalkingTime("20:00~22:00");
		ICLeisureSportsPark.setLeaderNumber("010-8024-6302");
		ICLeisureSportsPark.setFilename("I6302.jpg");

		GDWatersidePark.setCourseId("G4282");
		GDWatersidePark.setName("고덕수변공원");
		GDWatersidePark.setLocation("경기도 평택시 고덕동 1692-495");
		GDWatersidePark.setDescription("수변공원 10호, 11호, 12호, 13호, 14호 등의 산책로가 있어요.");
		GDWatersidePark.setOpeningTime("00:00~24:00");
		GDWatersidePark.setPrice(0);
		GDWatersidePark.setWalkingTime("12:20~12:50");
		GDWatersidePark.setLeaderNumber("010-8024-4282");
		GDWatersidePark.setFilename("G4282.jpg");

		BDREcologicalPark.setCourseId("B4240");
		BDREcologicalPark.setName("배다리생태공원");
		BDREcologicalPark.setLocation("경기도 평택시 죽백6로 20");
		BDREcologicalPark.setDescription("배다리 둘레길 A코스와 B코스로 총 2개의 산책로가 있어요.");
		BDREcologicalPark.setOpeningTime("06:00~22:00");
		BDREcologicalPark.setPrice(0);
		BDREcologicalPark.setWalkingTime("14:00~15:00");
		BDREcologicalPark.setLeaderNumber("010-8024-4240");
		BDREcologicalPark.setFilename("B4240.jpg");
		
		PTLake.setCourseId("P8687");
		PTLake.setName("평택호");
		PTLake.setLocation("경기도 평택시 현덕면 평택호길 159");
		PTLake.setDescription("목조수변테크를 걸을 수 있어요.");
		PTLake.setOpeningTime("10:00~20:00");
		PTLake.setPrice(1000);
		PTLake.setWalkingTime("11:30~12:30");
		PTLake.setLeaderNumber("010-8024-8687");
		PTLake.setFilename("P8687.jpg");
		
		DDSNeighborhoodPark.setCourseId("D2669");
		DDSNeighborhoodPark.setName("덕동산 근린공원");
		DDSNeighborhoodPark.setLocation("경기도 평택시 비전동 산 84-14");
		DDSNeighborhoodPark.setDescription("잔디광장과 덕동루를 걸을 수 있어요.");
		DDSNeighborhoodPark.setOpeningTime("06:00~18:00");
		DDSNeighborhoodPark.setPrice(3000);
		DDSNeighborhoodPark.setWalkingTime("07:30~09:00");
		DDSNeighborhoodPark.setLeaderNumber("010-8701-2669");
		DDSNeighborhoodPark.setFilename("D2669.jpg");
		
		TBCForest.setCourseId("T4628");
		TBCForest.setName("평택 통복천 바람길숲");
		TBCForest.setLocation("경기도 평택시 비전동 717");
		TBCForest.setDescription("금강소나무길, 대나무길, 단풍나무길, 팽나무길 등 다양한 숲길을 산책할 수 있어요.");
		TBCForest.setOpeningTime("09:00~17:00");
		TBCForest.setPrice(2500);
		TBCForest.setWalkingTime("14:00~16:00");
		TBCForest.setLeaderNumber("010-2449-4628");
		TBCForest.setFilename("T4628.jpg");
		
		SPGarden.setCourseId("S4815");
		SPGarden.setName("소풍정원");
		SPGarden.setLocation("경기도 평택시 고덕면 궁리 502-6");
		SPGarden.setDescription("이화의정원, 무지개의정원, 빛의정원, 지지배배정원, 그리고 미로원을 산책할 수 있어요.");
		SPGarden.setOpeningTime("09:00~18:00");
		SPGarden.setPrice(5000);
		SPGarden.setWalkingTime("11:00~15:00");
		SPGarden.setLeaderNumber("010-6688-4815");
		SPGarden.setFilename("S4815.jpg");
		
		PTSG.setCourseId("P9990");
		PTSG.setName("평택섶길");
		PTSG.setLocation("경기도 평택시 평택5로 80");
		PTSG.setDescription("대추리길-노을길-비단길-명상길-원효길-소금뱃길-신포길-황구지길-뿌리길-숲길-원균길-과수원길의 12코스를 함께 걸어요.");
		PTSG.setOpeningTime("00:00~24:00");
		PTSG.setPrice(0);
		PTSG.setWalkingTime("09:00~18:00");
		PTSG.setLeaderNumber("010-4102-9990");
		PTSG.setFilename("P9990.jpg");
		
		GGVillage.setCourseId("G8687");
		GGVillage.setName("권관마을");
		GGVillage.setLocation("경기도 평택시 현덕면 권관리 379-33");
		GGVillage.setDescription("권관마을 호수 주변 산책로를 걸어요.");
		GGVillage.setOpeningTime("00:00~24:00");
		GGVillage.setPrice(0);
		GGVillage.setWalkingTime("16:00~17:00");
		GGVillage.setLeaderNumber("010-8024-8687");
		GGVillage.setFilename("G8687.jpg");
		
		listOfCourses.add(ICFountainPark);
		listOfCourses.add(ICLeisureSportsPark);
		listOfCourses.add(GDWatersidePark);
		listOfCourses.add(BDREcologicalPark);
		listOfCourses.add(PTLake);
		listOfCourses.add(DDSNeighborhoodPark);
		listOfCourses.add(TBCForest);
		listOfCourses.add(SPGarden);
		listOfCourses.add(PTSG);
		listOfCourses.add(GGVillage);
	}
	
	public ArrayList<Course> getAllCourses() {
		return listOfCourses;
	}
	
	public Course getCourseById(String courseId) {
		Course courseById=null;
		
		for(int i=0;i<listOfCourses.size();i++) {
			Course course=listOfCourses.get(i);
			
			if(course!=null&&course.getCourseId()!=null&&course.getCourseId().equals(courseId)) {
				courseById=course;
				break;
			}
		}
		
		return courseById;
	}
	
	public void addCourse(Course course) {
		listOfCourses.add(course);
	}
}