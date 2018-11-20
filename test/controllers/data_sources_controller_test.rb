require 'test_helper'

class DataSourcesControllerTest < ActionDispatch::IntegrationTest
  test "should get links_lesson_weekly" do
    get data_sources_links_lesson_weekly_url
    assert_response :success
  end

end
