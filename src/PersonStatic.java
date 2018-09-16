
public class PersonStatic {
	
	static int age;
	static int height;
	String name;
	int grade;
	
	PersonStatic (String name, int grade){
		this.name = name;
		this.grade = grade;
	}
	
	public static void person() {
		System.out.println(age);
		age = 5;
		
	}
	public void human() {
		System.out.println(name);
	}
}
