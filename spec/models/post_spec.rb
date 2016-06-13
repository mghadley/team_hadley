require 'rails_helper'

RSpec.describe Post, type: :model do
	describe 'attributes' do
		it { should respond_to :title }
		it { should respond_to :body }
	end

	describe 'validations' do
		it { should validate_presence_of :title }
		it { should validate_presence_of :body }
	end
end
