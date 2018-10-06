feature 'Entering multiple choice answers' do
    scenario 'Entering the correct answer' do
       sign_in_and_play(42)
       expect(page).to have_content "DON'T PANIC"
    end
    
    scenario 'Entering and incorrect answer' do
        sign_in_and_play(43)
        expect(page).not_to have_content "DON'T PANIC"
    end
    
end