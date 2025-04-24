# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class RateCardRetrieveResponse < MetronomeSDK::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data]
          required :data, -> { MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data }

          # @!parse
          #   # @param data [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data]
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class Data < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute created_by
            #
            #   @return [String]
            required :created_by, String

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute [r] aliases
            #
            #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::Alias>, nil]
            optional :aliases,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::Alias] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::Alias>]
            #   attr_writer :aliases

            # @!attribute [r] credit_type_conversions
            #
            #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion>, nil]
            optional :credit_type_conversions,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion>]
            #   attr_writer :credit_type_conversions

            # @!attribute [r] custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :custom_fields

            # @!attribute [r] description
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] fiat_credit_type
            #
            #   @return [MetronomeSDK::Models::CreditTypeData, nil]
            optional :fiat_credit_type, -> { MetronomeSDK::Models::CreditTypeData }

            # @!parse
            #   # @return [MetronomeSDK::Models::CreditTypeData]
            #   attr_writer :fiat_credit_type

            # @!parse
            #   # @param id [String]
            #   # @param created_at [Time]
            #   # @param created_by [String]
            #   # @param name [String]
            #   # @param aliases [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::Alias>]
            #   # @param credit_type_conversions [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion>]
            #   # @param custom_fields [Hash{Symbol=>String}]
            #   # @param description [String]
            #   # @param fiat_credit_type [MetronomeSDK::Models::CreditTypeData]
            #   #
            #   def initialize(
            #     id:,
            #     created_at:,
            #     created_by:,
            #     name:,
            #     aliases: nil,
            #     credit_type_conversions: nil,
            #     custom_fields: nil,
            #     description: nil,
            #     fiat_credit_type: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class Alias < MetronomeSDK::BaseModel
              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute [r] ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :ending_before

              # @!attribute [r] starting_at
              #
              #   @return [Time, nil]
              optional :starting_at, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :starting_at

              # @!parse
              #   # @param name [String]
              #   # @param ending_before [Time]
              #   # @param starting_at [Time]
              #   #
              #   def initialize(name:, ending_before: nil, starting_at: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class CreditTypeConversion < MetronomeSDK::BaseModel
              # @!attribute custom_credit_type
              #
              #   @return [MetronomeSDK::Models::CreditTypeData]
              required :custom_credit_type, -> { MetronomeSDK::Models::CreditTypeData }

              # @!attribute fiat_per_custom_credit
              #
              #   @return [String]
              required :fiat_per_custom_credit, String

              # @!parse
              #   # @param custom_credit_type [MetronomeSDK::Models::CreditTypeData]
              #   # @param fiat_per_custom_credit [String]
              #   #
              #   def initialize(custom_credit_type:, fiat_per_custom_credit:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
