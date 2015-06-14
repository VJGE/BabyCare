package babycare

class Consulta {
	
	String documentoPaciente
	String documentoMedico
	String lugar
	String tipoDeConsulta
	Date date
	boolean finalizada
	boolean asistencia 

    static constraints = {
		documentoPaciente nullable:false
		documentoMedico nullable:false
		date nullable:false
		finalizada nullable:false
		asistencia nullable:false
    }
}
