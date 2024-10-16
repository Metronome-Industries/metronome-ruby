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
        #   @return [Time]
        required :created_at, Time

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
        optional :aliases,
                 Metronome::ArrayOf.new(
                   lambda {
                     Metronome::Models::RateCardRetrieveResponse::Data::Alias
                   }
                 )

        # @!attribute [rw] credit_type_conversions
        #   @return [Array<Metronome::Models::RateCardRetrieveResponse::Data::CreditTypeConversion>]
        optional :credit_type_conversions,
                 Metronome::ArrayOf.new(
                   lambda {
                     Metronome::Models::RateCardRetrieveResponse::Data::CreditTypeConversion
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

        class RateCardEntry < BaseModel
          # @!attribute [rw] current
          #   @return [Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Current]
          optional :current,
                   -> { Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Current }

          # @!attribute [rw] updates
          #   @return [Array<Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update>]
          optional :updates,
                   Metronome::ArrayOf.new(
                     lambda {
                       Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update
                     }
                   )

          class Current < BaseModel
            # @!attribute [rw] id
            #   @return [String]
            optional :id, String

            # @!attribute [rw] created_at
            #   @return [Time]
            optional :created_at, Time

            # @!attribute [rw] created_by
            #   @return [String]
            optional :created_by, String

            # @!attribute [rw] credit_type
            #   @return [Metronome::Models::CreditTypeData]
            optional :credit_type, -> { Metronome::Models::CreditTypeData }

            # @!attribute [rw] custom_rate
            #   @return [Hash]
            optional :custom_rate, Hash

            # @!attribute [rw] ending_before
            #   @return [Time]
            optional :ending_before, Time

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
            #   @return [Symbol, Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Current::RateType]
            optional :rate_type,
                     enum: lambda {
                       Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Current::RateType
                     }

            # @!attribute [rw] starting_at
            #   @return [Time]
            optional :starting_at, Time

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

            # Create a new instance of Current from a Hash of raw data.
            #
            # @overload initialize(id: nil, created_at: nil, created_by: nil, credit_type: nil, custom_rate: nil, ending_before: nil, entitled: nil, price: nil, product_id: nil, rate_type: nil, starting_at: nil, tiers: nil)
            # @param id [String]
            # @param created_at [String]
            # @param created_by [String]
            # @param credit_type [Object]
            # @param custom_rate [Hash]
            # @param ending_before [String]
            # @param entitled [Hash]
            # @param price [Float]
            # @param product_id [String]
            # @param rate_type [String]
            # @param starting_at [String]
            # @param tiers [Array<Object>]
            def initialize(data = {})
              super
            end
          end

          class Update < BaseModel
            # @!attribute [rw] id
            #   @return [String]
            required :id, String

            # @!attribute [rw] created_at
            #   @return [Time]
            required :created_at, Time

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
            #   @return [Symbol, Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update::RateType]
            required :rate_type,
                     enum: lambda {
                       Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update::RateType
                     }

            # @!attribute [rw] starting_at
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [rw] commit_rate
            #   The rate that will be used to rate a product when it is paid for by a commit. This feature requires opt-in before it can be used. Please contact Metronome support to enable this feature.
            #   @return [Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update::CommitRate]
            optional :commit_rate,
                     -> { Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update::CommitRate }

            # @!attribute [rw] credit_type
            #   @return [Metronome::Models::CreditTypeData]
            optional :credit_type, -> { Metronome::Models::CreditTypeData }

            # @!attribute [rw] custom_rate
            #   @return [Hash]
            optional :custom_rate, Hash

            # @!attribute [rw] ending_before
            #   @return [Time]
            optional :ending_before, Time

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
              #   @return [Symbol, Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update::CommitRate::RateType]
              required :rate_type,
                       enum: lambda {
                         Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update::CommitRate::RateType
                       }

              # @!attribute [rw] credit_type
              #   @return [Metronome::Models::CreditTypeData]
              optional :credit_type, -> { Metronome::Models::CreditTypeData }

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

              # Create a new instance of CommitRate from a Hash of raw data.
              #
              # @overload initialize(rate_type: nil, credit_type: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil, use_list_prices: nil)
              # @param rate_type [String]
              # @param credit_type [Object]
              # @param is_prorated [Hash] Commit rate proration configuration. Only valid for SUBSCRIPTION rate_type.
              # @param price [Float] Commit rate price. For FLAT rate_type, this must be >=0. For PERCENTAGE
              #   rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0
              #   and <=1.
              # @param quantity [Float] Commit rate quantity. For SUBSCRIPTION rate_type, this must be >=0.
              # @param tiers [Array<Object>] Only set for TIERED rate_type.
              # @param use_list_prices [Hash] Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
              #   using list prices rather than the standard rates for this product on the
              #   contract.
              def initialize(data = {})
                super
              end
            end

            # Create a new instance of Update from a Hash of raw data.
            #
            # @overload initialize(id: nil, created_at: nil, created_by: nil, entitled: nil, product_id: nil, rate_type: nil, starting_at: nil, commit_rate: nil, credit_type: nil, custom_rate: nil, ending_before: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil)
            # @param id [String]
            # @param created_at [String]
            # @param created_by [String]
            # @param entitled [Hash]
            # @param product_id [String]
            # @param rate_type [String]
            # @param starting_at [String]
            # @param commit_rate [Object] The rate that will be used to rate a product when it is paid for by a commit.
            #   This feature requires opt-in before it can be used. Please contact Metronome
            #   support to enable this feature.
            # @param credit_type [Object]
            # @param custom_rate [Hash]
            # @param ending_before [String]
            # @param is_prorated [Hash]
            # @param price [Float]
            # @param quantity [Float]
            # @param tiers [Array<Object>]
            def initialize(data = {})
              super
            end
          end

          # Create a new instance of RateCardEntry from a Hash of raw data.
          #
          # @overload initialize(current: nil, updates: nil)
          # @param current [Object]
          # @param updates [Array<Object>]
          def initialize(data = {})
            super
          end
        end

        class Alias < BaseModel
          # @!attribute [rw] name_
          #   @return [String]
          required :name_, String

          # @!attribute [rw] ending_before
          #   @return [Time]
          optional :ending_before, Time

          # @!attribute [rw] starting_at
          #   @return [Time]
          optional :starting_at, Time

          # Create a new instance of Alias from a Hash of raw data.
          #
          # @overload initialize(name: nil, ending_before: nil, starting_at: nil)
          # @param name [String]
          # @param ending_before [String]
          # @param starting_at [String]
          def initialize(data = {})
            super
          end
        end

        class CreditTypeConversion < BaseModel
          # @!attribute [rw] custom_credit_type
          #   @return [Metronome::Models::CreditTypeData]
          required :custom_credit_type, -> { Metronome::Models::CreditTypeData }

          # @!attribute [rw] fiat_per_custom_credit
          #   @return [String]
          required :fiat_per_custom_credit, String

          # Create a new instance of CreditTypeConversion from a Hash of raw data.
          #
          # @overload initialize(custom_credit_type: nil, fiat_per_custom_credit: nil)
          # @param custom_credit_type [Object]
          # @param fiat_per_custom_credit [String]
          def initialize(data = {})
            super
          end
        end

        # Create a new instance of Data from a Hash of raw data.
        #
        # @overload initialize(id: nil, created_at: nil, created_by: nil, name: nil, rate_card_entries: nil, aliases: nil, credit_type_conversions: nil, custom_fields: nil, description: nil, fiat_credit_type: nil)
        # @param id [String]
        # @param created_at [String]
        # @param created_by [String]
        # @param name [String]
        # @param rate_card_entries [Hash]
        # @param aliases [Array<Object>]
        # @param credit_type_conversions [Array<Object>]
        # @param custom_fields [Hash]
        # @param description [String]
        # @param fiat_credit_type [Object]
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of RateCardRetrieveResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil)
      # @param data [Object]
      def initialize(data = {})
        super
      end
    end
  end
end
