require 'test_helper'

class HalloweenpetsControllerTest < ActionController::TestCase
  setup do
    @halloweenpet = halloweenpets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:halloweenpets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create halloweenpet" do
    assert_difference('Halloweenpet.count') do
      post :create, halloweenpet: { costume: @halloweenpet.costume, description: @halloweenpet.description, name: @halloweenpet.name, picture: @halloweenpet.picture }
    end

    assert_redirected_to halloweenpet_path(assigns(:halloweenpet))
  end

  test "should show halloweenpet" do
    get :show, id: @halloweenpet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @halloweenpet
    assert_response :success
  end

  test "should update halloweenpet" do
    patch :update, id: @halloweenpet, halloweenpet: { costume: @halloweenpet.costume, description: @halloweenpet.description, name: @halloweenpet.name, picture: @halloweenpet.picture }
    assert_redirected_to halloweenpet_path(assigns(:halloweenpet))
  end

  test "should destroy halloweenpet" do
    assert_difference('Halloweenpet.count', -1) do
      delete :destroy, id: @halloweenpet
    end

    assert_redirected_to halloweenpets_path
  end
end
