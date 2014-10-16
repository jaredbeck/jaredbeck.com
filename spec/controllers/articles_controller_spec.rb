require 'spec_helper'

describe ArticlesController do
  render_views

  describe '#index' do
    it 'succeeds' do
      get :index
      expect(response).to be_success
      expect(assigns(:articles)).to_not be_nil
    end
  end

  context 'as a user' do
    before do
      sign_in create :user
    end

    describe '#new' do
      it 'succeeds' do
        get :new
        expect(response).to be_success
      end
    end

    describe '#create' do
      it 'should create an article' do
        expect {
          post :create, article: attributes_for(:article)
        }.to change { Article.count }.by(+1)
        expect(assigns(:article)).to_not be_nil
        expect(response).to redirect_to article_path(assigns(:article))
      end
    end

    describe '#show' do
      it 'renders show and assigns an article' do
        a = create :article
        get :show, id: a.id
        expect(response).to be_success
        expect(response).to render_template :show
        expect(assigns(:article)).to_not be_nil
      end
    end

    describe '#edit' do
      it 'renders edit and assigns an article' do
        a = create :article
        get :edit, id: a.id
        expect(response).to be_success
        expect(response).to render_template :edit
        expect(assigns(:article)).to_not be_nil
      end
    end

    describe '#update' do
      it 'updates an article record' do
        a = create :article, title: 'kiwis'
        expect {
          put :update, id: a.id, article: {title: 'bananas'}
        }.to change { a.reload.title }.from('kiwis').to('bananas')
        expect(assigns(:article)).to_not be_nil
        expect(response).to redirect_to article_path(assigns(:article))
      end
    end

    describe '#destroy' do
      it 'deletes the article record' do
        a = create :article
        expect {
          delete :destroy, id: a.id
        }.to change { Article.count }.by(-1)
        expect(response).to redirect_to articles_path
      end
    end
  end
end
