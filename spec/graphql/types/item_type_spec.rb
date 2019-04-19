RSpec.describe Types::ItemType do
  types = GraphQL::Define::TypeDefiner.instance

  it 'has an :id field of ID type' do
    expect(subject).to have_field(:id).that_returns(!types.ID)
  end

  it 'has a :name field of String type' do
    expect(subject).to have_field(:name).that_returns(!types.String)
  end

  it 'has a :done field of Boolean type' do
    expect(subject).to have_field(:done).that_returns(types.Boolean)
  end
end
