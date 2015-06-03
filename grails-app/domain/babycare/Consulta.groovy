package babycare

class Consulta {
	
	String documentoPaciente
	String documentoMedico
	Date date

    static constraints = {
		documentoPaciente nullable:false
		documentoMedico nullable:false
		date nullable:false
    }
}
