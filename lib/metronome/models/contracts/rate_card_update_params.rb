# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardUpdateParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        # @!attribute rate_card_id
        #   ID of the rate card to update
        #
        #   @return [String]
        required :rate_card_id, String

        # @!attribute [r] aliases
        #   Reference this alias when creating a contract. If the same alias is assigned to
        #     multiple rate cards, it will reference the rate card to which it was most
        #     recently assigned. It is not exposed to end customers.
        #
        #   @return [Array<Metronome::Models::Contracts::RateCardUpdateParams::Alias>, nil]
        optional :aliases, -> { Metronome::ArrayOf[Metronome::Models::Contracts::RateCardUpdateParams::Alias] }

        # @!parse
        #   # @return [Array<Metronome::Models::Contracts::RateCardUpdateParams::Alias>]
        #   attr_writer :aliases

        # @!attribute [r] description
        #
        #   @return [String, nil]
        optional :description, String

        # @!parse
        #   # @return [String]
        #   attr_writer :description

        # @!attribute [r] name
        #   Used only in UI/API. It is not exposed to end customers.
        #
        #   @return [String, nil]
        optional :name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :name

        # @!parse
        #   # @param rate_card_id [String]
        #   # @param aliases [Array<Metronome::Models::Contracts::RateCardUpdateParams::Alias>]
        #   # @param description [String]
        #   # @param name [String]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(rate_card_id:, aliases: nil, description: nil, name: nil, request_options: {}, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

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
          #   # @param ending_before [Time]
          #   # @param starting_at [Time]
          #   #
          #   def initialize(name:, ending_before: nil, starting_at: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
