# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

pp find(2)
pp experienced?(@candidates[0])
pp github?(@candidates[0])
pp languages?(@candidates[0])
pp date?(@candidates[0])
pp age?(@candidates[0])
pp qualified_candidates(@candidates)
pp ordered_by_qualifications(@candidates)