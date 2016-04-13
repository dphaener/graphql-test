QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  field :viewer do
    type UserType
    resolve -> (obj, args, ctx) {
      User.find(1)
    }
  end
end
