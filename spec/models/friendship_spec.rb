require 'rails_helper'
require 'capybara/rspec'

RSpec.describe Friendship, type: :model do
  context 'Friendships associations tests' do
    it { should belong_to(:user).class_name('User') }
    it { should belong_to(:friend).with_foreign_key('attendee_id') }
  end
end
