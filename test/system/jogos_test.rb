require "application_system_test_case"

class JogosTest < ApplicationSystemTestCase
  setup do
    @jogo = jogos(:one)
  end

  test "visiting the index" do
    visit jogos_url
    assert_selector "h1", text: "Jogos"
  end

  test "creating a Jogo" do
    visit jogos_url
    click_on "New Jogo"

    fill_in "Nome", with: @jogo.nome
    fill_in "Odd", with: @jogo.odd
    click_on "Create Jogo"

    assert_text "Jogo was successfully created"
    click_on "Back"
  end

  test "updating a Jogo" do
    visit jogos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @jogo.nome
    fill_in "Odd", with: @jogo.odd
    click_on "Update Jogo"

    assert_text "Jogo was successfully updated"
    click_on "Back"
  end

  test "destroying a Jogo" do
    visit jogos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jogo was successfully destroyed"
  end
end
