# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      # @example
      # ```ruby
      # rate_card_list_response => {
      #   id: String,
      #   created_at: Time,
      #   created_by: String,
      #   name: String,
      #   aliases: -> { Metronome::ArrayOf[Metronome::Models::Contracts::RateCardListResponse::Alias] === _1 },
      #   **_
      # }
      # ```
      class RateCardListResponse < Metronome::BaseModel
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
        #   @return [Array<Metronome::Models::Contracts::RateCardListResponse::Alias>]
        optional :aliases,
                 -> {
                   Metronome::ArrayOf[Metronome::Models::Contracts::RateCardListResponse::Alias]
                 }

        # @!parse
        #   # @return [Array<Metronome::Models::Contracts::RateCardListResponse::Alias>]
        #   attr_writer :aliases

        # @!attribute [r] credit_type_conversions
        #
        #   @return [Array<Metronome::Models::Contracts::RateCardListResponse::CreditTypeConversion>]
        optional :credit_type_conversions,
                 -> {
                   Metronome::ArrayOf[Metronome::Models::Contracts::RateCardListResponse::CreditTypeConversion]
                 }

        # @!parse
        #   # @return [Array<Metronome::Models::Contracts::RateCardListResponse::CreditTypeConversion>]
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

        # @!attribute [r] fiat_credit_type
        #
        #   @return [Metronome::Models::CreditTypeData, nil]
        optional :fiat_credit_type, -> { Metronome::Models::CreditTypeData }

        # @!parse
        #   # @return [Metronome::Models::CreditTypeData]
        #   attr_writer :fiat_credit_type

        # @!parse
        #   # @param id [String]
        #   # @param created_at [String]
        #   # @param created_by [String]
        #   # @param name [String]
        #   # @param aliases [Array<Metronome::Models::Contracts::RateCardListResponse::Alias>]
        #   # @param credit_type_conversions [Array<Metronome::Models::Contracts::RateCardListResponse::CreditTypeConversion>]
        #   # @param custom_fields [Hash{Symbol=>String}]
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
