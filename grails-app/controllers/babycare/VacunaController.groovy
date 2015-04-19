package babycare



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VacunaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Vacuna.list(params), model:[vacunaInstanceCount: Vacuna.count()]
    }

    def show(Vacuna vacunaInstance) {
        respond vacunaInstance
    }

    def create() {
        respond new Vacuna(params)
    }

    @Transactional
    def save(Vacuna vacunaInstance) {
        if (vacunaInstance == null) {
            notFound()
            return
        }

        if (vacunaInstance.hasErrors()) {
            respond vacunaInstance.errors, view:'create'
            return
        }

        vacunaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vacuna.label', default: 'Vacuna'), vacunaInstance.id])
                redirect vacunaInstance
            }
            '*' { respond vacunaInstance, [status: CREATED] }
        }
    }

    def edit(Vacuna vacunaInstance) {
        respond vacunaInstance
    }

    @Transactional
    def update(Vacuna vacunaInstance) {
        if (vacunaInstance == null) {
            notFound()
            return
        }

        if (vacunaInstance.hasErrors()) {
            respond vacunaInstance.errors, view:'edit'
            return
        }

        vacunaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Vacuna.label', default: 'Vacuna'), vacunaInstance.id])
                redirect vacunaInstance
            }
            '*'{ respond vacunaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Vacuna vacunaInstance) {

        if (vacunaInstance == null) {
            notFound()
            return
        }

        vacunaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Vacuna.label', default: 'Vacuna'), vacunaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'vacuna.label', default: 'Vacuna'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
