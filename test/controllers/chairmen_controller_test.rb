require "test_helper"

class ChairmenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chairman = chairmen(:one)
  end

  test "should get index" do
    get chairmen_url
    assert_response :success
  end

  test "should get new" do
    get new_chairman_url
    assert_response :success
  end

  test "should create chairman" do
    assert_difference('Chairman.count') do
      post chairmen_url, params: { chairman: { apc: @chairman.apc, apga: @chairman.apga, apm: @chairman.apm, invalid_votes: @chairman.invalid_votes, lga: @chairman.lga, nnpp: @chairman.nnpp, pdp: @chairman.pdp, pollingunit: @chairman.pollingunit, prp: @chairman.prp, total_votes: @chairman.total_votes, user_id: @chairman.user_id, valid_votes: @chairman.valid_votes, ward: @chairman.ward } }
    end

    assert_redirected_to chairman_url(Chairman.last)
  end

  test "should show chairman" do
    get chairman_url(@chairman)
    assert_response :success
  end

  test "should get edit" do
    get edit_chairman_url(@chairman)
    assert_response :success
  end

  test "should update chairman" do
    patch chairman_url(@chairman), params: { chairman: { apc: @chairman.apc, apga: @chairman.apga, apm: @chairman.apm, invalid_votes: @chairman.invalid_votes, lga: @chairman.lga, nnpp: @chairman.nnpp, pdp: @chairman.pdp, pollingunit: @chairman.pollingunit, prp: @chairman.prp, total_votes: @chairman.total_votes, user_id: @chairman.user_id, valid_votes: @chairman.valid_votes, ward: @chairman.ward } }
    assert_redirected_to chairman_url(@chairman)
  end

  test "should destroy chairman" do
    assert_difference('Chairman.count', -1) do
      delete chairman_url(@chairman)
    end

    assert_redirected_to chairmen_url
  end
end
