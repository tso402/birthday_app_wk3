require './app.rb'

describe 'Entering your name and birthday', type: :feature do

  it 'submits the name and birthday and shows name on next screen' do
    visit '/'
    fill_in 'name', with: 'James'
    fill_in 'day', with: '14'
    #find('month').find(:xpath, 'option[10]').select_option
    page.select("October", :from => "month")
    click_button('Go')
    #expect(page).to have_content 'James'
  end



end