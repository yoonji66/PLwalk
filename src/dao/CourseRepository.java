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
		ICFountainPark.setName("����м�����");
		ICFountainPark.setLocation("��⵵ ���ý� ������ 303");
		ICFountainPark.setDescription("�м�����, �ܵ���, �ζ��� ���� �� �پ��� ��å�ΰ� �־��.");
		ICFountainPark.setOpeningTime("00:00~24:00");
		ICFountainPark.setPrice(0);
		ICFountainPark.setWalkingTime("21:30~22:30");
		ICFountainPark.setLeaderNumber("010-8024-6526");
		ICFountainPark.setFilename("I6526.jpg");
		
		ICLeisureSportsPark.setCourseId("I6302");
		ICLeisureSportsPark.setName("���淹��������");
		ICLeisureSportsPark.setLocation("��⵵ ���ý� ��ȿ��� 149");
		ICLeisureSportsPark.setDescription("�౸����� �ѷ���, ���� ���� ��å�ΰ� �־��.");
		ICLeisureSportsPark.setOpeningTime("00:00~24:00");
		ICLeisureSportsPark.setPrice(0);
		ICLeisureSportsPark.setWalkingTime("20:00~22:00");
		ICLeisureSportsPark.setLeaderNumber("010-8024-6302");
		ICLeisureSportsPark.setFilename("I6302.jpg");

		GDWatersidePark.setCourseId("G4282");
		GDWatersidePark.setName("�����������");
		GDWatersidePark.setLocation("��⵵ ���ý� ����� 1692-495");
		GDWatersidePark.setDescription("�������� 10ȣ, 11ȣ, 12ȣ, 13ȣ, 14ȣ ���� ��å�ΰ� �־��.");
		GDWatersidePark.setOpeningTime("00:00~24:00");
		GDWatersidePark.setPrice(0);
		GDWatersidePark.setWalkingTime("12:20~12:50");
		GDWatersidePark.setLeaderNumber("010-8024-4282");
		GDWatersidePark.setFilename("G4282.jpg");

		BDREcologicalPark.setCourseId("B4240");
		BDREcologicalPark.setName("��ٸ����°���");
		BDREcologicalPark.setLocation("��⵵ ���ý� �׹�6�� 20");
		BDREcologicalPark.setDescription("��ٸ� �ѷ��� A�ڽ��� B�ڽ��� �� 2���� ��å�ΰ� �־��.");
		BDREcologicalPark.setOpeningTime("06:00~22:00");
		BDREcologicalPark.setPrice(0);
		BDREcologicalPark.setWalkingTime("14:00~15:00");
		BDREcologicalPark.setLeaderNumber("010-8024-4240");
		BDREcologicalPark.setFilename("B4240.jpg");
		
		PTLake.setCourseId("P8687");
		PTLake.setName("����ȣ");
		PTLake.setLocation("��⵵ ���ý� ������ ����ȣ�� 159");
		PTLake.setDescription("����������ũ�� ���� �� �־��.");
		PTLake.setOpeningTime("10:00~20:00");
		PTLake.setPrice(1000);
		PTLake.setWalkingTime("11:30~12:30");
		PTLake.setLeaderNumber("010-8024-8687");
		PTLake.setFilename("P8687.jpg");
		
		DDSNeighborhoodPark.setCourseId("D2669");
		DDSNeighborhoodPark.setName("������ �ٸ�����");
		DDSNeighborhoodPark.setLocation("��⵵ ���ý� ������ �� 84-14");
		DDSNeighborhoodPark.setDescription("�ܵ���� �����縦 ���� �� �־��.");
		DDSNeighborhoodPark.setOpeningTime("06:00~18:00");
		DDSNeighborhoodPark.setPrice(3000);
		DDSNeighborhoodPark.setWalkingTime("07:30~09:00");
		DDSNeighborhoodPark.setLeaderNumber("010-8701-2669");
		DDSNeighborhoodPark.setFilename("D2669.jpg");
		
		TBCForest.setCourseId("T4628");
		TBCForest.setName("���� �뺹õ �ٶ��潣");
		TBCForest.setLocation("��⵵ ���ý� ������ 717");
		TBCForest.setDescription("�ݰ��ҳ�����, �볪����, ��ǳ������, �س����� �� �پ��� ������ ��å�� �� �־��.");
		TBCForest.setOpeningTime("09:00~17:00");
		TBCForest.setPrice(2500);
		TBCForest.setWalkingTime("14:00~16:00");
		TBCForest.setLeaderNumber("010-2449-4628");
		TBCForest.setFilename("T4628.jpg");
		
		SPGarden.setCourseId("S4815");
		SPGarden.setName("��ǳ����");
		SPGarden.setLocation("��⵵ ���ý� ����� �ø� 502-6");
		SPGarden.setDescription("��ȭ������, ������������, ��������, �����������, �׸��� �̷ο��� ��å�� �� �־��.");
		SPGarden.setOpeningTime("09:00~18:00");
		SPGarden.setPrice(5000);
		SPGarden.setWalkingTime("11:00~15:00");
		SPGarden.setLeaderNumber("010-6688-4815");
		SPGarden.setFilename("S4815.jpg");
		
		PTSG.setCourseId("P9990");
		PTSG.setName("���ü���");
		PTSG.setLocation("��⵵ ���ý� ����5�� 80");
		PTSG.setDescription("���߸���-������-��ܱ�-����-��ȿ��-�ұݹ��-������-Ȳ������-�Ѹ���-����-���ձ�-���������� 12�ڽ��� �Բ� �ɾ��.");
		PTSG.setOpeningTime("00:00~24:00");
		PTSG.setPrice(0);
		PTSG.setWalkingTime("09:00~18:00");
		PTSG.setLeaderNumber("010-4102-9990");
		PTSG.setFilename("P9990.jpg");
		
		GGVillage.setCourseId("G8687");
		GGVillage.setName("�ǰ�����");
		GGVillage.setLocation("��⵵ ���ý� ������ �ǰ��� 379-33");
		GGVillage.setDescription("�ǰ����� ȣ�� �ֺ� ��å�θ� �ɾ��.");
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