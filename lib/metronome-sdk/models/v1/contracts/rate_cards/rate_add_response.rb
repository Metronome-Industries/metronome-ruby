# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateAddResponse < MetronomeSDK::BaseModel
            # @!attribute data
            #
            #   @return [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data]
            required :data, -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data }

            # @!parse
            #   # @param data [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class Data < MetronomeSDK::BaseModel
              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType }

              # @!attribute [r] commit_rate
              #   A distinct rate on the rate card. You can choose to use this rate rather than
              #     list rate when consuming a credit or commit.
              #
              #   @return [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate, nil]
              optional :commit_rate,
                       -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate }

              # @!parse
              #   # @return [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate]
              #   attr_writer :commit_rate

              # @!attribute [r] credit_type
              #
              #   @return [MetronomeSDK::Models::CreditTypeData, nil]
              optional :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

              # @!parse
              #   # @return [MetronomeSDK::Models::CreditTypeData]
              #   attr_writer :credit_type

              # @!attribute [r] custom_rate
              #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
              #     processors.
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :custom_rate, MetronomeSDK::HashOf[MetronomeSDK::Unknown]

              # @!parse
              #   # @return [Hash{Symbol=>Object}]
              #   attr_writer :custom_rate

              # @!attribute [r] is_prorated
              #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #     set to true.
              #
              #   @return [Boolean, nil]
              optional :is_prorated, MetronomeSDK::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :is_prorated

              # @!attribute [r] price
              #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              #     this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :price

              # @!attribute [r] pricing_group_values
              #   if pricing groups are used, this will contain the values used to calculate the
              #     price
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :pricing_group_values, MetronomeSDK::HashOf[String]

              # @!parse
              #   # @return [Hash{Symbol=>String}]
              #   attr_writer :pricing_group_values

              # @!attribute [r] quantity
              #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] tiers
              #   Only set for TIERED rate_type.
              #
              #   @return [Array<MetronomeSDK::Models::Tier>, nil]
              optional :tiers, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Tier] }

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::Tier>]
              #   attr_writer :tiers

              # @!attribute [r] use_list_prices
              #   Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
              #     using list prices rather than the standard rates for this product on the
              #     contract.
              #
              #   @return [Boolean, nil]
              optional :use_list_prices, MetronomeSDK::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :use_list_prices

              # @!parse
              #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType]
              #   # @param commit_rate [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate]
              #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
              #   # @param custom_rate [Hash{Symbol=>Object}]
              #   # @param is_prorated [Boolean]
              #   # @param price [Float]
              #   # @param pricing_group_values [Hash{Symbol=>String}]
              #   # @param quantity [Float]
              #   # @param tiers [Array<MetronomeSDK::Models::Tier>]
              #   # @param use_list_prices [Boolean]
              #   #
              #   def initialize(
              #     rate_type:,
              #     commit_rate: nil,
              #     credit_type: nil,
              #     custom_rate: nil,
              #     is_prorated: nil,
              #     price: nil,
              #     pricing_group_values: nil,
              #     quantity: nil,
              #     tiers: nil,
              #     use_list_prices: nil,
              #     **
              #   )
              #     super
              #   end

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
              # in :CUSTOM
              #   # ...
              # in :TIERED
              #   # ...
              # end
              # ```
              class RateType < MetronomeSDK::Enum
                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                CUSTOM = :CUSTOM
                TIERED = :TIERED

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end

              class CommitRate < MetronomeSDK::BaseModel
                # @!attribute rate_type
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType]
                required :rate_type,
                         enum: -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType }

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
                #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType]
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
  end
end
