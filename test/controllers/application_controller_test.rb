require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest

  it '#home' do
    get root_path
    assert_response :success
    assert_select '.sky' do
      assert_select '.clouds .birds'
      assert_select '.horizon'
      assert_select '.promotion'
      assert_select '.game-info'
      assert_select '.players-area'
      assert_select '.water'
      assert_select '.credits'
    end
  end

end
