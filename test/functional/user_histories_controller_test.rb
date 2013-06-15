require 'test_helper'

class UserHistoriesControllerTest < ActionController::TestCase
  setup do
    @user_history = user_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_history" do
    assert_difference('UserHistory.count') do
      post :create, user_history: { date_done: @user_history.date_done, date_observed: @user_history.date_observed, date_taught: @user_history.date_taught, domain_id: @user_history.domain_id, skill_id: @user_history.skill_id, user_id: @user_history.user_id }
    end

    assert_redirected_to user_history_path(assigns(:user_history))
  end

  test "should show user_history" do
    get :show, id: @user_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_history
    assert_response :success
  end

  test "should update user_history" do
    put :update, id: @user_history, user_history: { date_done: @user_history.date_done, date_observed: @user_history.date_observed, date_taught: @user_history.date_taught, domain_id: @user_history.domain_id, skill_id: @user_history.skill_id, user_id: @user_history.user_id }
    assert_redirected_to user_history_path(assigns(:user_history))
  end

  test "should destroy user_history" do
    assert_difference('UserHistory.count', -1) do
      delete :destroy, id: @user_history
    end

    assert_redirected_to user_histories_path
  end
end
