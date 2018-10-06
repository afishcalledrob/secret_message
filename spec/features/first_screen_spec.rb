feature 'Home screen' do
    scenario 'encoded message on the home page' do
       visit('/')
       expect(page).to have_content "BMLZRYN LGA"
    end
    
    scenario 'decrypted message not on the home page' do
       visit('/')
       expect(page).not_to have_content "DON'T PANIC"
    end
    
    scenario 'multiple choice question' do
       visit('/')
       expect(page).to have_content "What is the answer to the ultimate question of life, the universe and everything?"
    end
end