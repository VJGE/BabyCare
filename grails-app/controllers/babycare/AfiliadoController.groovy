package babycare



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AfiliadoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Afiliado.list(params), model:[afiliadoInstanceCount: Afiliado.count()]
    }

    def show(Afiliado afiliadoInstance) {
        respond afiliadoInstance
    }

    def create() {
        respond new Afiliado(params)
    }

    @Transactional
    def save(Afiliado afiliadoInstance) {
        if (afiliadoInstance == null) {
            notFound()
            return
        }

        if (afiliadoInstance.hasErrors()) {
            respond afiliadoInstance.errors, view:'create'
            return
        }

        afiliadoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'afiliado.label', default: 'Afiliado'), afiliadoInstance.id])
                redirect afiliadoInstance
            }
            '*' { respond afiliadoInstance, [status: CREATED] }
        }
    }

    def edit(Afiliado afiliadoInstance) {
        respond afiliadoInstance
    }

    @Transactional
    def update(Afiliado afiliadoInstance) {
        if (afiliadoInstance == null) {
            notFound()
            return
        }

        if (afiliadoInstance.hasErrors()) {
            respond afiliadoInstance.errors, view:'edit'
            return
        }

        afiliadoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Afiliado.label', default: 'Afiliado'), afiliadoInstance.id])
                redirect afiliadoInstance
            }
            '*'{ respond afiliadoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Afiliado afiliadoInstance) {

        if (afiliadoInstance == null) {
            notFound()
            return
        }

        afiliadoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Afiliado.label', default: 'Afiliado'), afiliadoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'afiliado.label', default: 'Afiliado'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
