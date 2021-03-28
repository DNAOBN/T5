require "application_system_test_case"

class IdentidadesTest < ApplicationSystemTestCase
  setup do
    @identidade = identidades(:one)
  end

  test "visiting the index" do
    visit identidades_url
    assert_selector "h1", text: "Identidades"
  end

  test "creating a Identidade" do
    visit identidades_url
    click_on "Nova Identidade"

    fill_in "Cpf", with: @identidade.cpf
    fill_in "Discente", with: @identidade.discente_id
    fill_in "Grr", with: @identidade.grr
    click_on "Create Identidade"

    assert_text "Identidade was successfully created"
    click_on "Back"
  end

  test "updating a Identidade" do
    visit identidades_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @identidade.cpf
    fill_in "Discente", with: @identidade.discente_id
    fill_in "Grr", with: @identidade.grr
    click_on "Update Identidade"

    assert_text "Identidade was successfully updated"
    click_on "Back"
  end

  test "destroying a Identidade" do
    visit identidades_url
    page.accept_confirm do
      click_on "Excluir", match: :first
    end

    assert_text "Identidade was successfully destroyed"
  end
end
