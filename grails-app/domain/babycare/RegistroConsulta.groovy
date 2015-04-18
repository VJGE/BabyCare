package babycare

class RegistroConsulta {
	
	String fecha   //en caso de que sea mejor otro tipo de dato puede ser cambiado
	String motivoConsulta 
	String conceptoMedico
	static belongsTo=[historiaMedica:HistoriaMedica]		//herencia
	
    static constraints = {		
		fecha nullable:false							//esta se deberia auto-asignar con la fecha del momento de diligenciamiento
		motivoConsulta blank:false, minsize:5, maxsize:70		//los 70 caracteres deberian garantizar ser concisos 
		conceptoMedico blank:false, minsize:10				//no tiene un maximo porque un concepto medico no se puede limitar
    }
}
