require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get beer" do
    get static_pages_beer_url
    assert_response :success
  end

  test "should get clothes" do
    get static_pages_clothes_url
    assert_response :success
  end

  test "should get misc" do
    get static_pages_misc_url
    assert_response :success
  end

  test "should get sale" do
    get static_pages_sale_url
    assert_response :success
  end

  test "should get about_us" do
    get static_pages_about_us_url
    assert_response :success
  end

  test "should get contact_us" do
    get static_pages_contact_us_url
    assert_response :success
  end

  test "should get faq" do
    get static_pages_faq_url
    assert_response :success
  end

  test "should get sizing" do
    get static_pages_sizing_url
    assert_response :success
  end

end
