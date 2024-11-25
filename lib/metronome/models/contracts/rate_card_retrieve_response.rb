# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardRetrieveResponse < Metronome::BaseModel
        # @!attribute [rw] data
        #   @return [Metronome::Models::Contracts::RateCardRetrieveResponse::Data]
        required :data, -> { Metronome::Models::Contracts::RateCardRetrieveResponse::Data }

        class Data < Metronome::BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

          # @!attribute [rw] created_at
          #   @return [Time]
          required :created_at, Time

          # @!attribute [rw] created_by
          #   @return [String]
          required :created_by, String

          # @!attribute [rw] name
          #   @return [String]
          required :name, String

          # @!attribute [rw] aliases
          #   @return [Array<Metronome::Models::Contracts::RateCardRetrieveResponse::Data::Alias>]
          optional :aliases,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::Contracts::RateCardRetrieveResponse::Data::Alias
                     }
                   )

          # @!attribute [rw] credit_type_conversions
          #   @return [Array<Metronome::Models::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion>]
          optional :credit_type_conversions,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion
                     }
                   )

          # @!attribute [rw] custom_fields
          #   @return [Hash]
          optional :custom_fields, Hash

          # @!attribute [rw] description
          #   @return [String]
          optional :description, String

          # @!attribute [rw] fiat_credit_type
          #   @return [Metronome::Models::CreditTypeData]
          optional :fiat_credit_type, -> { Metronome::Models::CreditTypeData }

          class Alias < Metronome::BaseModel
            # @!attribute [rw] name
            #   @return [String]
            required :name, String

            # @!attribute [rw] ending_before
            #   @return [Time]
            optional :ending_before, Time

            # @!attribute [rw] starting_at
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
            # @!attribute [rw] custom_credit_type
            #   @return [Metronome::Models::CreditTypeData]
            required :custom_credit_type, -> { Metronome::Models::CreditTypeData }

            # @!attribute [rw] fiat_per_custom_credit
            #   @return [String]
            required :fiat_per_custom_credit, String

            # @!parse
            #   # Create a new instance of CreditTypeConversion from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Object] :custom_credit_type
            #   #   @option data [String] :fiat_per_custom_credit
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of Data from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id
          #   #   @option data [String] :created_at
          #   #   @option data [String] :created_by
          #   #   @option data [String] :name
          #   #   @option data [Array<Object>, nil] :aliases
          #   #   @option data [Array<Object>, nil] :credit_type_conversions
          #   #   @option data [Hash, nil] :custom_fields
          #   #   @option data [String, nil] :description
          #   #   @option data [Object, nil] :fiat_credit_type
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of RateCardRetrieveResponse from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :data
        #   def initialize(data = {}) = super
      end
    end
  end
end
