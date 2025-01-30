# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # customer_list_costs_response => {
    #   credit_types: -> { Metronome::HashOf[Metronome::Models::CustomerListCostsResponse::CreditType] === _1 },
    #   end_timestamp: Time,
    #   start_timestamp: Time
    # }
    # ```
    class CustomerListCostsResponse < Metronome::BaseModel
      # @!attribute credit_types
      #
      #   @return [Hash{Symbol=>Metronome::Models::CustomerListCostsResponse::CreditType}]
      required :credit_types,
               -> {
                 Metronome::HashOf[Metronome::Models::CustomerListCostsResponse::CreditType]
               }

      # @!attribute end_timestamp
      #
      #   @return [Time]
      required :end_timestamp, Time

      # @!attribute start_timestamp
      #
      #   @return [Time]
      required :start_timestamp, Time

      # @!parse
      #   # @param credit_types [Hash{Symbol=>Metronome::Models::CustomerListCostsResponse::CreditType}]
      #   # @param end_timestamp [Time]
      #   # @param start_timestamp [Time]
      #   #
      #   def initialize(credit_types:, end_timestamp:, start_timestamp:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # credit_type => {
      #   cost: Float,
      #   line_item_breakdown: -> { Metronome::ArrayOf[Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown] === _1 },
      #   name: String
      # }
      # ```
      class CreditType < Metronome::BaseModel
        # @!attribute [r] cost
        #
        #   @return [Float, nil]
        optional :cost, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :cost

        # @!attribute [r] line_item_breakdown
        #
        #   @return [Array<Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown>, nil]
        optional :line_item_breakdown,
                 -> {
                   Metronome::ArrayOf[Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown]
                 }

        # @!parse
        #   # @return [Array<Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown>]
        #   attr_writer :line_item_breakdown

        # @!attribute [r] name
        #
        #   @return [String, nil]
        optional :name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :name

        # @!parse
        #   # @param cost [Float]
        #   # @param line_item_breakdown [Array<Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown>]
        #   # @param name [String]
        #   #
        #   def initialize(cost: nil, line_item_breakdown: nil, name: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # line_item_breakdown => {
        #   cost: Float,
        #   name: String,
        #   group_key: String,
        #   group_value: String
        # }
        # ```
        class LineItemBreakdown < Metronome::BaseModel
          # @!attribute cost
          #
          #   @return [Float]
          required :cost, Float

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute [r] group_key
          #
          #   @return [String, nil]
          optional :group_key, String

          # @!parse
          #   # @return [String]
          #   attr_writer :group_key

          # @!attribute group_value
          #
          #   @return [String, nil]
          optional :group_value, String, nil?: true

          # @!parse
          #   # @param cost [Float]
          #   # @param name [String]
          #   # @param group_key [String]
          #   # @param group_value [String, nil]
          #   #
          #   def initialize(cost:, name:, group_key: nil, group_value: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
