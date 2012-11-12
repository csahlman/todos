require 'spec_helper'

describe Todo, '#owner=' do
  it 'assigns user email to owner_email' do
    user = User.new('person@example.com')
    todo = Todo.new
    todo.owner = user
    expect(todo.owner_email).to eq 'person@example.com'
  end
end

describe Todo, '#completed?' do
  it 'returns false when completed_at is not set' do
    expect(Todo.new).not_to be_completed
  end

  it 'returns true when completed_at is set' do
    todo = Todo.new(completed_at: Time.now)
    expect(todo).to be_completed
  end
end
