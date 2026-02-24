# frozen_string_literal: true

module MetronomeSDK
  module Models
    class CommitRate < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute rate_type
      #
      #   @return [Symbol, MetronomeSDK::Models::CommitRate::RateType]
      required :rate_type, enum: -> { MetronomeSDK::CommitRate::RateType }

      # @!attribute minimum_config
      #   Only set for TIERED_PERCENTAGE or PERCENTAGE rate_type.
      #
      #   @return [MetronomeSDK::Models::CommitRate::MinimumConfig, nil]
      optional :minimum_config, -> { MetronomeSDK::CommitRate::MinimumConfig }

      # @!attribute price
      #   Commit rate price. For FLAT rate_type, this must be >=0. For PERCENTAGE
      #   rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0
      #   and <=1.
      #
      #   @return [Float, nil]
      optional :price, Float

      # @!attribute tiers
      #   Only set for TIERED rate_type.
      #
      #   @return [Array<MetronomeSDK::Models::Tier>, nil]
      optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Tier] }

      # @!method initialize(rate_type:, minimum_config: nil, price: nil, tiers: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::CommitRate} for more details.
      #
      #   A distinct rate on the rate card. You can choose to use this rate rather than
      #   list rate when consuming a credit or commit.
      #
      #   @param rate_type [Symbol, MetronomeSDK::Models::CommitRate::RateType]
      #
      #   @param minimum_config [MetronomeSDK::Models::CommitRate::MinimumConfig] Only set for TIERED_PERCENTAGE or PERCENTAGE rate_type.
      #
      #   @param price [Float] Commit rate price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_typ
      #
      #   @param tiers [Array<MetronomeSDK::Models::Tier>] Only set for TIERED rate_type.

      # @see MetronomeSDK::Models::CommitRate#rate_type
      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        TIERED = :TIERED
        TIERED_PERCENTAGE = :TIERED_PERCENTAGE
        CUSTOM = :CUSTOM

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MetronomeSDK::Models::CommitRate#minimum_config
      class MinimumConfig < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute minimum
        #
        #   @return [Float]
        required :minimum, Float

        # @!method initialize(minimum:)
        #   Only set for TIERED_PERCENTAGE or PERCENTAGE rate_type.
        #
        #   @param minimum [Float]
      end
    end
  end
end
