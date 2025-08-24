# frozen_string_literal: true

module MetronomeSDK
  module Models
    class OverrideTier < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute multiplier
      #
      #   @return [Float]
      required :multiplier, Float

      # @!attribute size
      #
      #   @return [Float, nil]
      optional :size, Float

      # @!method initialize(multiplier:, size: nil)
      #   @param multiplier [Float]
      #   @param size [Float]
    end
  end
end
