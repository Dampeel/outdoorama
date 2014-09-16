package outdoorama
	
import spock.lang.*

@TestFor(EvenementController)
@Mock(Evenement)
class EvenementControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.evenementInstanceList
            model.evenementInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.evenementInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def evenement = new Evenement()
            evenement.validate()
            controller.save(evenement)

        then:"The create view is rendered again with the correct model"
            model.evenementInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            evenement = new Evenement(params)

            controller.save(evenement)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/evenement/show/1'
            controller.flash.message != null
            Evenement.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def evenement = new Evenement(params)
            controller.show(evenement)

        then:"A model is populated containing the domain instance"
            model.evenementInstance == evenement
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def evenement = new Evenement(params)
            controller.edit(evenement)

        then:"A model is populated containing the domain instance"
            model.evenementInstance == evenement
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/evenement/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def evenement = new Evenement()
            evenement.validate()
            controller.update(evenement)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.evenementInstance == evenement

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            evenement = new Evenement(params).save(flush: true)
            controller.update(evenement)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/evenement/show/$evenement.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/evenement/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def evenement = new Evenement(params).save(flush: true)

        then:"It exists"
            Evenement.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(evenement)

        then:"The instance is deleted"
            Evenement.count() == 0
            response.redirectedUrl == '/evenement/index'
            flash.message != null
    }
}
