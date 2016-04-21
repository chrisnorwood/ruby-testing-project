# Allow people to use binding.pry with the pry-byebug gem
require 'pry-byebug'

RSpec.configure do |c|
  c.fail_fast = false
  c.color = true
end
