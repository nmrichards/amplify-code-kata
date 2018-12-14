require "application_system_test_case"

class ClosestToZeroKatasTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit closest_to_zero_katas_index_path
    assert_selector "h1", text: "Closest To Zero Kata"
  end

  test "shows closest number" do
    visit closest_to_zero_katas_index_path
    fill_in "Numbers", with: "12 14 4 72"
    click_on "Submit"

    assert_text "The closest number to zero is: 4"
  end

  test "shows positive number when neg and pos are in list" do
    visit closest_to_zero_katas_index_path
    fill_in "Numbers", with: "12 14 4 72 -4"
    click_on "Submit"

    assert_text "The closest number to zero is: 4"
  end

  test "can update list after submitting once" do
    visit closest_to_zero_katas_index_path
    fill_in "Numbers", with: "12 14 5 72 -4"
    click_on "Submit"

    fill_in "Numbers", with: "43 7 2 -3 1 99 -1"
    click_on "Submit"

    assert_text "The closest number to zero is: 1"
  end
end
