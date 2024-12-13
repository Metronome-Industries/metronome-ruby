# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardCreateParams < Metronome::BaseModel
        # @!attribute name
        #   Used only in UI/API. It is not exposed to end customers.
        #   @return [String]
        required :name, String

        # @!attribute aliases
        #   Reference this alias when creating a contract. If the same alias is assigned to multiple rate cards, it will reference the rate card to which it was most recently assigned. It is not exposed to end customers.
        #   @return [Array<Metronome::Models::Contracts::RateCardCreateParams::Alias>]
        optional :aliases,
                 Metronome::ArrayOf.new(-> { Metronome::Models::Contracts::RateCardCreateParams::Alias })

        # @!attribute credit_type_conversions
        #   Required when using custom pricing units in rates.
        #   @return [Array<Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion>]
        optional :credit_type_conversions,
                 Metronome::ArrayOf.new(
                   -> {
                     Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion
                   }
                 )

        # @!attribute custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute description
        #   @return [String]
        optional :description, String

        # @!attribute fiat_credit_type_id
        #   The Metronome ID of the credit type to associate with the rate card, defaults to USD (cents) if not passed.
        #   @return [String]
        optional :fiat_credit_type_id, String

        class Alias < Metronome::BaseModel
          # @!attribute name
          #   @return [String]
          required :name, String

          # @!attribute ending_before
          #   @return [Time]
          optional :ending_before, Time

          # @!attribute starting_at
          #   @return [Time]
          optional :starting_at, Time

          # @!parse
          #   # Create a new instance of Alias from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :name
          #   #   @option data [String, nil] :ending_before
          #   #   @option data [String, nil] :starting_at
          #   def initialize(data = {}) = super
        end

        class CreditTypeConversion < Metronome::BaseModel
          # @!attribute custom_credit_type_id
          #   @return [String]
          required :custom_credit_type_id, String

          # @!attribute fiat_per_custom_credit
          #   @return [Float]
          required :fiat_per_custom_credit, Float

          # @!parse
          #   # Create a new instance of CreditTypeConversion from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :custom_credit_type_id
          #   #   @option data [Float] :fiat_per_custom_credit
          #   def initialize(data = {}) = super
        end
      end
    end
  end
end
