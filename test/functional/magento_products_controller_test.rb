require 'test_helper'

class MagentoProductsControllerTest < ActionController::TestCase
  setup do
    @magento_product = magento_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:magento_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create magento_product" do
    assert_difference('MagentoProduct.count') do
      post :create, magento_product: {  }
    end

    assert_redirected_to magento_product_path(assigns(:magento_product))
  end

  test "should show magento_product" do
    get :show, id: @magento_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @magento_product
    assert_response :success
  end

  test "should update magento_product" do
    put :update, id: @magento_product, magento_product: {  }
    assert_redirected_to magento_product_path(assigns(:magento_product))
  end

  test "should destroy magento_product" do
    assert_difference('MagentoProduct.count', -1) do
      delete :destroy, id: @magento_product
    end

    assert_redirected_to magento_products_path
  end
end
