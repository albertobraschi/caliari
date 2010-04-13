require 'test_helper'

class ProdutosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Produto.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Produto.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Produto.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to produto_url(assigns(:produto))
  end
  
  def test_edit
    get :edit, :id => Produto.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Produto.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Produto.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Produto.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Produto.first
    assert_redirected_to produto_url(assigns(:produto))
  end
  
  def test_destroy
    produto = Produto.first
    delete :destroy, :id => produto
    assert_redirected_to produtos_url
    assert !Produto.exists?(produto.id)
  end
end
