package babycare



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ResponsableController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Responsable.list(params), model:[tutorInstanceCount: Responsable.count()]
    }

    def show(Responsable tutorInstance) {
        respond tutorInstance
    }

    def create() {
        respond new Responsable(params)
    }

    @Transactional
    def save(Responsable tutorInstance) {
        if (tutorInstance == null) {
            notFound()
            return
        }

        if (tutorInstance.hasErrors()) {
            respond tutorInstance.errors, view:'create'
            return
        }

        tutorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tutor.label', default: 'Tutor'), tutorInstance.id])
                redirect tutorInstance
            }
            '*' { respond tutorInstance, [status: CREATED] }
        }
    }

    def edit(Responsable tutorInstance) {
        respond tutorInstance
    }

    @Transactional
    def update(Responsable tutorInstance) {
        if (tutorInstance == null) {
            notFound()
            return
        }

        if (tutorInstance.hasErrors()) {
            respond tutorInstance.errors, view:'edit'
            return
        }

        tutorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Tutor.label', default: 'Tutor'), tutorInstance.id])
                redirect tutorInstance
            }
            '*'{ respond tutorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Responsable tutorInstance) {

        if (tutorInstance == null) {
            notFound()
            return
        }

        tutorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Tutor.label', default: 'Tutor'), tutorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tutor.label', default: 'Tutor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
