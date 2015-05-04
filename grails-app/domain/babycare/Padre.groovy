package babycare

class Padre{
	
	String nombre
	String apellido
	String tipoDocumento
	String documento
	int telefono
	String direccion
	int edad
	double pesoPadre
	double tallaPadre
	String enfermedadesActuales
	String tratamientos
	
	static belongsTo = [hijo:Paciente]
	
    static constraints = {
		nombre(blank : false, nullable : false)
		apellido(blank : false, nullable : false)
		tipoDocumento(nullable : false, inList : ["Tarjeta de identidad","Cedula","Pasaporte","Registro civil"])
		documento(blank : false, nullable : false, unique : true,length : 5..20,matches : "([A-Z]*)([0-9]+)")
		edad(blank : false, nullable : false, size : 1..120)
		pesoPadre (blank: false);
		tallaPadre (blank: false);
		enfermedadesActuales(matches: "^(?=.*[A-Z])(?=.*[a-z])([a-zA-Z]+)");
		tratamientos(matches: "^(?=.*[A-Z])(?=.*[a-z])([a-zA-Z]+)");		
    }
}
