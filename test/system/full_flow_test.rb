require "application_system_test_case"

class FullFlowTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
    sign_in @user
    @movie = movies(:one)
  end

  test "visiting the search index" do
    visit search_url
    assert_selector "h1", text: "Search"
  end

  test "should search a movie" do
    visit search_url
    fill_in "query", with: "Star wars"
    click_button "Search"
    assert_selector "div", text: "Star Wars: Episode IV"
    click_button "Add movie to collection"
  end

  test "full flow" do
    visit search_url
    fill_in "query", with: "Star wars"
    click_button "Search"
    click_button "Add movie to collection"
    assert_selector "div", text: "Movie was successfully created"
    assert_selector "div", text: "Director: George Lucas"
  end
end
