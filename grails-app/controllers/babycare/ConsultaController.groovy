package babycare



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ConsultaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Consulta.list(params), model:[consultaInstanceCount: Consulta.count()]
    }

    def show(Consulta consultaInstance) {
        respond consultaInstance
    }

    def create() {
        respond new Consulta(params)
    }

    @Transactional
    def save(Consulta consultaInstance) {
        if (consultaInstance == null) {
            notFound()
            return
        }

        if (consultaInstance.hasErrors()) {
            respond consultaInstance.errors, view:'create'
            return
        }

        consultaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'consulta.label', default: 'Consulta'), consultaInstance.id])
                redirect consultaInstance
            }
            '*' { respond consultaInstance, [status: CREATED] }
        }
    }

    def edit(Consulta consultaInstance) {
        respond consultaInstance
    }

    @Transactional
    def update(Consulta consultaInstance) {
        if (consultaInstance == null) {
            notFound()
            return
        }

        if (consultaInstance.hasErrors()) {
            respond consultaInstance.errors, view:'edit'
            return
        }

        consultaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Consulta.label', default: 'Consulta'), consultaInstance.id])
                redirect consultaInstance
            }
            '*'{ respond consultaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Consulta consultaInstance) {

        if (consultaInstance == null) {
            notFound()
            return
        }

        consultaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Consulta.label', default: 'Consulta'), consultaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'consulta.label', default: 'Consulta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
