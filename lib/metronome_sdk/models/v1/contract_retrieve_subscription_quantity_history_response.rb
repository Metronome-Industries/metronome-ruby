# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#retrieve_subscription_quantity_history
      class ContractRetrieveSubscriptionQuantityHistoryResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data]
        required :data, -> { MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data]

        # @see MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse#data
        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute custom_credit_type_id
          #   The pricing unit for history prices when present. Otherwise prices use
          #   fiat_credit_type_id.
          #
          #   @return [String, nil]
          optional :custom_credit_type_id, String

          # @!attribute fiat_credit_type_id
          #
          #   @return [String, nil]
          optional :fiat_credit_type_id, String

          # @!attribute history
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History>, nil]
          optional :history,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History] }

          # @!attribute subscription_id
          #
          #   @return [String, nil]
          optional :subscription_id, String

          # @!method initialize(custom_credit_type_id: nil, fiat_credit_type_id: nil, history: nil, subscription_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data}
          #   for more details.
          #
          #   @param custom_credit_type_id [String] The pricing unit for history prices when present. Otherwise prices use fiat_cred
          #
          #   @param fiat_credit_type_id [String]
          #
          #   @param history [Array<MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History>]
          #
          #   @param subscription_id [String]

          class History < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History::Data>]
            required :data,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History::Data] }

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!method initialize(data:, starting_at:)
            #   @param data [Array<MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse::Data::History::Data>]
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
