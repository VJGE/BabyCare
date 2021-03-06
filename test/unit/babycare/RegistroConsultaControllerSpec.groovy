package babycare



import grails.test.mixin.*
import spock.lang.*

@TestFor(RegistroConsultaController)
@Mock(RegistroConsulta)
class RegistroConsultaControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.registroConsultaInstanceList
            model.registroConsultaInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.registroConsultaInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def registroConsulta = new RegistroConsulta()
            registroConsulta.validate()
            controller.save(registroConsulta)

        then:"The create view is rendered again with the correct model"
            model.registroConsultaInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            registroConsulta = new RegistroConsulta(params)

            controller.save(registroConsulta)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/registroConsulta/show/1'
            controller.flash.message != null
            RegistroConsulta.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def registroConsulta = new RegistroConsulta(params)
            controller.show(registroConsulta)

        then:"A model is populated containing the domain instance"
            model.registroConsultaInstance == registroConsulta
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def registroConsulta = new RegistroConsulta(params)
            controller.edit(registroConsulta)

        then:"A model is populated containing the domain instance"
            model.registroConsultaInstance == registroConsulta
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/registroConsulta/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def registroConsulta = new RegistroConsulta()
            registroConsulta.validate()
            controller.update(registroConsulta)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.registroConsultaInstance == registroConsulta

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            registroConsulta = new RegistroConsulta(params).save(flush: true)
            controller.update(registroConsulta)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/registroConsulta/show/$registroConsulta.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/registroConsulta/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def registroConsulta = new RegistroConsulta(params).save(flush: true)

        then:"It exists"
            RegistroConsulta.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(registroConsulta)

        then:"The instance is deleted"
            RegistroConsulta.count() == 0
            response.redirectedUrl == '/registroConsulta/index'
            flash.message != null
    }
}
