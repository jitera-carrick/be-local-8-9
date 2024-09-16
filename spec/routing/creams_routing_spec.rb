require "rails_helper"

RSpec.describe CreamsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/creams").to route_to("creams#index")
    end

    it "routes to #new" do
      expect(get: "/creams/new").to route_to("creams#new")
    end

    it "routes to #show" do
      expect(get: "/creams/1").to route_to("creams#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/creams/1/edit").to route_to("creams#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/creams").to route_to("creams#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/creams/1").to route_to("creams#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/creams/1").to route_to("creams#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/creams/1").to route_to("creams#destroy", id: "1")
    end
  end
end
