# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardCreateParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        # @!attribute name
        #   Used only in UI/API. It is not exposed to end customers.
        #
        #   @return [String]
        required :name, String

        # @!attribute [r] aliases
        #   Reference this alias when creating a contract. If the same alias is assigned to
        #     multiple rate cards, it will reference the rate card to which it was most
        #     recently assigned. It is not exposed to end customers.
        #
        #   @return [Array<Metronome::Models::Contracts::RateCardCreateParams::Alias>]
        optional :aliases,
                 -> {
                   Metronome::ArrayOf[Metronome::Models::Contracts::RateCardCreateParams::Alias]
                 }

        # @!parse
        #   # @return [Array<Metronome::Models::Contracts::RateCardCreateParams::Alias>]
        #   attr_writer :aliases

        # @!attribute [r] credit_type_conversions
        #   Required when using custom pricing units in rates.
        #
        #   @return [Array<Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion>]
        optional :credit_type_conversions,
                 -> {
                   Metronome::ArrayOf[Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion]
                 }

        # @!parse
        #   # @return [Array<Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion>]
        #   attr_writer :credit_type_conversions

        # @!attribute [r] custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, Metronome::HashOf[String]

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

        # @!attribute [r] fiat_credit_type_id
        #   The Metronome ID of the credit type to associate with the rate card, defaults to
        #     USD (cents) if not passed.
        #
        #   @return [String, nil]
        optional :fiat_credit_type_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :fiat_credit_type_id

        # @!parse
        #   # @param name [String]
        #   # @param aliases [Array<Metronome::Models::Contracts::RateCardCreateParams::Alias>]
        #   # @param credit_type_conversions [Array<Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion>]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param description [String]
        #   # @param fiat_credit_type_id [String]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     name:,
        #     aliases: nil,
        #     credit_type_conversions: nil,
        #     custom_fields: nil,
        #     description: nil,
        #     fiat_credit_type_id: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # alias => {
        #   name: String,
        #   ending_before: Time,
        #   starting_at: Time
        # }
        # ```
        class Alias < Metronome::BaseModel
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
          #   # @param ending_before [String]
          #   # @param starting_at [String]
          #   #
          #   def initialize(name:, ending_before: nil, starting_at: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        # @example
        # ```ruby
        # credit_type_conversion => {
        #   custom_credit_type_id: String,
        #   fiat_per_custom_credit: Float
        # }
        # ```
        class CreditTypeConversion < Metronome::BaseModel
          # @!attribute custom_credit_type_id
          #
          #   @return [String]
          required :custom_credit_type_id, String

          # @!attribute fiat_per_custom_credit
          #
          #   @return [Float]
          required :fiat_per_custom_credit, Float

          # @!parse
          #   # @param custom_credit_type_id [String]
          #   # @param fiat_per_custom_credit [Float]
          #   #
          #   def initialize(custom_credit_type_id:, fiat_per_custom_credit:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
