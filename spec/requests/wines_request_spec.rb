require 'rails_helper'

RSpec.describe "Wines", type: :request do

    describe 'GET index ' do
        context "Singed in" do
            
            before do
                user = User.create(email: "test@test.com")
                login_as(user, :scope => :user)
            end

            it 'Check wines create and show in index' do
                wine = Wine.create(name: 'Wine name')
                wines = Wine.all
                get "/wines/"
                expect(assigns(:wines)).to eq(wines)
            end

       
            it 'renders the index template' do
                get "/wines/"
                expect(response).to render_template('index')
            end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
        end
    end

    describe 'GET show' do
        
        context "Singed in" do
            
            before do
                
                user = User.create(email: "test@test.com")
                login_as(user, :scope => :user)
            end

            it 'renders the show template' do
                wine = Wine.create(name: "Test")
                id = wine.id
                get "/wines/#{id}/"
                expect(response).to render_template('wines/show')
            end
        end
    end
end