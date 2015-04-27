package babycare

class RegistroConsulta {
	
	Date fecha  
	String tipoConsulta
	String conceptoMedico
	String observaciones 
	
	static belongsTo=[historiaClinica:HistoriaClinica]		
	
    static constraints = {		
		fecha (nullable:false );							
		tipoConsulta (blank:false, size:5..70);
		conceptoMedico (blank:false, minsize:10);				
    }
}
