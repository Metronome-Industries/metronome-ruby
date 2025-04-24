# frozen_string_literal: true

module MetronomeSDK
  module Models
    class ID < MetronomeSDK::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   def initialize(id:, **) = super

      # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
    end
  end
end
