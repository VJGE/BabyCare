package babycare

class RegistroConsulta {
	
	Date fecha  
	String tipoConsulta
	String conceptoMedico
	String observaciones
	String lugarConsulta
	
	static belongsTo=[historiaClinica:HistoriaClinica]		
	
    static constraints = {		
		fecha (nullable:false );							
		tipoConsulta (blank:false, size:5..70);
		conceptoMedico (blank:false, minsize:10);
		lugarConsulta (blank: false);
    }
}
