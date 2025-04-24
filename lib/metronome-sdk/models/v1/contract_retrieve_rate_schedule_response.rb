# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class ContractRetrieveRateScheduleResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data>]
        required :data,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data] }

        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String, nil?: true

        # @!parse
        #   # @param data [Array<MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data>]
        #   # @param next_page [String, nil]
        #   #
        #   def initialize(data:, next_page: nil, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Data < MetronomeSDK::BaseModel
          # @!attribute entitled
          #
          #   @return [Boolean]
          required :entitled, MetronomeSDK::BooleanModel

          # @!attribute list_rate
          #
          #   @return [MetronomeSDK::Models::Rate]
          required :list_rate, -> { MetronomeSDK::Models::Rate }

          # @!attribute product_custom_fields
          #
          #   @return [Hash{Symbol=>String}]
          required :product_custom_fields, MetronomeSDK::HashOf[String]

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute product_name
          #
          #   @return [String]
          required :product_name, String

          # @!attribute product_tags
          #
          #   @return [Array<String>]
          required :product_tags, MetronomeSDK::ArrayOf[String]

          # @!attribute rate_card_id
          #
          #   @return [String]
          required :rate_card_id, String

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute [r] commit_rate
          #   A distinct rate on the rate card. You can choose to use this rate rather than
          #     list rate when consuming a credit or commit.
          #
          #   @return [MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate, nil]
          optional :commit_rate,
                   -> { MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate]
          #   attr_writer :commit_rate

          # @!attribute [r] ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

          # @!attribute [r] override_rate
          #
          #   @return [MetronomeSDK::Models::Rate, nil]
          optional :override_rate, -> { MetronomeSDK::Models::Rate }

          # @!parse
          #   # @return [MetronomeSDK::Models::Rate]
          #   attr_writer :override_rate

          # @!attribute [r] pricing_group_values
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :pricing_group_values, MetronomeSDK::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :pricing_group_values

          # @!parse
          #   # @param entitled [Boolean]
          #   # @param list_rate [MetronomeSDK::Models::Rate]
          #   # @param product_custom_fields [Hash{Symbol=>String}]
          #   # @param product_id [String]
          #   # @param product_name [String]
          #   # @param product_tags [Array<String>]
          #   # @param rate_card_id [String]
          #   # @param starting_at [Time]
          #   # @param commit_rate [MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate]
          #   # @param ending_before [Time]
          #   # @param override_rate [MetronomeSDK::Models::Rate]
          #   # @param pricing_group_values [Hash{Symbol=>String}]
          #   #
          #   def initialize(
          #     entitled:,
          #     list_rate:,
          #     product_custom_fields:,
          #     product_id:,
          #     product_name:,
          #     product_tags:,
          #     rate_card_id:,
          #     starting_at:,
          #     commit_rate: nil,
          #     ending_before: nil,
          #     override_rate: nil,
          #     pricing_group_values: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class CommitRate < MetronomeSDK::BaseModel
            # @!attribute rate_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType }

            # @!attribute [r] price
            #   Commit rate price. For FLAT rate_type, this must be >=0.
            #
            #   @return [Float, nil]
            optional :price, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :price

            # @!attribute [r] tiers
            #   Only set for TIERED rate_type.
            #
            #   @return [Array<MetronomeSDK::Models::Tier>, nil]
            optional :tiers, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Tier] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::Tier>]
            #   attr_writer :tiers

            # @!parse
            #   # A distinct rate on the rate card. You can choose to use this rate rather than
            #   #   list rate when consuming a credit or commit.
            #   #
            #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType]
            #   # @param price [Float]
            #   # @param tiers [Array<MetronomeSDK::Models::Tier>]
            #   #
            #   def initialize(rate_type:, price: nil, tiers: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case rate_type
            # in :FLAT
            #   # ...
            # in :PERCENTAGE
            #   # ...
            # in :SUBSCRIPTION
            #   # ...
            # in :TIERED
            #   # ...
            # in :CUSTOM
            #   # ...
            # end
            # ```
            class RateType < MetronomeSDK::Enum
              FLAT = :FLAT
              PERCENTAGE = :PERCENTAGE
              SUBSCRIPTION = :SUBSCRIPTION
              TIERED = :TIERED
              CUSTOM = :CUSTOM

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end
      end
    end
  end
end
