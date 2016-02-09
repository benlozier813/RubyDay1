print "Enter your User ID: "
userId = gets.chomp
print "Enter your password: "
password = gets.chomp

def userInput(userId, password)
  cant_be_the_same(userId, password)
  checklength(userId, password)
  idIncludeSpecial(userId)
  passwordIncludeSpecial(userId)
  passwordCase(userId)
  validateInput(userId, password)
end

def cant_be_the_same(userId, password)
  userId == password
end

def checklength (userId, password)
  userId.length < 6 || password.length < 6
end

def idIncludeSpecial(userId)
  userId.include?("!") || userId.include?("#") || userId.include?("&")
end

def passwordIncludeSpecial(password)
  !password.include?("!") && !password.include?("#") && !password.include?("&")
end

def passwordCase(password)
  password.upcase.include?("PASSWORD")
end

def validateInput(userId, password)
  if cant_be_the_same(userId, password)
    puts "User ID cannot be the same as the password"
  end
  if checklength(userId, password)
    puts "User ID and password must be at least 6 characters"
  end
  if idIncludeSpecial(userId)
    puts "ID cannot include special characters"
  end
  if passwordIncludeSpecial(password)
    puts "Password must include special characters"
  end
  if passwordCase(password)
    puts "Password cannot inlude password"
  end
  if !cant_be_the_same(userId, password) && !checklength(userId, password) && !idIncludeSpecial(userId) && !passwordIncludeSpecial(password) && !passwordCase( password)
    puts "Your password and user ID are valid! hooray."
  end
end

userInput(userId, password)
