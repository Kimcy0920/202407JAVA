package classExample;

public class FieldInitValueExample {

	public static void main(String[] args) {
		FieldInitValue fiv = new FieldInitValue();
		
		// 필드 자동 호출
		System.out.println(fiv.byteField);
		System.out.println(fiv.shortField);
		System.out.println(fiv.intField);
		System.out.println(fiv.longField);
		System.out.println(fiv.booleanField);
		System.out.println(fiv.charField);
		System.out.println(fiv.floatField);
		System.out.println(fiv.doubleField);
		System.out.println(fiv.arrField);
		System.out.println(fiv.referenceField);
	}

}
