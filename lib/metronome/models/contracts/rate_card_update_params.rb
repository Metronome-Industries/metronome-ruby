# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardUpdateParams < Metronome::BaseModel
        # @!attribute rate_card_id
        #   ID of the rate card to update
        #
        #   @return [String]
        required :rate_card_id, String

        # @!attribute aliases
        #   Reference this alias when creating a contract. If the same alias is assigned to multiple rate cards, it will reference the rate card to which it was most recently assigned. It is not exposed to end customers.
        #
        #   @return [Array<Metronome::Models::Contracts::RateCardUpdateParams::Alias>]
        optional :aliases,
                 -> {
                   Metronome::ArrayOf[Metronome::Models::Contracts::RateCardUpdateParams::Alias]
                 }

        # @!attribute description
        #
        #   @return [String]
        optional :description, String

        # @!attribute name
        #   Used only in UI/API. It is not exposed to end customers.
        #
        #   @return [String]
        optional :name, String

        # @!parse
        #   # @param rate_card_id [String] ID of the rate card to update
        #   #
        #   # @param aliases [Array<Metronome::Models::Contracts::RateCardUpdateParams::Alias>] Reference this alias when creating a contract. If the same alias is assigned to
        #   #   multiple rate cards, it will reference the rate card to which it was most
        #   #   recently assigned. It is not exposed to end customers.
        #   #
        #   # @param description [String]
        #   #
        #   # @param name [String] Used only in UI/API. It is not exposed to end customers.
        #   #
        #   def initialize(rate_card_id:, aliases: nil, description: nil, name: nil, **) = super

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

          # @!attribute ending_before
          #
          #   @return [Time]
          optional :ending_before, Time

          # @!attribute starting_at
          #
          #   @return [Time]
          optional :starting_at, Time

          # @!parse
          #   # @param name [String]
          #   # @param ending_before [String]
          #   # @param starting_at [String]
          #   #
          #   def initialize(name:, ending_before: nil, starting_at: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
