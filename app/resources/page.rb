# frozen_string_literal: true
class Page < Valkyrie::Resource
  attribute :alternate_ids, Valkyrie::Types::Array.of(Valkyrie::Types::ID)
  attribute :page_num, Valkyrie::Types::String          # single value that is expected to be a String
  attribute :structure, Valkyrie::Types::Strict::String
  attribute :image_id, Valkyrie::Types::ID              # ID of stored file for image
end
