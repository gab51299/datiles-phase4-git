require 'test_helper'

class RewardtablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rewardtable = rewardtables(:one)
  end

  test "should get index" do
    get rewardtables_url
    assert_response :success
  end

  test "should get new" do
    get new_rewardtable_url
    assert_response :success
  end

  test "should create rewardtable" do
    assert_difference('Rewardtable.count') do
      post rewardtables_url, params: { rewardtable: { pts: @rewardtable.pts, rewardtype: @rewardtable.rewardtype } }
    end

    assert_redirected_to rewardtable_url(Rewardtable.last)
  end

  test "should show rewardtable" do
    get rewardtable_url(@rewardtable)
    assert_response :success
  end

  test "should get edit" do
    get edit_rewardtable_url(@rewardtable)
    assert_response :success
  end

  test "should update rewardtable" do
    patch rewardtable_url(@rewardtable), params: { rewardtable: { pts: @rewardtable.pts, rewardtype: @rewardtable.rewardtype } }
    assert_redirected_to rewardtable_url(@rewardtable)
  end

  test "should destroy rewardtable" do
    assert_difference('Rewardtable.count', -1) do
      delete rewardtable_url(@rewardtable)
    end

    assert_redirected_to rewardtables_url
  end
end
