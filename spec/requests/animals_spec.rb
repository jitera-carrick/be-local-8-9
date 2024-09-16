 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/animals", type: :request do
  # Animal. As you add validations to Animal, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Animal.create! valid_attributes
      get animals_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      animal = Animal.create! valid_attributes
      get animal_url(animal)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_animal_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      animal = Animal.create! valid_attributes
      get edit_animal_url(animal)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Animal" do
        expect {
          post animals_url, params: { animal: valid_attributes }
        }.to change(Animal, :count).by(1)
      end

      it "redirects to the created animal" do
        post animals_url, params: { animal: valid_attributes }
        expect(response).to redirect_to(animal_url(Animal.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Animal" do
        expect {
          post animals_url, params: { animal: invalid_attributes }
        }.to change(Animal, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post animals_url, params: { animal: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested animal" do
        animal = Animal.create! valid_attributes
        patch animal_url(animal), params: { animal: new_attributes }
        animal.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the animal" do
        animal = Animal.create! valid_attributes
        patch animal_url(animal), params: { animal: new_attributes }
        animal.reload
        expect(response).to redirect_to(animal_url(animal))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        animal = Animal.create! valid_attributes
        patch animal_url(animal), params: { animal: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested animal" do
      animal = Animal.create! valid_attributes
      expect {
        delete animal_url(animal)
      }.to change(Animal, :count).by(-1)
    end

    it "redirects to the animals list" do
      animal = Animal.create! valid_attributes
      delete animal_url(animal)
      expect(response).to redirect_to(animals_url)
    end
  end
end
