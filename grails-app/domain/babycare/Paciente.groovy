package babycare

class Paciente extends Afiliado{
	
	double peso
	double talla
	double pc
	String tipoNacimiento
	String grupoSanguineo
	char rh
	Date fechaNacimiento
	double pesoNacimiento
	double tallaNacimiento
	double pcNacimiento
	int edadGestacional
	
    static constraints = {
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
    }
}
