# frozen_string_literal: true

module Metronome
  module Models
    class RateCardRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::RateCardRetrieveResponse::Data]
      required :data, -> { Metronome::Models::RateCardRetrieveResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] created_at
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] created_by
        #   @return [String]
        required :created_by, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] rate_card_entries
        #   @return [Hash]
        required :rate_card_entries, Hash

        # @!attribute [rw] aliases
        #   @return [Array<Metronome::Models::RateCardRetrieveResponse::Data::Alias>]
        optional :aliases, Metronome::ArrayOf.new(-> { Metronome::Models::RateCardRetrieveResponse::Data::Alias })

        # @!attribute [rw] credit_type_conversions
        #   @return [Array<Metronome::Models::RateCardRetrieveResponse::Data::CreditTypeConversion>]
        optional :credit_type_conversions,
                 Metronome::ArrayOf.new(-> { Metronome::Models::RateCardRetrieveResponse::Data::CreditTypeConversion })

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute [rw] description
        #   @return [String]
        optional :description, String

        # @!attribute [rw] fiat_credit_type
        #   @return [Metronome::Models::CreditType]
        optional :fiat_credit_type, -> { Metronome::Models::CreditType }

        class RateCardEntry < BaseModel
          # @!attribute [rw] current
          #   @return [Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Current]
          optional :current,
                   -> { Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Current }

          # @!attribute [rw] updates
          #   @return [Array<Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update>]
          optional :updates,
                   Metronome::ArrayOf.new(-> { Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update })

          class Current < BaseModel
            # @!attribute [rw] id
            #   @return [String]
            optional :id, String

            # @!attribute [rw] created_at
            #   @return [String]
            optional :created_at, String

            # @!attribute [rw] created_by
            #   @return [String]
            optional :created_by, String

            # @!attribute [rw] credit_type
            #   @return [Metronome::Models::CreditType]
            optional :credit_type, -> { Metronome::Models::CreditType }

            # @!attribute [rw] custom_rate
            #   @return [Hash]
            optional :custom_rate, Hash

            # @!attribute [rw] ending_before
            #   @return [String]
            optional :ending_before, String

            # @!attribute [rw] entitled
            #   @return [Boolean]
            optional :entitled, Metronome::BooleanModel

            # @!attribute [rw] price
            #   @return [Float]
            optional :price, Float

            # @!attribute [rw] product_id
            #   @return [String]
            optional :product_id, String

            # @!attribute [rw] rate_type
            #   @return [Symbol]
            optional :rate_type, Metronome::Enum.new(:FLAT, :PERCENTAGE, :SUBSCRIPTION, :CUSTOM, :TIERED)

            # @!attribute [rw] starting_at
            #   @return [String]
            optional :starting_at, String

            # @!attribute [rw] tiers
            #   @return [Array<Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Current::Tier>]
            optional :tiers,
                     Metronome::ArrayOf.new(-> { Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Current::Tier })

            class Tier < BaseModel
              # @!attribute [rw] price
              #   @return [Float]
              required :price, Float

              # @!attribute [rw] size
              #   @return [Float]
              optional :size, Float
            end
          end

          class Update < BaseModel
            # @!attribute [rw] id
            #   @return [String]
            required :id, String

            # @!attribute [rw] created_at
            #   @return [String]
            required :created_at, String

            # @!attribute [rw] created_by
            #   @return [String]
            required :created_by, String

            # @!attribute [rw] entitled
            #   @return [Boolean]
            required :entitled, Metronome::BooleanModel

            # @!attribute [rw] product_id
            #   @return [String]
            required :product_id, String

            # @!attribute [rw] rate_type
            #   @return [Symbol]
            required :rate_type, Metronome::Enum.new(:FLAT, :PERCENTAGE, :SUBSCRIPTION, :CUSTOM, :TIERED)

            # @!attribute [rw] starting_at
            #   @return [String]
            required :starting_at, String

            # @!attribute [rw] credit_type
            #   @return [Metronome::Models::CreditType]
            optional :credit_type, -> { Metronome::Models::CreditType }

            # @!attribute [rw] custom_rate
            #   @return [Hash]
            optional :custom_rate, Hash

            # @!attribute [rw] ending_before
            #   @return [String]
            optional :ending_before, String

            # @!attribute [rw] is_prorated
            #   @return [Boolean]
            optional :is_prorated, Metronome::BooleanModel

            # @!attribute [rw] price
            #   @return [Float]
            optional :price, Float

            # @!attribute [rw] quantity
            #   @return [Float]
            optional :quantity, Float

            # @!attribute [rw] tiers
            #   @return [Array<Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update::Tier>]
            optional :tiers,
                     Metronome::ArrayOf.new(-> { Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update::Tier })

            class Tier < BaseModel
              # @!attribute [rw] price
              #   @return [Float]
              required :price, Float

              # @!attribute [rw] size
              #   @return [Float]
              optional :size, Float
            end
          end
        end

        class Alias < BaseModel
          # @!attribute [rw] name_
          #   @return [String]
          required :name_, String

          # @!attribute [rw] ending_before
          #   @return [String]
          optional :ending_before, String

          # @!attribute [rw] starting_at
          #   @return [String]
          optional :starting_at, String
        end

        class CreditTypeConversion < BaseModel
          # @!attribute [rw] custom_credit_type
          #   @return [Metronome::Models::CreditType]
          required :custom_credit_type, -> { Metronome::Models::CreditType }

          # @!attribute [rw] fiat_per_custom_credit
          #   @return [String]
          required :fiat_per_custom_credit, String
        end
      end
    end
  end
end
