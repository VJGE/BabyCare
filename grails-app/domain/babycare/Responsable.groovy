package babycare

class Responsable extends Afiliado {
	
	int registroEPS
	Paciente hijos
	static hasMany=[paciente:Paciente]						//un tutor puede tener varios hijos
	
    static constraints = {
		registroEPS blank:false, nullable:false			//en caso de que se este ingresando un usuario no puede ser blank, null por si algo
    }
}
