package babycare

class Padre extends Persona {
	
	double pesoPadre
	double tallaPadre
	String enfermedadesActuales
	String tratamientos
	
    static constraints = {
		pesoPadre (blank: false);
		tallaPadre (blank: false);
		enfermedadesActuales(matches: "^(?=.*[A-Z])(?=.*[a-z])([a-zA-Z]+)");
		tratamientos(matches: "^(?=.*[A-Z])(?=.*[a-z])([a-zA-Z]+)");		
    }
}
