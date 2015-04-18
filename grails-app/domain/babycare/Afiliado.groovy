package babycare

class Afiliado extends Persona {

	String tipoAfiliado
	String ciudad
	String estadoCivil
	int nivelSalarial
	String tipoPlan
	String ipsPrimaria
	String eps
	String ocupacion	
	
    static constraints = {
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
