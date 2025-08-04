# frozen_string_literal: true

module MetronomeSDK
  module Models
    class ID < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   @param id [String]
    end
  end
end
