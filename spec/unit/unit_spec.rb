# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J.K Rowling')
  end

  it 'is valid with valid attributes (author)' do
    expect(subject).to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', price: 20)
  end

  it 'is valid with valid attributes (price)' do
    expect(subject).to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', date: Date.new(1997,6,26))
  end

  it 'is valid with valid attributes (date)' do
    expect(subject).to be_valid
  end
end