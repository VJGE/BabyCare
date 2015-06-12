package babycare



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MedicoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	static scaffold = Medico
	
	def LoginService
	def login(){}
	def mainMedico(){}

	def inicio(){
		render(view:"/index")
	}
	
	def handleLogin(){
		if (session.authStatus == 'Logged'){
			flash.message = 'Hay una sesión activa!!'
		}
		else{
			
			if(!params.documento || !params.contrasenia){
				redirect(action:'login')
			}
			else{
				def medico = LoginService.loginMedico(session,params)
				if(!medico){
					flash.message='Usuario no encontrado'
					redirect(action:'login')
					return
				}
				else{
					session.medico = medico
				   redirect(action:'mainMedico')
				}		
			}
		}		
	}
	
	def logout(){
		LoginService.logout(session)
		if(session.medico){
			session.medico=null
			render(view:"/index")
		}
	}
	
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Medico.list(params), model:[medicoInstanceCount: Medico.count()]
    }

    def show(Medico medicoInstance) {
        respond medicoInstance
    }

    def create() {
        respond new Medico(params)
    }

    @Transactional
    def save(Medico medicoInstance) {
        if (medicoInstance == null) {
            notFound()
            return
        }

        if (medicoInstance.hasErrors()) {
            respond medicoInstance.errors, view:'create'
            return
        }

		if(params.contrasenia ==~ "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])([a-zA-Z0-9]+)"){
			medicoInstance.contrasenia= medicoInstance.contrasenia.encodeAsMD5()
			println "${medicoInstance.contrasenia}"
			medicoInstance.save flush: true
		}else{
			flash.message = message('Contraseña inválida')
		}

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'medico.label', default: 'Medico'), medicoInstance.id])
                redirect medicoInstance
            }
            '*' { respond medicoInstance, [status: CREATED] }
        }
    }

    def edit(Medico medicoInstance) {
        respond medicoInstance
    }

    @Transactional
    def update(Medico medicoInstance) {
        if (medicoInstance == null) {
            notFound()
            return
        }

        if (medicoInstance.hasErrors()) {
            respond medicoInstance.errors, view:'edit'
            return
        }

        medicoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Medico.label', default: 'Medico'), medicoInstance.id])
                redirect medicoInstance
            }
            '*'{ respond medicoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Medico medicoInstance) {

        if (medicoInstance == null) {
            notFound()
            return
        }

        medicoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Medico.label', default: 'Medico'), medicoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'medico.label', default: 'Medico'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
