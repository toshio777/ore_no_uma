require "test_helper"

class HorsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horse = horses(:one)
  end

  test "should get index" do
    get horses_url, as: :json
    assert_response :success
  end

  test "should create horse" do
    assert_difference('Horse.count') do
      post horses_url, params: { horse: { last_race: @horse.last_race, name: @horse.name, power: @horse.power, year: @horse.year } }, as: :json
    end

    assert_response 201
  end

  test "should show horse" do
    get horse_url(@horse), as: :json
    assert_response :success
  end

  test "should update horse" do
    patch horse_url(@horse), params: { horse: { last_race: @horse.last_race, name: @horse.name, power: @horse.power, year: @horse.year } }, as: :json
    assert_response 200
  end

  test "should destroy horse" do
    assert_difference('Horse.count', -1) do
      delete horse_url(@horse), as: :json
    end

    assert_response 204
  end
end
