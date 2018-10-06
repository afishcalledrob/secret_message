def sign_in_and_play(ans)
   visit('/')
       fill_in :answer, with: ans
       click_button 'Submit' 
end