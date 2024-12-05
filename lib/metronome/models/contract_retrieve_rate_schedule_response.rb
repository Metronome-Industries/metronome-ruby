# frozen_string_literal: true

module Metronome
  module Models
    class ContractRetrieveRateScheduleResponse < Metronome::BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::ContractRetrieveRateScheduleResponse::Data>]
      required :data,
               Metronome::ArrayOf.new(-> { Metronome::Models::ContractRetrieveRateScheduleResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      optional :next_page, String

      class Data < Metronome::BaseModel
        # @!attribute [rw] entitled
        #   @return [Boolean]
        required :entitled, Metronome::BooleanModel

        # @!attribute [rw] list_rate
        #   @return [Metronome::Models::Rate]
        required :list_rate, -> { Metronome::Models::Rate }

        # @!attribute [rw] product_custom_fields
        #   @return [Hash]
        required :product_custom_fields, Hash

        # @!attribute [rw] product_id
        #   @return [String]
        required :product_id, String

        # @!attribute [rw] product_name
        #   @return [String]
        required :product_name, String

        # @!attribute [rw] product_tags
        #   @return [Array<String>]
        required :product_tags, Metronome::ArrayOf.new(String)

        # @!attribute [rw] rate_card_id
        #   @return [String]
        required :rate_card_id, String

        # @!attribute [rw] starting_at
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [rw] commit_rate
        #   A distinct rate on the rate card. You can choose to use this rate rather than list rate when consuming a credit or commit.
        #   @return [Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate]
        optional :commit_rate,
                 -> {
                   Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate
                 }

        # @!attribute [rw] ending_before
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute [rw] override_rate
        #   @return [Metronome::Models::Rate]
        optional :override_rate, -> { Metronome::Models::Rate }

        # @!attribute [rw] pricing_group_values
        #   @return [Hash]
        optional :pricing_group_values, Hash

        class CommitRate < Metronome::BaseModel
          # @!attribute [rw] rate_type
          #   @return [Symbol, Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType]
          required :rate_type,
                   enum: -> {
                     Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType
                   }

          # @!attribute [rw] price
          #   Commit rate price. For FLAT rate_type, this must be >=0.
          #   @return [Float]
          optional :price, Float

          # @!attribute [rw] tiers
          #   Only set for TIERED rate_type.
          #   @return [Array<Metronome::Models::Tier>]
          optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

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

          # @!parse
          #   # Create a new instance of CommitRate from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :rate_type
          #   #   @option data [Float, nil] :price Commit rate price. For FLAT rate_type, this must be >=0.
          #   #   @option data [Array<Object>, nil] :tiers Only set for TIERED rate_type.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of Data from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Hash] :entitled
        #   #   @option data [Object] :list_rate
        #   #   @option data [Hash] :product_custom_fields
        #   #   @option data [String] :product_id
        #   #   @option data [String] :product_name
        #   #   @option data [Array<String>] :product_tags
        #   #   @option data [String] :rate_card_id
        #   #   @option data [String] :starting_at
        #   #   @option data [Object, nil] :commit_rate A distinct rate on the rate card. You can choose to use this rate rather than
        #   #     list rate when consuming a credit or commit.
        #   #   @option data [String, nil] :ending_before
        #   #   @option data [Object, nil] :override_rate
        #   #   @option data [Hash, nil] :pricing_group_values
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of ContractRetrieveRateScheduleResponse from a Hash of raw
      #   #   data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Array<Object>] :data
      #   #   @option data [String, nil] :next_page
      #   def initialize(data = {}) = super
    end
  end
end
