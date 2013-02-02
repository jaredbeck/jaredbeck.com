require 'spec_helper'

describe ArticlesController do
  describe '#index' do
    it 'succeeds' do
      get :index
      response.should be_success
      assigns(:articles).should_not be_nil
    end
  end

  context 'as a user' do
    before do
      sign_in create :user
    end

    describe '#new' do
      it 'succeeds' do
        get :new
        response.should be_success
      end
    end

    describe '#create' do
      it 'should create an article' do
        expect {
          post :create, article: attributes_for(:article)
        }.to change { Article.count }.by(+1)
        assigns(:article).should_not be_nil
        response.should redirect_to article_path(assigns(:article))
      end
    end

    describe '#show' do
      it 'renders show and assigns an article' do
        a = create :article
        get :show, id: a.id
        response.should be_success
        response.should render_template :show
        assigns(:article).should_not be_nil
      end
    end

    describe '#edit' do
      it 'renders edit and assigns an article' do
        a = create :article
        get :edit, id: a.id
        response.should be_success
        response.should render_template :edit
        assigns(:article).should_not be_nil
      end
    end

    describe '#update' do
      it 'updates an article record' do
        a = create :article, title: 'kiwis'
        expect {
          put :update, id: a.id, article: {title: 'bananas'}
        }.to change { a.reload.title }.from('kiwis').to('bananas')
        assigns(:article).should_not be_nil
        response.should redirect_to article_path(assigns(:article))
      end
    end

    describe '#destroy' do
      it 'deletes the article record' do
        a = create :article
        expect {
          delete :destroy, id: a.id
        }.to change { Article.count }.by(-1)
        response.should redirect_to articles_path
      end
    end
  end
end
