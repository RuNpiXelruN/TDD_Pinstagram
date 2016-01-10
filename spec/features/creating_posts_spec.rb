require 'rails_helper.rb'

feature 'Creating posts' do  
  scenario 'can create a job' do
    visit '/'
    click_link 'New Post'
    attach_file('image', "/spec/files/images/1.jpg")
    fill_in 'Caption', with: 'nom nom nom #coffeetime' 
    click_button 'Create Post'
    expect(page).to have_content('#coffeetime')
    expect(page).to have_css("img[src*='1.jpg']")
  end
end  