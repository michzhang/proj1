# Q0: Why is this error being thrown?

There is no model for Pokemon.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random Pokemon are generated during refresh after login. The common factor is that all these Pokemon don't belong to a trainer (they are wild!!)

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

The button_to method gives the id of current pokemon to the capture method, so that later the method can assign the caught pokemon to a specific trainer (done by PATCH in capture_path in routes.rb)

# Question 3: What would you name your own Pokemon?

Barkeley

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed in trainer_path, which takes in a trainer's current id parameter.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

This flashes the corresponding error messaged based on the validations!

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
