# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      # @example
      #
      # ```ruby
      # rate_card_retrieve_response => {
      #   data: Metronome::Models::Contracts::RateCardRetrieveResponse::Data
      # }
      # ```
      class RateCardRetrieveResponse < Metronome::BaseModel
        # @!attribute data
        #
        #   @return [Metronome::Models::Contracts::RateCardRetrieveResponse::Data]
        required :data, -> { Metronome::Models::Contracts::RateCardRetrieveResponse::Data }

        # @!parse
        #   # @param data [Metronome::Models::Contracts::RateCardRetrieveResponse::Data]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # data => {
        #   id: String,
        #   created_at: Time,
        #   created_by: String,
        #   name: String,
        #   aliases: -> { Metronome::ArrayOf[Metronome::Models::Contracts::RateCardRetrieveResponse::Data::Alias] === _1 },
        #   **_
        # }
        # ```
        class Data < Metronome::BaseModel
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

          # @!attribute aliases
          #
          #   @return [Array<Metronome::Models::Contracts::RateCardRetrieveResponse::Data::Alias>]
          optional :aliases,
                   -> {
                     Metronome::ArrayOf[Metronome::Models::Contracts::RateCardRetrieveResponse::Data::Alias]
                   }

          # @!attribute credit_type_conversions
          #
          #   @return [Array<Metronome::Models::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion>]
          optional :credit_type_conversions,
                   -> {
                     Metronome::ArrayOf[Metronome::Models::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion]
                   }

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol => String}]
          optional :custom_fields, Metronome::HashOf[String]

          # @!attribute description
          #
          #   @return [String]
          optional :description, String

          # @!attribute fiat_credit_type
          #
          #   @return [Metronome::Models::CreditTypeData]
          optional :fiat_credit_type, -> { Metronome::Models::CreditTypeData }

          # @!parse
          #   # @param id [String]
          #   # @param created_at [String]
          #   # @param created_by [String]
          #   # @param name [String]
          #   # @param aliases [Array<Metronome::Models::Contracts::RateCardRetrieveResponse::Data::Alias>]
          #   # @param credit_type_conversions [Array<Metronome::Models::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion>]
          #   # @param custom_fields [Hash{Symbol => String}]
          #   # @param description [String]
          #   # @param fiat_credit_type [Metronome::Models::CreditTypeData]
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

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
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

          # @example
          #
          # ```ruby
          # credit_type_conversion => {
          #   custom_credit_type: Metronome::Models::CreditTypeData,
          #   fiat_per_custom_credit: String
          # }
          # ```
          class CreditTypeConversion < Metronome::BaseModel
            # @!attribute custom_credit_type
            #
            #   @return [Metronome::Models::CreditTypeData]
            required :custom_credit_type, -> { Metronome::Models::CreditTypeData }

            # @!attribute fiat_per_custom_credit
            #
            #   @return [String]
            required :fiat_per_custom_credit, String

            # @!parse
            #   # @param custom_credit_type [Metronome::Models::CreditTypeData]
            #   # @param fiat_per_custom_credit [String]
            #   #
            #   def initialize(custom_credit_type:, fiat_per_custom_credit:, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end
      end
    end
  end
end
