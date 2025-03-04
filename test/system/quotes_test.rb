require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = quotes(:first)
  end

  test "#show" do
    visit quotes_path
    click_link @quote.name
    assert_selector "h1", text: @quote.name
  end

  test "#create" do
    visit quotes_path
    assert_selector "h1", text: "Quotes"
    click_on "New quote"
    assert_selector "h1", text: "New quote"
    fill_in "Name", with: "Capybara quote"
    click_on "Create quote"
    assert_selector "h1", text: "Quotes"
    assert_text "Capybara quote"
  end

  test "#destroy" do
    visit quotes_path
    asset_text @quote.name
    click_on "Delete", match: :first
    asset_no_test @quote.name
  end
end
