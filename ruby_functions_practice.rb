def return_10()
  10
end

def add(a,b)
  return a + b
end

def subtract(a,b)
  return a - b  
end

def multiply(a, b)
  return a * b
end

def divide(a,b)
  return a / b unless b == 0
end

def length_of_string(a_string)
  return a_string.length
end

def join_string(string1, string2)
  return string1 + string2
end

def add_string_as_number(str_a, str_b)
  return str_a.to_i + str_b.to_i
end

def number_to_full_month_name(month)
  case month
    when 1; return "January"
    when 2; return "February"
    when 3; return "March"
    when 4; return "April"
    when 5; return "May"
    when 6; return "June"
    when 7; return "July"
    when 8; return "August"
    when 9; return "September"
    when 10; return "October"
    when 11; return "November"
    when 12; return "December"
    else
      return "not a known month"
  end
end

def number_to_full_name(month)
  return number_to_full_month_name(month)
end

def number_to_short_month_name(month)
  return number_to_full_name(month).slice(0,3)
end

def volume_of_cube(side)
  return side ** 3
end


def volume_of_sphere(radius)
  return 4 / 3 * Math::PI * radius**3
end

def fahrenheit_to_celsius(degF)
  return (degF - 32 ) / 1.8
end
