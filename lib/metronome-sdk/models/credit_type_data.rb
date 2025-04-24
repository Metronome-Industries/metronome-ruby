# frozen_string_literal: true

module MetronomeSDK
  module Models
    class CreditTypeData < MetronomeSDK::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # @param id [String]
      #   # @param name [String]
      #   #
      #   def initialize(id:, name:, **) = super

      # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
    end
  end
end
