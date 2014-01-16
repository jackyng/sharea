require 'test_helper'

class ExpenseSplitsControllerTest < ActionController::TestCase
  setup do
    @expense_split = expense_splits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expense_splits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expense_split" do
    assert_difference('ExpenseSplit.count') do
      post :create, expense_split: { amount_owe: @expense_split.amount_owe, amount_pay: @expense_split.amount_pay, completed: @expense_split.completed, expense_id: @expense_split.expense_id, user_id: @expense_split.user_id }
    end

    assert_redirected_to expense_split_path(assigns(:expense_split))
  end

  test "should show expense_split" do
    get :show, id: @expense_split
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expense_split
    assert_response :success
  end

  test "should update expense_split" do
    patch :update, id: @expense_split, expense_split: { amount_owe: @expense_split.amount_owe, amount_pay: @expense_split.amount_pay, completed: @expense_split.completed, expense_id: @expense_split.expense_id, user_id: @expense_split.user_id }
    assert_redirected_to expense_split_path(assigns(:expense_split))
  end

  test "should destroy expense_split" do
    assert_difference('ExpenseSplit.count', -1) do
      delete :destroy, id: @expense_split
    end

    assert_redirected_to expense_splits_path
  end
end
