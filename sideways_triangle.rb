def sideways_triangle(amount)
  return "Must provide even value as argument." if amount.odd?
  row = 1
  while row <= amount
    print "#" * (amount/2 - (amount/2 - row).abs) + "\n"
    row += 1
  end
end

sideways_triangle(12)

# OUTPUT

#
##
###
####
#####
######
#####
####
###
##
#

=> nil
