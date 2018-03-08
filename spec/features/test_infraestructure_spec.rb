require 'app'

describe Battle do

  before do
    visit '/'
  end

  feature 'home' do

    scenario 'checks that the hompage says Testing infrastructure working!' do
      expect(page).to have_content 'Testing infrastructure working!'
    end

  end

end
