package babycare

class Persona {
	
	String nombre
	String apellido
	String tipoDocumento
	String documento
	int telefono
	String direccion
	int edad

    static constraints = {
		nombre(blank : false, nullable : false)
		apellido(blank : false, nullable : false)
		tipoDocumento(nullable : false, inList : ["Tarjeta de identidad","Cedula","Pasaporte","Registro civil"] ,
			matches : "([A-Z]*)([0-9]+)")
		documento(blank : false, nullable : false, unique : true,length : 5..20)
		edad(blank : false, nullable : false, size : 1..120)
    }
}
