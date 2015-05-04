package babycare

class Afiliado{

	String nombre
	String apellido
	String tipoDocumento
	String documento
	int telefono
	String direccion
	int edad
	String tipoAfiliado
	String ciudad
	String estadoCivil
	int nivelSalarial
	String tipoPlan
	String ipsPrimaria
	String eps
	String ocupacion	
	
    static constraints = {
		nombre(blank : false, nullable : false)
		apellido(blank : false, nullable : false)
		tipoDocumento(nullable : false, inList : ["Tarjeta de identidad","Cedula","Pasaporte","Registro civil"] ,
			matches : "([A-Z]*)([0-9]+)")
		documento(blank : false, nullable : false, unique : true,length : 5..20)
		edad(blank : false, nullable : false, size : 1..120)
		tipoAfiliado (blank: false , inList:["Contribuyente","Beneficiario"] );
		ciudad (blank: false , size: 2..20);
		estadoCivil (blank: false , inList:["Soltero","Casado","Union libre","Divorciado","Viudo"])
		nivelSalarial (blank: false, min:1 , max:3);//Exiten 3 niveles salariales: Nivel 1 hasta $1288699, Nivel 2 entre 1288700 y 3221750 y Nivel 3 desde 3221751 en adelante. 
		tipoPlan (blank: false , inList:["POS Contributivo", "Medicina prepagada"])
		ipsPrimaria (blank: false)
		eps (blank: false , size: 2..20)
		ocupacion (blank: false , inList:["Menor de edad", "Estudiante", "Profesional"])
    }
}
