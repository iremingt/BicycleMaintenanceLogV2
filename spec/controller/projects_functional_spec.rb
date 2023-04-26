require "rails_helper"
RSpec.describe LogsController, :type => :controller do
    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end
        context "GET #show" do
            let!(:log) { Log.create(title: "Test title", description: "Test description", date: 4022023) }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end

        end

	    context "GET #edit" do
	        let!(:project) { Log.create(title: "Test title", description: "Test description", date: 4022023) }
	        it "returns a success response" do
	            expect(response).to have_http_status(:ok)
	        end
	    end

    end
end
