# frozen_string_literal: true
class Book < Valkyrie::Resource
  attribute :alternate_ids, Valkyrie::Types::Array     # Array - allows duplicate values
              .of(Valkyrie::Types::ID)                 #   .of - expects values of type Valkyrie ID
  attribute :title, Valkyrie::Types::Set               # Set - de-duplicate values
              .of(Valkyrie::Types::String)             #   .of - expects values of type String
              .meta(ordered: true)                     #   .meta(ordered) - maintains order
  attribute :author, Valkyrie::Types::Set
              .of(Valkyrie::Types::Strict::String)     # by using Strict, raises an error if any value is not a String
              .meta(ordered: true)
  attribute :series, Valkyrie::Types::Strict::String   # by using Strict, raises an error if value is not a String
  attribute :member_ids, Valkyrie::Types::Array
              .of(Valkyrie::Types::ID).optional
  attribute :cover_art, Valkyrie::Types::Array
              .of(CoverArt)                            #   .of - expects instances of CoverArt as the value
end
