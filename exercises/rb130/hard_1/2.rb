# # Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc # #<Proc:0x000000010e2ff670 2.rb:2>
puts my_proc.class # Proc
my_proc.call # This is a .
my_proc.call('cat') # This is a cat.
# Group 1 doesn't throw an exception despite not passing enough arguments.

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." }
puts my_lambda #outputs a proc
puts my_second_lambda # outputs same proc
puts my_lambda.class # Proc
my_lambda.call('dog') # outputs 'This is a dog'
#my_lambda.call # ArgumentError (given 0, expected 1)
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." } #Uninitialized constant Lambda (NameError)

# # Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."} # This is a .
block_method_1('seal') # LocalJumpError

# # Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."} # This is a turtle.
block_method_2('turtle') do |turtle, seal| # This is a turtle and a .
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."} # NameError for `animal`

=begin
Procs seem to have relaxed(?) arity. Lambdas seem to be converted to procs when stored in variables. However, they still seem to retain some knowledge that they are lambdas, because their arity is strict, unlike procs. When yielding to a block from a method, the arity also seems to be relaxed, but you can't yield if there is no block. Finally, when yielding a variable, the variable itself isn't yielded, only the variable's reference. In conclusion, procs and blocks have relaxed arity while lambdas have strict arity.
=end
