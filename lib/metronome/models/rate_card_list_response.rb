# frozen_string_literal: true

module Metronome
  module Models
    class RateCardListResponse < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   @return [DateTime]
      required :created_at, DateTime

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
      #   @return [Array<Metronome::Models::RateCardListResponse::Alias>]
      optional :aliases, Metronome::ArrayOf.new(-> { Metronome::Models::RateCardListResponse::Alias })

      # @!attribute [rw] credit_type_conversions
      #   @return [Array<Metronome::Models::RateCardListResponse::CreditTypeConversion>]
      optional :credit_type_conversions,
               Metronome::ArrayOf.new(-> { Metronome::Models::RateCardListResponse::CreditTypeConversion })

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
        #   @return [Metronome::Models::RateCardListResponse::RateCardEntries::RateCardEntry::Current]
        optional :current,
                 lambda {
                   Metronome::Models::RateCardListResponse::RateCardEntries::RateCardEntry::Current
                 }

        # @!attribute [rw] updates
        #   @return [Array<Metronome::Models::RateCardListResponse::RateCardEntries::RateCardEntry::Update>]
        optional :updates,
                 Metronome::ArrayOf.new(
                   lambda {
                     Metronome::Models::RateCardListResponse::RateCardEntries::RateCardEntry::Update
                   }
                 )

        class Current < BaseModel
          # @!attribute [rw] id
          #   @return [String]
          optional :id, String

          # @!attribute [rw] created_at
          #   @return [DateTime]
          optional :created_at, DateTime

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
          #   @return [DateTime]
          optional :ending_before, DateTime

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
          #   @return [Symbol, Metronome::Models::RateCardListResponse::RateCardEntries::RateCardEntry::Current::RateType]
          optional :rate_type,
                   enum: lambda {
                     Metronome::Models::RateCardListResponse::RateCardEntries::RateCardEntry::Current::RateType
                   }

          # @!attribute [rw] starting_at
          #   @return [DateTime]
          optional :starting_at, DateTime

          # @!attribute [rw] tiers
          #   @return [Array<Metronome::Models::Tier>]
          optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

          class RateType < Metronome::Enum
            FLAT = :FLAT
            PERCENTAGE = :PERCENTAGE
            SUBSCRIPTION = :SUBSCRIPTION
            CUSTOM = :CUSTOM
            TIERED = :TIERED
          end
        end

        class Update < BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

          # @!attribute [rw] created_at
          #   @return [DateTime]
          required :created_at, DateTime

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
          #   @return [Symbol, Metronome::Models::RateCardListResponse::RateCardEntries::RateCardEntry::Update::RateType]
          required :rate_type,
                   enum: lambda {
                     Metronome::Models::RateCardListResponse::RateCardEntries::RateCardEntry::Update::RateType
                   }

          # @!attribute [rw] starting_at
          #   @return [DateTime]
          required :starting_at, DateTime

          # @!attribute [rw] commit_rate
          #   The rate that will be used to rate a product when it is paid for by a commit. This feature requires opt-in before it can be used. Please contact Metronome support to enable this feature.
          #   @return [Metronome::Models::RateCardListResponse::RateCardEntries::RateCardEntry::Update::CommitRate]
          optional :commit_rate,
                   -> { Metronome::Models::RateCardListResponse::RateCardEntries::RateCardEntry::Update::CommitRate }

          # @!attribute [rw] credit_type
          #   @return [Metronome::Models::CreditType]
          optional :credit_type, -> { Metronome::Models::CreditType }

          # @!attribute [rw] custom_rate
          #   @return [Hash]
          optional :custom_rate, Hash

          # @!attribute [rw] ending_before
          #   @return [DateTime]
          optional :ending_before, DateTime

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
          #   @return [Array<Metronome::Models::Tier>]
          optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

          class RateType < Metronome::Enum
            FLAT = :FLAT
            PERCENTAGE = :PERCENTAGE
            SUBSCRIPTION = :SUBSCRIPTION
            CUSTOM = :CUSTOM
            TIERED = :TIERED
          end

          class CommitRate < BaseModel
            # @!attribute [rw] rate_type
            #   @return [Symbol, Metronome::Models::RateCardListResponse::RateCardEntries::RateCardEntry::Update::CommitRate::RateType]
            required :rate_type,
                     enum: lambda {
                       Metronome::Models::RateCardListResponse::RateCardEntries::RateCardEntry::Update::CommitRate::RateType
                     }

            # @!attribute [rw] credit_type
            #   @return [Metronome::Models::CreditType]
            optional :credit_type, -> { Metronome::Models::CreditType }

            # @!attribute [rw] is_prorated
            #   Commit rate proration configuration. Only valid for SUBSCRIPTION rate_type.
            #   @return [Boolean]
            optional :is_prorated, Metronome::BooleanModel

            # @!attribute [rw] price
            #   Commit rate price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
            #   @return [Float]
            optional :price, Float

            # @!attribute [rw] quantity
            #   Commit rate quantity. For SUBSCRIPTION rate_type, this must be >=0.
            #   @return [Float]
            optional :quantity, Float

            # @!attribute [rw] tiers
            #   Only set for TIERED rate_type.
            #   @return [Array<Metronome::Models::Tier>]
            optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

            # @!attribute [rw] use_list_prices
            #   Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed using list prices rather than the standard rates for this product on the contract.
            #   @return [Boolean]
            optional :use_list_prices, Metronome::BooleanModel

            class RateType < Metronome::Enum
              FLAT = :FLAT
              FLAT = :flat
              PERCENTAGE = :PERCENTAGE
              PERCENTAGE = :percentage
              SUBSCRIPTION = :SUBSCRIPTION
              SUBSCRIPTION = :subscription
              TIERED = :TIERED
              TIERED = :tiered
              CUSTOM = :CUSTOM
              CUSTOM = :custom
            end
          end
        end
      end

      class Alias < BaseModel
        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] ending_before
        #   @return [DateTime]
        optional :ending_before, DateTime

        # @!attribute [rw] starting_at
        #   @return [DateTime]
        optional :starting_at, DateTime
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
