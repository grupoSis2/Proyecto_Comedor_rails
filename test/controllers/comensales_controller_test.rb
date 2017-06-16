require 'test_helper'

class ComensalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comensale = comensales(:one)
  end

  test "should get index" do
    get comensales_url
    assert_response :success
  end

  test "should get new" do
    get new_comensale_url
    assert_response :success
  end

  test "should create comensale" do
    assert_difference('Comensale.count') do
      post comensales_url, params: { comensale: { codigo: @comensale.codigo, nombre: @comensale.nombre } }
    end

    assert_redirected_to comensale_url(Comensale.last)
  end

  test "should show comensale" do
    get comensale_url(@comensale)
    assert_response :success
  end

  test "should get edit" do
    get edit_comensale_url(@comensale)
    assert_response :success
  end

  test "should update comensale" do
    patch comensale_url(@comensale), params: { comensale: { codigo: @comensale.codigo, nombre: @comensale.nombre } }
    assert_redirected_to comensale_url(@comensale)
  end

  test "should destroy comensale" do
    assert_difference('Comensale.count', -1) do
      delete comensale_url(@comensale)
    end

    assert_redirected_to comensales_url
  end
end
