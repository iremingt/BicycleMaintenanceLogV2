require "rails_helper"

RSpec.describe MaintenanceLogsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/maintenance_logs").to route_to("maintenance_logs#index")
    end

    it "routes to #new" do
      expect(get: "/maintenance_logs/new").to route_to("maintenance_logs#new")
    end

    it "routes to #show" do
      expect(get: "/maintenance_logs/1").to route_to("maintenance_logs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/maintenance_logs/1/edit").to route_to("maintenance_logs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/maintenance_logs").to route_to("maintenance_logs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/maintenance_logs/1").to route_to("maintenance_logs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/maintenance_logs/1").to route_to("maintenance_logs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/maintenance_logs/1").to route_to("maintenance_logs#destroy", id: "1")
    end
  end
end
