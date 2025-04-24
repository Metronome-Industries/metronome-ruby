# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CustomerListCostsResponse < MetronomeSDK::BaseModel
        # @!attribute credit_types
        #
        #   @return [Hash{Symbol=>MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType}]
        required :credit_types,
                 -> { MetronomeSDK::HashOf[MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType] }

        # @!attribute end_timestamp
        #
        #   @return [Time]
        required :end_timestamp, Time

        # @!attribute start_timestamp
        #
        #   @return [Time]
        required :start_timestamp, Time

        # @!parse
        #   # @param credit_types [Hash{Symbol=>MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType}]
        #   # @param end_timestamp [Time]
        #   # @param start_timestamp [Time]
        #   #
        #   def initialize(credit_types:, end_timestamp:, start_timestamp:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class CreditType < MetronomeSDK::BaseModel
          # @!attribute [r] cost
          #
          #   @return [Float, nil]
          optional :cost, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :cost

          # @!attribute [r] line_item_breakdown
          #
          #   @return [Array<MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown>, nil]
          optional :line_item_breakdown,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown>]
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
          #   # @param line_item_breakdown [Array<MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown>]
          #   # @param name [String]
          #   #
          #   def initialize(cost: nil, line_item_breakdown: nil, name: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class LineItemBreakdown < MetronomeSDK::BaseModel
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

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end
        end
      end
    end
  end
end
