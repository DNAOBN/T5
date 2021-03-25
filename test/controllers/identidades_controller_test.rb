require "test_helper"

class IdentidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @identidade = identidades(:one)
  end

  test "should get index" do
    get identidades_url
    assert_response :success
  end

  test "should get new" do
    get new_identidade_url
    assert_response :success
  end

  test "should create identidade" do
    assert_difference('Identidade.count') do
      post identidades_url, params: { identidade: { cpf: @identidade.cpf, discente_id: @identidade.discente_id, grr: @identidade.grr } }
    end

    assert_redirected_to identidade_url(Identidade.last)
  end

  test "should show identidade" do
    get identidade_url(@identidade)
    assert_response :success
  end

  test "should get edit" do
    get edit_identidade_url(@identidade)
    assert_response :success
  end

  test "should update identidade" do
    patch identidade_url(@identidade), params: { identidade: { cpf: @identidade.cpf, discente_id: @identidade.discente_id, grr: @identidade.grr } }
    assert_redirected_to identidade_url(@identidade)
  end

  test "should destroy identidade" do
    assert_difference('Identidade.count', -1) do
      delete identidade_url(@identidade)
    end

    assert_redirected_to identidades_url
  end
end
