require "test_helper"

class DiscentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discente = discentes(:one)
  end

  test "should get index" do
    get discentes_url
    assert_response :success
  end

  test "should get new" do
    get new_discente_url
    assert_response :success
  end

  test "should create discente" do
    assert_difference('Discente.count') do
      post discentes_url, params: { discente: { nome: @discente.nome } }
    end

    assert_redirected_to discente_url(Discente.last)
  end

  test "should show discente" do
    get discente_url(@discente)
    assert_response :success
  end

  test "should get edit" do
    get edit_discente_url(@discente)
    assert_response :success
  end

  test "should update discente" do
    patch discente_url(@discente), params: { discente: { nome: @discente.nome } }
    assert_redirected_to discente_url(@discente)
  end

  test "should destroy discente" do
    assert_difference('Discente.count', -1) do
      delete discente_url(@discente)
    end

    assert_redirected_to discentes_url
  end
end
