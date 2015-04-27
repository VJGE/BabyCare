package babycare

class Vacuna {

	String nombreVacuna
	int edadAplicacion
	Date fechaAplicacion
	Date proximaCita
	String laboratorio
	String numeroLote
	String centro
	String observaciones
	
	static belongsTo = [pacienteV : Paciente]
	
    static constraints = {
		nombreVacuna (blank: false, nullable: false, size:2..20);
		edadAplicacion (blank: false, nullable: false, min:0, max:6);
		fechaAplicacion (blank: false, nullable: false);
		laboratorio (blank: false, nullable: false);
		numeroLote (blank: false, nullable: false);
		centro (blank: false);
    }
}
