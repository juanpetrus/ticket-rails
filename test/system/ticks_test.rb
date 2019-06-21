require "application_system_test_case"

class TicksTest < ApplicationSystemTestCase
  setup do
    @tick = ticks(:one)
  end

  test "visiting the index" do
    visit ticks_url
    assert_selector "h1", text: "Ticks"
  end

  test "creating a Tick" do
    visit ticks_url
    click_on "New Tick"

    fill_in "Cliente", with: @tick.cliente_id
    fill_in "Conteudo", with: @tick.conteudo
    fill_in "Pedido", with: @tick.pedido_id
    fill_in "Titulo", with: @tick.titulo
    click_on "Create Tick"

    assert_text "Tick was successfully created"
    click_on "Back"
  end

  test "updating a Tick" do
    visit ticks_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @tick.cliente_id
    fill_in "Conteudo", with: @tick.conteudo
    fill_in "Pedido", with: @tick.pedido_id
    fill_in "Titulo", with: @tick.titulo
    click_on "Update Tick"

    assert_text "Tick was successfully updated"
    click_on "Back"
  end

  test "destroying a Tick" do
    visit ticks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tick was successfully destroyed"
  end
end
