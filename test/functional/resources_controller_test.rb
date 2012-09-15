require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase
  setup do
    @resource = resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource" do
    assert_difference('Resource.count') do
      post :create, resource: { available: @resource.available, category_id: @resource.category_id, description: @resource.description, name: @resource.name, owner_groups_searchable: @resource.owner_groups_searchable, owner_id: @resource.owner_id, publicly_searchable: @resource.publicly_searchable }
    end

    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should show resource" do
    get :show, id: @resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resource
    assert_response :success
  end

  test "should update resource" do
    put :update, id: @resource, resource: { available: @resource.available, category_id: @resource.category_id, description: @resource.description, name: @resource.name, owner_groups_searchable: @resource.owner_groups_searchable, owner_id: @resource.owner_id, publicly_searchable: @resource.publicly_searchable }
    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should destroy resource" do
    assert_difference('Resource.count', -1) do
      delete :destroy, id: @resource
    end

    assert_redirected_to resources_path
  end
end
