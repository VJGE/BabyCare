package babycare



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RegistroConsultaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RegistroConsulta.list(params), model:[registroConsultaInstanceCount: RegistroConsulta.count()]
    }

    def show(RegistroConsulta registroConsultaInstance) {
        respond registroConsultaInstance
    }

	def verConsulta(RegistroConsulta registroConsultaInstance){
		respond registroConsultaInstance
		
	}

	
    def create() {
        respond new RegistroConsulta(params)
    }

    @Transactional
    def save(RegistroConsulta registroConsultaInstance) {
        if (registroConsultaInstance == null) {
            notFound()
            return
        }

        if (registroConsultaInstance.hasErrors()) {
            respond registroConsultaInstance.errors, view:'create'
            return
        }

        registroConsultaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'registroConsulta.label', default: 'RegistroConsulta'), registroConsultaInstance.id])
                redirect registroConsultaInstance
            }
            '*' { respond registroConsultaInstance, [status: CREATED] }
        }
    }

    def edit(RegistroConsulta registroConsultaInstance) {
        respond registroConsultaInstance
    }

    @Transactional
    def update(RegistroConsulta registroConsultaInstance) {
        if (registroConsultaInstance == null) {
            notFound()
            return
        }

        if (registroConsultaInstance.hasErrors()) {
            respond registroConsultaInstance.errors, view:'edit'
            return
        }

        registroConsultaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RegistroConsulta.label', default: 'RegistroConsulta'), registroConsultaInstance.id])
                redirect registroConsultaInstance
            }
            '*'{ respond registroConsultaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RegistroConsulta registroConsultaInstance) {

        if (registroConsultaInstance == null) {
            notFound()
            return
        }

        registroConsultaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RegistroConsulta.label', default: 'RegistroConsulta'), registroConsultaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'registroConsulta.label', default: 'RegistroConsulta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
