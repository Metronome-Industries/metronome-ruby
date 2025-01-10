# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
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
      #   @return [Hash{Symbol => Metronome::Models::CustomerListCostsResponse::CreditType}]
      required :credit_types,
               Metronome::HashOf[-> {
                 Metronome::Models::CustomerListCostsResponse::CreditType
               }]

      # @!attribute end_timestamp
      #
      #   @return [Time]
      required :end_timestamp, Time

      # @!attribute start_timestamp
      #
      #   @return [Time]
      required :start_timestamp, Time

      # @!parse
      #   # @param credit_types [Hash{Symbol => Metronome::Models::CustomerListCostsResponse::CreditType}]
      #   # @param end_timestamp [String]
      #   # @param start_timestamp [String]
      #   #
      #   def initialize(credit_types:, end_timestamp:, start_timestamp:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      #
      # ```ruby
      # credit_type => {
      #   cost: Float,
      #   line_item_breakdown: -> { Metronome::ArrayOf[Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown] === _1 },
      #   name: String
      # }
      # ```
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
        #   # @param cost [Float]
        #   # @param line_item_breakdown [Array<Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown>]
        #   # @param name [String]
        #   #
        #   def initialize(cost: nil, line_item_breakdown: nil, name: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
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

          # @!attribute group_key
          #
          #   @return [String]
          optional :group_key, String

          # @!attribute group_value
          #
          #   @return [String, nil]
          optional :group_value, String

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
