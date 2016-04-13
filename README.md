## A simple test to reproduce a graphql-ruby bug

Using graphql-ruby 0.12.0

Migrate and Seed the database first.

There is a query called viewer that is just a simple user query. There is also
a type called 'BreweryType' that is not valid:

`field :id, "This is invalid"`

Because the viewer doesn't query this type, no error is thrown in development,
but in production, this will throw an error.

