# frozen_string_literal: true

module Metronome
  module Models
    class RateCardRetrieveResponse < Metronome::BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::RateCardRetrieveResponse::Data]
      required :data, -> { Metronome::Models::RateCardRetrieveResponse::Data }

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

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String, api_name: :name

        # @!attribute [rw] rate_card_entries
        #   @return [Hash]
        required :rate_card_entries, Hash

        # @!attribute [rw] aliases
        #   @return [Array<Metronome::Models::RateCardRetrieveResponse::Data::Alias>]
        optional :aliases,
                 Metronome::ArrayOf.new(
                   -> {
                     Metronome::Models::RateCardRetrieveResponse::Data::Alias
                   }
                 )

        # @!attribute [rw] credit_type_conversions
        #   @return [Array<Metronome::Models::RateCardRetrieveResponse::Data::CreditTypeConversion>]
        optional :credit_type_conversions,
                 Metronome::ArrayOf.new(
                   -> {
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

        class RateCardEntry < Metronome::BaseModel
          # @!attribute [rw] current
          #   @return [Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Current]
          optional :current,
                   -> { Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Current }

          # @!attribute [rw] updates
          #   @return [Array<Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update>]
          optional :updates,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update
                     }
                   )

          class Current < Metronome::BaseModel
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
                     enum: -> {
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

            # @!parse
            #   # Create a new instance of Current from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String, nil] :id
            #   #   @option data [String, nil] :created_at
            #   #   @option data [String, nil] :created_by
            #   #   @option data [Object, nil] :credit_type
            #   #   @option data [Hash, nil] :custom_rate
            #   #   @option data [String, nil] :ending_before
            #   #   @option data [Hash, nil] :entitled
            #   #   @option data [Float, nil] :price
            #   #   @option data [String, nil] :product_id
            #   #   @option data [String, nil] :rate_type
            #   #   @option data [String, nil] :starting_at
            #   #   @option data [Array<Object>, nil] :tiers
            #   def initialize(data = {}) = super
          end

          class Update < Metronome::BaseModel
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
                     enum: -> {
                       Metronome::Models::RateCardRetrieveResponse::Data::RateCardEntries::RateCardEntry::Update::RateType
                     }

            # @!attribute [rw] starting_at
            #   @return [Time]
            required :starting_at, Time

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

            # @!parse
            #   # Create a new instance of Update from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :id
            #   #   @option data [String] :created_at
            #   #   @option data [String] :created_by
            #   #   @option data [Hash] :entitled
            #   #   @option data [String] :product_id
            #   #   @option data [String] :rate_type
            #   #   @option data [String] :starting_at
            #   #   @option data [Object, nil] :credit_type
            #   #   @option data [Hash, nil] :custom_rate
            #   #   @option data [String, nil] :ending_before
            #   #   @option data [Hash, nil] :is_prorated
            #   #   @option data [Float, nil] :price
            #   #   @option data [Float, nil] :quantity
            #   #   @option data [Array<Object>, nil] :tiers
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of RateCardEntry from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Object, nil] :current
          #   #   @option data [Array<Object>, nil] :updates
          #   def initialize(data = {}) = super
        end

        class Alias < Metronome::BaseModel
          # @!attribute [rw] name_
          #   @return [String]
          required :name_, String, api_name: :name

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
        #   #   @option data [Hash] :rate_card_entries
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
