
def validate_usr(username)
  !!username[/\A\w{4,16}\z/]
end

puts validate_usr('asd')
puts validate_usr('Akshay')
puts validate_usr('AkshayKumar122')
puts validate_usr('AkshayKumar122')
