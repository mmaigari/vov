require "test_helper"

class CouncillorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @councillor = councillors(:one)
  end

  test "should get index" do
    get councillors_url
    assert_response :success
  end

  test "should get new" do
    get new_councillor_url
    assert_response :success
  end

  test "should create councillor" do
    assert_difference('Councillor.count') do
      post councillors_url, params: { councillor: { apc: @councillor.apc, apga: @councillor.apga, apm: @councillor.apm, invalid_votes: @councillor.invalid_votes, lga: @councillor.lga, nnpp: @councillor.nnpp, pdp: @councillor.pdp, pollingunit: @councillor.pollingunit, prp: @councillor.prp, total_votes: @councillor.total_votes, user_id: @councillor.user_id, valid_votes: @councillor.valid_votes, ward: @councillor.ward } }
    end

    assert_redirected_to councillor_url(Councillor.last)
  end

  test "should show councillor" do
    get councillor_url(@councillor)
    assert_response :success
  end

  test "should get edit" do
    get edit_councillor_url(@councillor)
    assert_response :success
  end

  test "should update councillor" do
    patch councillor_url(@councillor), params: { councillor: { apc: @councillor.apc, apga: @councillor.apga, apm: @councillor.apm, invalid_votes: @councillor.invalid_votes, lga: @councillor.lga, nnpp: @councillor.nnpp, pdp: @councillor.pdp, pollingunit: @councillor.pollingunit, prp: @councillor.prp, total_votes: @councillor.total_votes, user_id: @councillor.user_id, valid_votes: @councillor.valid_votes, ward: @councillor.ward } }
    assert_redirected_to councillor_url(@councillor)
  end

  test "should destroy councillor" do
    assert_difference('Councillor.count', -1) do
      delete councillor_url(@councillor)
    end

    assert_redirected_to councillors_url
  end
end
