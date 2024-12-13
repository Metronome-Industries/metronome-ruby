# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListCostsResponse < Metronome::BaseModel
      # @!attribute credit_types
      #   @return [Hash]
      required :credit_types, Hash

      # @!attribute end_timestamp
      #   @return [Time]
      required :end_timestamp, Time

      # @!attribute start_timestamp
      #   @return [Time]
      required :start_timestamp, Time

      class CreditType < Metronome::BaseModel
        # @!attribute cost
        #   @return [Float]
        optional :cost, Float

        # @!attribute line_item_breakdown
        #   @return [Array<Metronome::Models::CustomerListCostsResponse::CreditTypes::CreditType::LineItemBreakdown>]
        optional :line_item_breakdown,
                 Metronome::ArrayOf.new(
                   -> {
                     Metronome::Models::CustomerListCostsResponse::CreditTypes::CreditType::LineItemBreakdown
                   }
                 )

        # @!attribute name
        #   @return [String]
        optional :name, String

        class LineItemBreakdown < Metronome::BaseModel
          # @!attribute cost
          #   @return [Float]
          required :cost, Float

          # @!attribute name
          #   @return [String]
          required :name, String

          # @!attribute group_key
          #   @return [String]
          optional :group_key, String

          # @!attribute group_value
          #   @return [String]
          optional :group_value, String

          # @!parse
          #   # Create a new instance of LineItemBreakdown from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Float] :cost
          #   #   @option data [String] :name
          #   #   @option data [String, nil] :group_key
          #   #   @option data [String, nil] :group_value
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of CreditType from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Float, nil] :cost
        #   #   @option data [Array<Object>, nil] :line_item_breakdown
        #   #   @option data [String, nil] :name
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of CustomerListCostsResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Hash] :credit_types
      #   #   @option data [String] :end_timestamp
      #   #   @option data [String] :start_timestamp
      #   def initialize(data = {}) = super
    end
  end
end
