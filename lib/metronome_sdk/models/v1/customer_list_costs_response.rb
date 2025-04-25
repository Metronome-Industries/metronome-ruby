# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#list_costs
      class CustomerListCostsResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute credit_types
        #
        #   @return [Hash{Symbol=>MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType}]
        required :credit_types,
                 -> { MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType] }

        # @!attribute end_timestamp
        #
        #   @return [Time]
        required :end_timestamp, Time

        # @!attribute start_timestamp
        #
        #   @return [Time]
        required :start_timestamp, Time

        # @!method initialize(credit_types:, end_timestamp:, start_timestamp:)
        #   @param credit_types [Hash{Symbol=>MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType}]
        #   @param end_timestamp [Time]
        #   @param start_timestamp [Time]

        class CreditType < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute cost
          #
          #   @return [Float, nil]
          optional :cost, Float

          # @!attribute line_item_breakdown
          #
          #   @return [Array<MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown>, nil]
          optional :line_item_breakdown,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown] }

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(cost: nil, line_item_breakdown: nil, name: nil)
          #   @param cost [Float]
          #   @param line_item_breakdown [Array<MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown>]
          #   @param name [String]

          class LineItemBreakdown < MetronomeSDK::Internal::Type::BaseModel
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
            #   @return [String, nil]
            optional :group_key, String

            # @!attribute group_value
            #
            #   @return [String, nil]
            optional :group_value, String, nil?: true

            # @!method initialize(cost:, name:, group_key: nil, group_value: nil)
            #   @param cost [Float]
            #   @param name [String]
            #   @param group_key [String]
            #   @param group_value [String, nil]
          end
        end
      end
    end
  end
end
