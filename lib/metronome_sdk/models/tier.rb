# frozen_string_literal: true

module MetronomeSDK
  module Models
    class Tier < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute price
      #
      #   @return [Float]
      required :price, Float

      # @!attribute size
      #
      #   @return [Float, nil]
      optional :size, Float

      # @!method initialize(price:, size: nil)
      #   @param price [Float]
      #   @param size [Float]
    end
  end
end
