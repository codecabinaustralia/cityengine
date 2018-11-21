require 'test_helper'

class AnalyseAgeAttendenceControllerTest < ActionDispatch::IntegrationTest
  test "should get student_age_skill_attendence" do
    get analyse_age_attendence_student_age_skill_attendence_url
    assert_response :success
  end

  test "should get student_age_level_attendence" do
    get analyse_age_attendence_student_age_level_attendence_url
    assert_response :success
  end

  test "should get student_age_site_skill_attendence" do
    get analyse_age_attendence_student_age_site_skill_attendence_url
    assert_response :success
  end

  test "should get student_age_site_level_attendence" do
    get analyse_age_attendence_student_age_site_level_attendence_url
    assert_response :success
  end

  test "should get student_age_teacher_skill_attendence" do
    get analyse_age_attendence_student_age_teacher_skill_attendence_url
    assert_response :success
  end

  test "should get student_age_teacher_level_attendence" do
    get analyse_age_attendence_student_age_teacher_level_attendence_url
    assert_response :success
  end

  test "should get student_age_skill_attendence" do
    get analyse_age_attendence_student_age_skill_attendence_url
    assert_response :success
  end

  test "should get student_age_level_attendence" do
    get analyse_age_attendence_student_age_level_attendence_url
    assert_response :success
  end

end
