require "test_helper"

class HumenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @human = humen(:one)
  end

  test "should get index" do
    get humen_url
    assert_response :success
  end

  test "should get new" do
    get new_human_url
    assert_response :success
  end

  test "should create human" do
    assert_difference("Human.count") do
      post humen_url, params: { human: { age: @human.age, gender: @human.gender, name: @human.name } }
    end

    assert_redirected_to human_url(Human.last)
  end

  test "should show human" do
    get human_url(@human)
    assert_response :success
  end

  test "should get edit" do
    get edit_human_url(@human)
    assert_response :success
  end

  test "should update human" do
    patch human_url(@human), params: { human: { age: @human.age, gender: @human.gender, name: @human.name } }
    assert_redirected_to human_url(@human)
  end

  test "should destroy human" do
    assert_difference("Human.count", -1) do
      delete human_url(@human)
    end

    assert_redirected_to humen_url
  end
end
