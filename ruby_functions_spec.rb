require( 'minitest/autorun' )
require_relative( 'ruby_functions_practice' )

class Functions_Practice < MiniTest::Test

  def test_return_10()
    return_10_result = return_10()
    assert_equal( 10, return_10_result )
  end

  def test_add()
    add_result = add( 1, 2 )
    assert_equal( 3, add_result )
  end

  def test_subtract()
    subtract_result = subtract( 10, 5 )
    assert_equal( 5, subtract_result )
  end

  def test_multiply()
    multiply_result = multiply( 4, 2 )
    assert_equal( 8, multiply_result )
  end

  def test_divide()
    divide_result = divide( 10, 2 )
    assert_equal( 5, divide_result )
  end

  def test_length_of_string()
    test_string = "A string of length 21"
    length_of_string = length_of_string( test_string )
    assert_equal( 21, length_of_string )
  end

  def test_join_string()
    string_1 = "Mary had a little lamb, "
    string_2 = "it's fleece was white as snow"
    joined_string = join_string( string_1, string_2 )
    assert_equal( "Mary had a little lamb, it's fleece was white as snow", joined_string )
  end

  def test_add_string_as_number()
    add_result = add_string_as_number( "1", "2" )
    assert_equal( 3, add_result )
  end

  def test_number_to_full_name()
    first_month_string = number_to_full_month_name( 1 )
    third_month_string = number_to_full_month_name( 3 )
    ninth_month_string = number_to_full_month_name( 9 )
    assert_equal( "January", first_month_string )
    assert_equal( "March", third_month_string )
    assert_equal( "September", ninth_month_string )
  end

  def test_substring()
    first_month_string = number_to_short_month_name( 1 )
    third_month_string = number_to_short_month_name( 3 )
    ninth_month_string = number_to_short_month_name( 9 )
    assert_equal( "Jan", first_month_string )
    assert_equal( "Mar", third_month_string )
    assert_equal( "Sep", ninth_month_string )
  end



  #Further

  #Given the length of a side of a cube calculate the volume
  def test_volume_of_cube()
    side = 1.0
    assert_equal(1.0, volume_of_cube(1.0))

  end

  #Given the radius of a sphere calculate the volume
  def test_volume_of_sphere()
    radius = 1
    vol = radius**3 * 4/3 * Math::PI        # 4/3 == 1 here, passes test with wrong answer
                                            # either force to float division or put PI before 
                                            # division to get implied float calculation
    vol = 4.18879             # better to use fixed result or risk testing two faulty calcs
    assert_equal(vol, volume_of_sphere(radius).round(5))
  end

  #Given a value in farenheit, convert this into celsius.
  def test_fahrenheit_to_celsius()
    temp_degF_1 = 0
    temp_degF_2 = 32
    temp_degF_3 = 212
    assert_equal(fahrenheit_to_celsius(temp_degF_1).round(3), -17.7778.round(3))  
    # source - google units conversion, so may have rounding issues on this one!
    assert_equal(fahrenheit_to_celsius(temp_degF_2), 0)
    assert_equal(fahrenheit_to_celsius(temp_degF_3), 100)
  end


end
