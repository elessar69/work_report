require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post :create, usuario: { apellido1: @usuario.apellido1, apellido2: @usuario.apellido2, crypted_password: @usuario.crypted_password, derechos: @usuario.derechos, dni: @usuario.dni, email: @usuario.email, gestor: @usuario.gestor, nombre: @usuario.nombre, numero_empleado: @usuario.numero_empleado, salt: @usuario.salt, unidad: @usuario.unidad, username: @usuario.username }
    end

    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should show usuario" do
    get :show, id: @usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario
    assert_response :success
  end

  test "should update usuario" do
    put :update, id: @usuario, usuario: { apellido1: @usuario.apellido1, apellido2: @usuario.apellido2, crypted_password: @usuario.crypted_password, derechos: @usuario.derechos, dni: @usuario.dni, email: @usuario.email, gestor: @usuario.gestor, nombre: @usuario.nombre, numero_empleado: @usuario.numero_empleado, salt: @usuario.salt, unidad: @usuario.unidad, username: @usuario.username }
    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_redirected_to usuarios_path
  end
end
