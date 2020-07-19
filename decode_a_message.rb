def decoder(sequence)
  upcase = ("A".."Z").to_a
  downcase = ("a".."z").to_a
  punctuation = ["!", "?", ",", ".", " ", ";", '"', "'"]

  mode = "up"
  decoded_message = []
  
  sequence.each do |integer|
    if mode == "punct"
      remainder = integer % 9
    else
      remainder = integer % 27
    end
    
    if remainder == 0
      if mode == "punct"
        mode = "up" 
      elsif mode == "up"
        mode = "down"
      elsif mode = "down"
        mode = "punct"
      end

      next
    end

  decoded_message << upcase[remainder - 1] if mode == "up"
  decoded_message << downcase[remainder - 1] if mode == "down" 
  decoded_message << punctuation[remainder - 1] if mode == "punct"
  end

  return decoded_message.join
end

code = [18, 12312, 171, 763, 98423, 1208, 216, 11, 500, 18, 241, 0, 32, 20620, 27, 10]

decoder(code)
