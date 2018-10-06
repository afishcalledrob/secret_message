class Message
   def initialize
     @message_elements = ["'", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", " "]
     @message_generating_code = [2, 13, 12, 26, 18, 25, 14, 27, 12, 7, 1]
     @holding_array = []
     @message = ""
   end
   
   def message_generator
      message = @message
      @message_generating_code.each do |code_component|
        message = message + @message_elements[code_component]
      end
      return message
   end
   
   def message_decrypter(num)
      holding_array = @holding_array
      @message_generating_code.each do |code_component|
         code_component += num%40
         while code_component > 27
            code_component -= 28
         end
         holding_array << code_component
      end
      @message_generating_code = holding_array
   end
end