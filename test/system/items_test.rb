require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = Item.ordered.first
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "visiting the show" do
    visit items_url
    click_link @item.name
    assert_selector "h1", text: @item.name
  end

  test "should create item" do
    visit items_url
    assert_selector "h1", text: "Items"

    click_on "New item"
    fill_in "Name", with: @item.name

    assert_selector "h1", text: "Items"
    click_on "Create Item"

    assert_selector "h1", text: "Items"
    assert_text @item.name
  end

  test "should update Item" do
    visit items_path
    assert_selector "h1", text: "Items"

    click_on "Edit", match: :first
    fill_in "Name", with: "Updated Item"

    assert_selector "h1", text: "Items"
    click_on "Update Item"

    assert_selector "h1", text: "Items"
    assert_text "Updated Item"
  end

  test "should destroy Item" do
    visit items_path
    assert_text @item.name
    click_on "Destroy", match: :first

    assert_no_text @item.name
  end
end
