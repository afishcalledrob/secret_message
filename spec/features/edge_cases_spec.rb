feature 'Entering answers that are not on the list' do
    scenario 'Entering a numerical illegal answer' do
        sign_in_and_play(59)
        expect(page).to have_content "Please make sure your answer is a number from the available options!"
    end
    
    scenario 'Entering a non-numerical illegal answer' do
       sign_in_and_play("Nonsense")
       expect(page).to have_content "Please make sure your answer is a number from the available options!"
    end
end