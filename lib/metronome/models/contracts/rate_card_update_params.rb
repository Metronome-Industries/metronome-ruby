# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardUpdateParams < Metronome::BaseModel
        # @!attribute [rw] rate_card_id
        #   ID of the rate card to update
        #   @return [String]
        required :rate_card_id, String

        # @!attribute [rw] aliases
        #   Reference this alias when creating a contract. If the same alias is assigned to multiple rate cards, it will reference the rate card to which it was most recently assigned. It is not exposed to end customers.
        #   @return [Array<Metronome::Models::Contracts::RateCardUpdateParams::Alias>]
        optional :aliases,
                 Metronome::ArrayOf.new(-> { Metronome::Models::Contracts::RateCardUpdateParams::Alias })

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute [rw] description
        #   @return [String]
        optional :description, String

        # @!attribute [rw] name
        #   Used only in UI/API. It is not exposed to end customers.
        #   @return [String]
        optional :name, String

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
      end
    end
  end
end
