# frozen_string_literal: true
class CoverArt < Valkyrie::Resource
  attribute :alternate_ids, Valkyrie::Types::Array.of(Valkyrie::Types::ID)
  attribute :artists, Valkyrie::Types::Set.of(Valkyrie::Types::Strict::String)
  attribute :image_id, Valkyrie::Types::ID
end
