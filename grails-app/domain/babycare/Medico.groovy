package babycare

class Medico{
	
	String nombre
	String apellido
	String tipoDocumento
	String documento
	int telefono
	String direccion
	int edad
	String especialidad
	String registroMedico
	String usuario
	String contrasenia
	

	static hasMany = [consultas: RegistroConsulta, pacientes:Paciente]
	
    static constraints = {
		nombre(blank : false, nullable : false)
		apellido(blank : false, nullable : false)
		tipoDocumento(nullable : false, inList : ["Tarjeta de identidad","Cedula","Pasaporte","Registro civil"])
		documento(blank : false, nullable : false, unique : true,length : 5..20,matches : "([A-Z]*)([0-9]+)")
		edad(blank : false, nullable : false, size : 1..120)
		especialidad(nullable : false)
		registroMedico(blank : false, nullable : false, matches : "([a-zA-Z0-9]*)")
		usuario(blank : false, nullable : false, unique : true)
		contrasenia(blank : false, nullable : false, length : 5..20,password:true)
    }
}