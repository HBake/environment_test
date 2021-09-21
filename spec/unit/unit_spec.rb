#location spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do

    # Create a subject to test model validity with
    subject do
        described_class.new(title: 'Harry Potter',
                            author: 'J. K. Rowling', 
                            price: 12, 
                            published_date: DateTime.now)
    end

    # Ensure that the subject is valid with all fields
    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end
    
    # Ensure that the subject is not valid without a title
    it 'is not valid without a title' do
        subject.title = nil
        expect(subject).not_to be_valid
    end
    
    # Ensure that the subject is not valid without an author
    it 'is not valid without an author' do
        subject.author = nil
        expect(subject).not_to be_valid
    end
    
    # Ensure that the subject is not valid without a price
    it 'is not valid without a price' do
        subject.price = nil
        expect(subject).not_to be_valid
    end
    
    # Ensure that the subject is not valid without a published_date
    it 'is not valid without a published_date' do
        subject.published_date = nil
        expect(subject).not_to be_valid
    end
end
