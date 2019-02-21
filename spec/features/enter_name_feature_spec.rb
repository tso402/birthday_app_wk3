require './app.rb'

describe 'Entering your name and birthday', type: :feature do
  before :each do
    @name = 'James' 
  end

  it 'submits the name and birthday and shows name on next screen' do
    enter_a_name_and_birthday(@name,'14','October')
    expect(page).to have_content @name
  end

  it 'submits a date that is today and displays happy birthday' do
  enter_a_name_and_birthday(@name,Time.new.day.to_s,Date.today.strftime("%B"))
  expect(page).to have_content 'Happy Birthday James!'
  end

  it 'submits a date that is after today and displays the difference' do
    enter_a_name_and_birthday(@name,'14','October')
    expect(page).to have_content 'Your birthday will be in 235 days, James!!!'
  end

  it 'submits a date that is before today and displays the difference' do
    enter_a_name_and_birthday(@name,'14','January')
    expect(page).to have_content 'Your birthday will be in 327 days, James!!!'
  end
end