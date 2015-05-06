package babycare



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ResponsableController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	static scaffold = Medico
	def login(){}
	def mainResp(){}
	def mainMedico(){}

	def handleLogin(){
		def responsable = Responsable.findByDocumento(params.documento)
		def contra = Responsable.findByContrasenia(params.contrasenia)
		if(!responsable){
			flash.message='Usuario no encontrado'
			redirect(action:'login')
			return
		}else{
			 if(!contra){
				 flash.message='Contraseña incorrecta'
				 redirect(action:'login')
				 return
			 }else{
				 session.responsable = responsable
				 redirect(action:'mainResp')
			 }
		}
	}
	
	def logout(){
		if(session.responsable){
			session.responsable=null
			redirect(action:'login')
		}
	}
	
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Responsable.list(params), model:[responsableInstanceCount: Responsable.count()]
    }

    def show(Responsable responsableInstance) {
        respond responsableInstance
    }

    def create() {
        respond new Responsable(params)
    }

    @Transactional
    def save(Responsable responsableInstance) {
        if (responsableInstance == null) {
            notFound()
            return
        }

        if (responsableInstance.hasErrors()) {
            respond responsableInstance.errors, view:'create'
            return
        }

        responsableInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'responsable.label', default: 'Responsable'), responsableInstance.id])
                redirect responsableInstance
            }
            '*' { respond responsableInstance, [status: CREATED] }
        }
    }

    def edit(Responsable responsableInstance) {
        respond responsableInstance
    }

    @Transactional
    def update(Responsable responsableInstance) {
        if (responsableInstance == null) {
            notFound()
            return
        }

        if (responsableInstance.hasErrors()) {
            respond responsableInstance.errors, view:'edit'
            return
        }

        responsableInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Responsable.label', default: 'Responsable'), responsableInstance.id])
                redirect responsableInstance
            }
            '*'{ respond responsableInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Responsable responsableInstance) {

        if (responsableInstance == null) {
            notFound()
            return
        }

        responsableInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Responsable.label', default: 'Responsable'), responsableInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'responsable.label', default: 'Responsable'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
