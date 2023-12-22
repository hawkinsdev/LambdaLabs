require 'rails_helper'

RSpec.describe AutorsController, type: :controller do
    describe 'GET #index' do
        it 'return a successful response' do
            get :index
            expect(response).to be_successful
        end
        
        it 'return JSON response with autors data' do
            autor = create(:autor)
            get :index 
            expect(JSON.parse(response.body)).to include(
                'name' => autor.name,
                'date_birth' => book.date_birth
            )
        end
    end
end
