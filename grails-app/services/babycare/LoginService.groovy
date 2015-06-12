package babycare

import grails.transaction.Transactional

@Transactional
class LoginService {

	def serviceMethod() {
	}

	Responsable loginResponsable(session, params){
		def responsable = Responsable.findByDocumento(params.documento)
		if (!responsable){
			return
		}else{
			if(responsable.contrasenia==params.contrasenia.encodeAsMD5()) {
				session.authStatus = 'logged'
				return responsable
			}
			else{
				return
			}
		}
	}
	
	Medico loginMedico(session, params){
		def medico = Medico.findByDocumento(params.documento)
		if (!medico){
			return
		}else{
			if(medico.contrasenia==params.contrasenia.encodeAsMD5()) {
				session.authStatus = 'logged'
				return medico
			}
			else{
				return
			}
		}
	}
	


	def logout (session) {
		session.authStatus = null
		session
	}
}