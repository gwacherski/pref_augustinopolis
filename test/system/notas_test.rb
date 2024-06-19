require "application_system_test_case"

class NotasTest < ApplicationSystemTestCase
  setup do
    @nota = notas(:one)
  end

  test "visiting the index" do
    visit notas_url
    assert_selector "h1", text: "Notas"
  end

  test "should create nota" do
    visit notas_url
    click_on "New nota"

    fill_in "Cnpj fornecedor", with: @nota.cnpj_fornecedor
    fill_in "Data", with: @nota.data
    fill_in "Nome fornecedor", with: @nota.nome_fornecedor
    fill_in "Numero da nota", with: @nota.numero_da_nota
    fill_in "Regime", with: @nota.regime
    fill_in "Serie", with: @nota.serie
    fill_in "Servicos", with: @nota.servicos
    fill_in "Valor", with: @nota.valor
    fill_in "Valor final", with: @nota.valor_final
    click_on "Create Nota"

    assert_text "Nota was successfully created"
    click_on "Back"
  end

  test "should update Nota" do
    visit nota_url(@nota)
    click_on "Edit this nota", match: :first

    fill_in "Cnpj fornecedor", with: @nota.cnpj_fornecedor
    fill_in "Data", with: @nota.data
    fill_in "Nome fornecedor", with: @nota.nome_fornecedor
    fill_in "Numero da nota", with: @nota.numero_da_nota
    fill_in "Regime", with: @nota.regime
    fill_in "Serie", with: @nota.serie
    fill_in "Servicos", with: @nota.servicos
    fill_in "Valor", with: @nota.valor
    fill_in "Valor final", with: @nota.valor_final
    click_on "Update Nota"

    assert_text "Nota was successfully updated"
    click_on "Back"
  end

  test "should destroy Nota" do
    visit nota_url(@nota)
    click_on "Destroy this nota", match: :first

    assert_text "Nota was successfully destroyed"
  end
end
