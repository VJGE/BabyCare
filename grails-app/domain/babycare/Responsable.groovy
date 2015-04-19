package babycare

class Responsable extends Afiliado {
	
	String parentesco
	String contraseña
	
	static hasMany=[paciente:Paciente]						//un tutor puede tener varios hijos
	
    static constraints = {
		parentesco (blank: false, nullable: false, inList:["Padre", "Madre", "Hermano(a)", "Tio(a)", "Abuelo(a)"])
		contraseña (blank:false, nullable:false, unique:true)	
    }
}
