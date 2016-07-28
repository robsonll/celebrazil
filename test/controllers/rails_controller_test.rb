require 'test_helper'

class RailsControllerTest < ActionController::TestCase
  test "should get g" do
    get :g
    assert_response :success
  end

  test "should get model" do
    get :model
    assert_response :success
  end

  test "should get SaleItem" do
    get :SaleItem
    assert_response :success
  end

  test "should get qty:integer" do
    get :qty:integer
    assert_response :success
  end

  test "should get product:references" do
    get :product:references
    assert_response :success
  end

  test "should get sale:references" do
    get :sale:references
    assert_response :success
  end

end
