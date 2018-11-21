require 'test_helper'

class AnalyseAttendenceControllerTest < ActionDispatch::IntegrationTest
  test "should get skill_attendence" do
    get analyse_attendence_skill_attendence_url
    assert_response :success
  end

  test "should get level_attendence" do
    get analyse_attendence_level_attendence_url
    assert_response :success
  end

  test "should get site_skill_attendence" do
    get analyse_attendence_site_skill_attendence_url
    assert_response :success
  end

  test "should get site_level_attendence" do
    get analyse_attendence_site_level_attendence_url
    assert_response :success
  end

  test "should get teacher_skill_attendence" do
    get analyse_attendence_teacher_skill_attendence_url
    assert_response :success
  end

  test "should get teacher_level_attendence" do
    get analyse_attendence_teacher_level_attendence_url
    assert_response :success
  end

  test "should get student_skill_attendence" do
    get analyse_attendence_student_skill_attendence_url
    assert_response :success
  end

  test "should get student_level_attendence" do
    get analyse_attendence_student_level_attendence_url
    assert_response :success
  end

end
