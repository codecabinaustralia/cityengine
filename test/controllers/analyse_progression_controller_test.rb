require 'test_helper'

class AnalyseProgressionControllerTest < ActionDispatch::IntegrationTest
  test "should get skill_progression" do
    get analyse_progression_skill_progression_url
    assert_response :success
  end

  test "should get level_progression" do
    get analyse_progression_level_progression_url
    assert_response :success
  end

  test "should get site_skill_progression" do
    get analyse_progression_site_skill_progression_url
    assert_response :success
  end

  test "should get site_level_progression" do
    get analyse_progression_site_level_progression_url
    assert_response :success
  end

  test "should get teacher_skill_progression" do
    get analyse_progression_teacher_skill_progression_url
    assert_response :success
  end

  test "should get teacher_level_progression" do
    get analyse_progression_teacher_level_progression_url
    assert_response :success
  end

  test "should get student_skill_progression" do
    get analyse_progression_student_skill_progression_url
    assert_response :success
  end

  test "should get student_level_progression" do
    get analyse_progression_student_level_progression_url
    assert_response :success
  end

end
