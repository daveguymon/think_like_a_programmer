def inverted_triangle(amount)
  return "Parameter must be event number" if amount.odd?
  row = 1

  (amount / 2).times do
    print (" " * (row - 1)) + ("#" * amount) + (" " * (row - 1)) + "\n"
    row += 1
    amount -= 2
  end

  return
end

inverted_triangle(30)


# OUTPUT

##############################
 ############################ 
  ##########################  
   ########################   
    ######################    
     ####################     
      ##################      
       ################       
        ##############        
         ############         
          ##########          
           ########           
            ######            
             ####             
              ##   
