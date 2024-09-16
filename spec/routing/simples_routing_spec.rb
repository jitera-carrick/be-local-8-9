require "rails_helper"

RSpec.describe SimplesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/simples").to route_to("simples#index")
    end

    it "routes to #new" do
      expect(get: "/simples/new").to route_to("simples#new")
    end

    it "routes to #show" do
      expect(get: "/simples/1").to route_to("simples#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/simples/1/edit").to route_to("simples#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/simples").to route_to("simples#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/simples/1").to route_to("simples#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/simples/1").to route_to("simples#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/simples/1").to route_to("simples#destroy", id: "1")
    end
  end
end
