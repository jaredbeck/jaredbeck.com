RSpec.describe HomeController do
  render_views

  describe '#index' do
    it 'succeeds' do
      get :index
      expect(response).to be_success
      expect(response).to render_template :index
    end
  end
end
