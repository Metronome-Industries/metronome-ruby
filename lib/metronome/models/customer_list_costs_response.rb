# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListCostsResponse < Metronome::BaseModel
      # @!attribute credit_types
      #
      #   @return [Hash]
      required :credit_types, Hash

      # @!attribute end_timestamp
      #
      #   @return [Time]
      required :end_timestamp, Time

      # @!attribute start_timestamp
      #
      #   @return [Time]
      required :start_timestamp, Time

      # @!parse
      #   # @param credit_types [Hash]
      #   # @param end_timestamp [String]
      #   # @param start_timestamp [String]
      #   #
      #   def initialize(credit_types:, end_timestamp:, start_timestamp:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class CreditType < Metronome::BaseModel
        # @!attribute cost
        #
        #   @return [Float]
        optional :cost, Float

        # @!attribute line_item_breakdown
        #
        #   @return [Array<Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown>]
        optional :line_item_breakdown,
                 Metronome::ArrayOf[-> {
                   Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown
                 }]

        # @!attribute name
        #
        #   @return [String]
        optional :name, String

        # @!parse
        #   # @param cost [Float, nil]
        #   # @param line_item_breakdown [Array<Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown>, nil]
        #   # @param name [String, nil]
        #   #
        #   def initialize(cost: nil, line_item_breakdown: nil, name: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class LineItemBreakdown < Metronome::BaseModel
          # @!attribute cost
          #
          #   @return [Float]
          required :cost, Float

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute group_key
          #
          #   @return [String]
          optional :group_key, String

          # @!attribute group_value
          #
          #   @return [String]
          optional :group_value, String

          # @!parse
          #   # @param cost [Float]
          #   # @param name [String]
          #   # @param group_key [String, nil]
          #   # @param group_value [String, nil]
          #   #
          #   def initialize(cost:, name:, group_key: nil, group_value: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
