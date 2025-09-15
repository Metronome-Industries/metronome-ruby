# frozen_string_literal: true

module MetronomeSDK
  module Models
    class CommitRate < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute rate_type
      #
      #   @return [Symbol, MetronomeSDK::Models::CommitRate::RateType]
      required :rate_type, enum: -> { MetronomeSDK::CommitRate::RateType }

      # @!attribute price
      #   Commit rate price. For FLAT rate_type, this must be >=0.
      #
      #   @return [Float, nil]
      optional :price, Float

      # @!attribute tiers
      #   Only set for TIERED rate_type.
      #
      #   @return [Array<MetronomeSDK::Models::Tier>, nil]
      optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Tier] }

      # @!method initialize(rate_type:, price: nil, tiers: nil)
      #   A distinct rate on the rate card. You can choose to use this rate rather than
      #   list rate when consuming a credit or commit.
      #
      #   @param rate_type [Symbol, MetronomeSDK::Models::CommitRate::RateType]
      #
      #   @param price [Float] Commit rate price. For FLAT rate_type, this must be >=0.
      #
      #   @param tiers [Array<MetronomeSDK::Models::Tier>] Only set for TIERED rate_type.

      # @see MetronomeSDK::Models::CommitRate#rate_type
      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        TIERED = :TIERED
        CUSTOM = :CUSTOM

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
