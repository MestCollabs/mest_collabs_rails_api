require 'test_helper'

class MestersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mester = mesters(:one)
  end

  test "should get index" do
    get mesters_url, as: :json
    assert_response :success
  end

  test "should create mester" do
    assert_difference('Mester.count') do
      post mesters_url, params: { mester: { email: @mester.email, name: @mester.name, profilePicture: @mester.profilePicture } }, as: :json
    end

    assert_response 201
  end

  test "should show mester" do
    get mester_url(@mester), as: :json
    assert_response :success
  end

  test "should update mester" do
    patch mester_url(@mester), params: { mester: { email: @mester.email, name: @mester.name, profilePicture: @mester.profilePicture } }, as: :json
    assert_response 200
  end

  test "should destroy mester" do
    assert_difference('Mester.count', -1) do
      delete mester_url(@mester), as: :json
    end

    assert_response 204
  end
end
