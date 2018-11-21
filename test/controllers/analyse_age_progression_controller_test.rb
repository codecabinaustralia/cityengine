require 'test_helper'

class AnalyseAgeProgressionControllerTest < ActionDispatch::IntegrationTest
  test "should get student_age_skill_progression" do
    get analyse_age_progression_student_age_skill_progression_url
    assert_response :success
  end

  test "should get student_age_level_progression" do
    get analyse_age_progression_student_age_level_progression_url
    assert_response :success
  end

  test "should get student_age_site_skill_progression" do
    get analyse_age_progression_student_age_site_skill_progression_url
    assert_response :success
  end

  test "should get student_age_site_level_progression" do
    get analyse_age_progression_student_age_site_level_progression_url
    assert_response :success
  end

  test "should get student_age_teacher_skill_progression" do
    get analyse_age_progression_student_age_teacher_skill_progression_url
    assert_response :success
  end

  test "should get student_age_teacher_level_progression" do
    get analyse_age_progression_student_age_teacher_level_progression_url
    assert_response :success
  end

  test "should get student_age_skill_progression" do
    get analyse_age_progression_student_age_skill_progression_url
    assert_response :success
  end

  test "should get student_age_level_progression" do
    get analyse_age_progression_student_age_level_progression_url
    assert_response :success
  end

end
