require "application_system_test_case"

class DiscentesTest < ApplicationSystemTestCase
  setup do
    @discente = discentes(:one)
  end

  test "visiting the index" do
    visit discentes_url
    assert_selector "h1", text: "Discentes"
  end

  test "creating a Discente" do
    visit discentes_url
    click_on "New Discente"

    fill_in "Nome", with: @discente.nome
    click_on "Create Discente"

    assert_text "Discente was successfully created"
    click_on "Back"
  end

  test "updating a Discente" do
    visit discentes_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @discente.nome
    click_on "Update Discente"

    assert_text "Discente was successfully updated"
    click_on "Back"
  end

  test "destroying a Discente" do
    visit discentes_url
    page.accept_confirm do
      click_on "Excluir", match: :first
    end

    assert_text "Discente was successfully destroyed"
  end
end
