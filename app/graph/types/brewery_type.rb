BreweryType = GraphQL::ObjectType.define do
  name "Brewery"
  description "A Brewery"

  # Fields
  field :id, "This is totally invalid"
end
