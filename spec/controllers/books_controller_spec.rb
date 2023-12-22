RSpec.describe BooksController, type: :controller do
    describe 'GET #index' do
        it 'return a successful response' do
            get :index
            expect(response).to be_successful
        end
        
        it 'return JSON response with books data' do
            book = create(:book)
            get :index 
            expect(JSON.parse(response.body)).to include(
                'title' => book.title,
                'year_publication' => book.year_publication
            )
        end
    end
end
