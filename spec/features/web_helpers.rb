def sign_in_with_name
  visit('/')
  fill_in :player_name, with: 'Luc'
  click_button('Submit')
end

def possible_messages
  [:rock, :paper, :scissors].map { |option| "Computer chose #{option.to_s.capitalize}" }
end
