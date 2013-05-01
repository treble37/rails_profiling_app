require 'test_helper'

class PostageStampsControllerTest < ActionController::TestCase
  setup do
    @postage_stamp = postage_stamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postage_stamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postage_stamp" do
    assert_difference('PostageStamp.count') do
      post :create, postage_stamp: { appraised_price: @postage_stamp.appraised_price, description: @postage_stamp.description, issue_date: @postage_stamp.issue_date, original_price: @postage_stamp.original_price }
    end

    assert_redirected_to postage_stamp_path(assigns(:postage_stamp))
  end

  test "should show postage_stamp" do
    get :show, id: @postage_stamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postage_stamp
    assert_response :success
  end

  test "should update postage_stamp" do
    put :update, id: @postage_stamp, postage_stamp: { appraised_price: @postage_stamp.appraised_price, description: @postage_stamp.description, issue_date: @postage_stamp.issue_date, original_price: @postage_stamp.original_price }
    assert_redirected_to postage_stamp_path(assigns(:postage_stamp))
  end

  test "should destroy postage_stamp" do
    assert_difference('PostageStamp.count', -1) do
      delete :destroy, id: @postage_stamp
    end

    assert_redirected_to postage_stamps_path
  end
end
