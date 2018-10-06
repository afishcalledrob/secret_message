require 'message'

describe Message do
    describe 'message_generator' do
       it "should return a message in which each character is shifted 2 spaces down from the phrase 'DON'T PANIC'" do
         expect(subject.message_generator).to eq 'BMLZRYN LGA'
       end
    end
    
    describe 'message_decrypter' do
      it "should respond to message_generator with the message 'DON'T PANIC' when message_decrypter is given argument 42" do
          subject.message_decrypter(42)
          expect(subject.message_generator).to eq "DON'T PANIC"
      end
      
      it "should return an unchanged method when given argument 40" do
         subject.message_decrypter(40)
         expect(subject.message_generator).to eq 'BMLZRYN LGA'
      end
      
      it "should respond with nonsense when given argument 41" do
         subject.message_decrypter(41)
         expect(subject.message_generator).not_to eq "DON'T PANIC"
      end
    end
end