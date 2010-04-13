require 'test_helper'

class BlocosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Bloco.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Bloco.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Bloco.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to bloco_url(assigns(:bloco))
  end
  
  def test_edit
    get :edit, :id => Bloco.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Bloco.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Bloco.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Bloco.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Bloco.first
    assert_redirected_to bloco_url(assigns(:bloco))
  end
  
  def test_destroy
    bloco = Bloco.first
    delete :destroy, :id => bloco
    assert_redirected_to blocos_url
    assert !Bloco.exists?(bloco.id)
  end
end
