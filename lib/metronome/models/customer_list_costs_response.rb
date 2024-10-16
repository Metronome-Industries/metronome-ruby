# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListCostsResponse < BaseModel
      # @!attribute [rw] credit_types
      #   @return [Hash]
      required :credit_types, Hash

      # @!attribute [rw] end_timestamp
      #   @return [Time]
      required :end_timestamp, Time

      # @!attribute [rw] start_timestamp
      #   @return [Time]
      required :start_timestamp, Time

      class CreditType < BaseModel
        # @!attribute [rw] cost
        #   @return [Float]
        optional :cost, Float

        # @!attribute [rw] line_item_breakdown
        #   @return [Array<Metronome::Models::CustomerListCostsResponse::CreditTypes::CreditType::LineItemBreakdown>]
        optional :line_item_breakdown,
                 Metronome::ArrayOf.new(
                   lambda {
                     Metronome::Models::CustomerListCostsResponse::CreditTypes::CreditType::LineItemBreakdown
                   }
                 )

        # @!attribute [rw] name_
        #   @return [String]
        optional :name_, String

        class LineItemBreakdown < BaseModel
          # @!attribute [rw] cost
          #   @return [Float]
          required :cost, Float

          # @!attribute [rw] name_
          #   @return [String]
          required :name_, String

          # @!attribute [rw] group_key
          #   @return [String]
          optional :group_key, String

          # @!attribute [rw] group_value
          #   @return [String]
          optional :group_value, String

          # Create a new instance of LineItemBreakdown from a Hash of raw data.
          #
          # @overload initialize(cost: nil, name: nil, group_key: nil, group_value: nil)
          # @param cost [Float]
          # @param name [String]
          # @param group_key [String]
          # @param group_value [String]
          def initialize(data = {})
            super
          end
        end

        # Create a new instance of CreditType from a Hash of raw data.
        #
        # @overload initialize(cost: nil, line_item_breakdown: nil, name: nil)
        # @param cost [Float]
        # @param line_item_breakdown [Array<Object>]
        # @param name [String]
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of CustomerListCostsResponse from a Hash of raw data.
      #
      # @overload initialize(credit_types: nil, end_timestamp: nil, start_timestamp: nil)
      # @param credit_types [Hash]
      # @param end_timestamp [String]
      # @param start_timestamp [String]
      def initialize(data = {})
        super
      end
    end
  end
end
