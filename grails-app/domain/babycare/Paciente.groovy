package babycare

class Paciente{
	
	String nombre
	String apellido
	String sexo
	String tipoDocumento
	String documento
	String telefono
	String direccion
	int edad
	int edadMeses
	String tipoAfiliado
	String ciudad
	String estadoCivil
	int nivelSalarial
	String tipoPlan
	String ipsPrimaria
	String eps
	String ocupacion
	double peso
	double talla
	double pc
	String tipoNacimiento
	String grupoSanguineo
	String rh
	Date fechaNacimiento
	double pesoNacimiento
	double tallaNacimiento
	double pcNacimiento
	int edadGestacional
	byte[] foto
	
	static hasOne=[historiaClinica: HistoriaClinica]
	static hasMany = [padres:Padre, vacunas:Vacuna]
	static belongsTo = [responsable:Responsable]
	
	static mapping={
		foto length:2000000
	}
		
	static constraints = {
		nombre(blank : false, nullable : false)
		apellido(blank : false, nullable : false)
		sexo(inList:["Maculino","Femenino"])
		tipoDocumento(nullable : false, inList : ["Tarjeta de identidad","Cedula","Pasaporte","Registro civil"])
		documento(blank : false, nullable : false, unique : true,length : 5..20,matches : "([A-Z]*)([0-9]+)")
		edad(blank : false, nullable : false, size : 1..120)
		edadMeses(min:1 , max:11)
		tipoAfiliado (blank: false , inList:["Contribuyente","Beneficiario"] );
		ciudad (blank: false , size: 2..20);
		estadoCivil (blank: false , inList:["Soltero","Casado","Union libre","Divorciado","Viudo"])
		nivelSalarial (blank: false, min:1 , max:3);//Exiten 3 niveles salariales: Nivel 1 hasta $1288699, Nivel 2 entre 1288700 y 3221750 y Nivel 3 desde 3221751 en adelante.
		tipoPlan (blank: false , inList:["POS Contributivo", "Medicina prepagada"])
		ipsPrimaria (blank: false)
		eps (blank: false , size: 2..20)
		ocupacion (blank: false , inList:["Menor de edad", "Estudiante", "Profesional"])
		peso (blank:false);
		talla (blank:false);
		pc (blank:false);
		tipoNacimiento (blank:false , inList: ["Parto vaginal" , "Cesarea"]);
		grupoSanguineo (blank:false, inList: ["A","B","AB","O"]);
		rh (blank:false, inList: ["+","-"]);
		fechaNacimiento (blank:false);
		pesoNacimiento (blank:false);
		tallaNacimiento (blank:false);
		pcNacimiento (blank:false);
		edadGestacional (blank:false, max: 45);
		historiaClinica(nullable:true);
		foto (nullable:true);
	}	
}

