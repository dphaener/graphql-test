UserType = GraphQL::ObjectType.define do
  name "User"
  description "A User"

  # Standard Fields
  field :id, !types.Int, "The ID"
  field :name, !types.String, "The users name"
  field :email, !types.String, "The users email address"
end
