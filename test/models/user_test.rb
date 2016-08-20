require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
	@ptr=users(:one)
	@ptr2=users(:two)
  end

  test "Nombre obligatorio"
  	assert_empty(@ptr.name, 'Sin nombre')
  	assert_empty(@ptr2.name, 'Sin nombre')  	
  end

  test "Apellido obligatorio"
  	assert_empty(@ptr.lastname, 'Sin Apellido')
  	assert_empty(@ptr2.lastname, 'Sin Apellido')  	
  end  

  test "Nombre de usuario obligatorio"
  	assert_empty(@ptr.username, 'Sin nombre de usuario')
  	assert_empty(@ptr2.username, 'Sin nombre de usuario')  	
  end

  test "Nombre repetido"
  	assert_same(@ptr.username,@ptr2.username,'Usuario ya existe')
  end

  test "email obligatorio"
  	assert_empty(@ptr.email, 'Sin email')
  	assert_empty(@ptr2.email, 'Sin email')  	
  end  

  test "Email repetido"
  	assert_same(@ptr.email,@ptr2.email,'Email ya registrado')
  end

end
