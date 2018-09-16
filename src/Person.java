
public class Person {
public static void main(String[] args) {
	PersonStatic.person();
	PersonStatic john = new PersonStatic("john", 10);
	PersonStatic grace = new PersonStatic("grace", 11);
	john.human();
	grace.human();
	PersonStatic.age = 15;
	grace.height = 5;
	john.person();
	grace.person();
	System.out.println(grace.height);
	System.out.println(john.height);
	
}
}
