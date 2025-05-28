# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#get_subscription_quantity_history
      class ContractGetSubscriptionQuantityHistoryResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::ContractGetSubscriptionQuantityHistoryResponse::Data]
        required :data, -> { MetronomeSDK::Models::V1::ContractGetSubscriptionQuantityHistoryResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::ContractGetSubscriptionQuantityHistoryResponse::Data]

        # @see MetronomeSDK::Models::V1::ContractGetSubscriptionQuantityHistoryResponse#data
        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute fiat_credit_type_id
          #
          #   @return [String, nil]
          optional :fiat_credit_type_id, String

          # @!attribute history
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractGetSubscriptionQuantityHistoryResponse::Data::History>, nil]
          optional :history,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractGetSubscriptionQuantityHistoryResponse::Data::History] }

          # @!attribute subscription_id
          #
          #   @return [String, nil]
          optional :subscription_id, String

          # @!method initialize(fiat_credit_type_id: nil, history: nil, subscription_id: nil)
          #   @param fiat_credit_type_id [String]
          #   @param history [Array<MetronomeSDK::Models::V1::ContractGetSubscriptionQuantityHistoryResponse::Data::History>]
          #   @param subscription_id [String]

          class History < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractGetSubscriptionQuantityHistoryResponse::Data::History::Data>]
            required :data,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractGetSubscriptionQuantityHistoryResponse::Data::History::Data] }

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!method initialize(data:, starting_at:)
            #   @param data [Array<MetronomeSDK::Models::V1::ContractGetSubscriptionQuantityHistoryResponse::Data::History::Data>]
            #   @param starting_at [Time]

            class Data < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute quantity
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute total
              #
              #   @return [Float]
              required :total, Float

              # @!attribute unit_price
              #
              #   @return [Float]
              required :unit_price, Float

              # @!method initialize(quantity:, total:, unit_price:)
              #   @param quantity [Float]
              #   @param total [Float]
              #   @param unit_price [Float]
            end
          end
        end
      end
    end
  end
end
