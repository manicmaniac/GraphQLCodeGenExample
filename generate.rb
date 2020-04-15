require 'graphql_swift_gen'
require 'graphql_schema'
require 'json'

introspection_result = File.read("schema.json")
schema = GraphQLSchema.new(JSON.parse(introspection_result))

GraphQLSwiftGen.new(schema, nest_under: 'ExampleSchema').save("#{Dir.pwd}/GraphQLCodeGenExample")
