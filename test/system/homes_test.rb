require "application_system_test_case"

class HomesTest < ApplicationSystemTestCase
  setup do
    @home = homes(:one)
  end

  test "visiting the index" do
    visit homes_url
    assert_selector "h1", text: "Homes"
  end

  test "creating a Home" do
    visit homes_url
    click_on "New Home"

    fill_in "Category", with: @home.category
    fill_in "Discount", with: @home.discount
    fill_in "Discription", with: @home.discription
    fill_in "Product link", with: @home.product_link
    fill_in "Product name", with: @home.product_name
    fill_in "Product veido", with: @home.product_veido
    fill_in "Purchase price", with: @home.purchase_price
    fill_in "Sell price", with: @home.sell_price
    click_on "Create Home"

    assert_text "Home was successfully created"
    click_on "Back"
  end

  test "updating a Home" do
    visit homes_url
    click_on "Edit", match: :first

    fill_in "Category", with: @home.category
    fill_in "Discount", with: @home.discount
    fill_in "Discription", with: @home.discription
    fill_in "Product link", with: @home.product_link
    fill_in "Product name", with: @home.product_name
    fill_in "Product veido", with: @home.product_veido
    fill_in "Purchase price", with: @home.purchase_price
    fill_in "Sell price", with: @home.sell_price
    click_on "Update Home"

    assert_text "Home was successfully updated"
    click_on "Back"
  end

  test "destroying a Home" do
    visit homes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Home was successfully destroyed"
  end
end
