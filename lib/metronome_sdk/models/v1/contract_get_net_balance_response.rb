# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#get_net_balance
      class ContractGetNetBalanceResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::ContractGetNetBalanceResponse::Data]
        required :data, -> { MetronomeSDK::Models::V1::ContractGetNetBalanceResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::ContractGetNetBalanceResponse::Data]

        # @see MetronomeSDK::Models::V1::ContractGetNetBalanceResponse#data
        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute balance
          #   The combined net balance that the customer has access to use at this moment
          #   across all pertinent commits and credits.
          #
          #   @return [Float]
          required :balance, Float

          # @!attribute credit_type_id
          #   The ID of the credit type (can be fiat or a custom pricing unit) that the
          #   balance is for.
          #
          #   @return [String]
          required :credit_type_id, String

          # @!method initialize(balance:, credit_type_id:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractGetNetBalanceResponse::Data} for more
          #   details.
          #
          #   @param balance [Float] The combined net balance that the customer has access to use at this moment acro
          #
          #   @param credit_type_id [String] The ID of the credit type (can be fiat or a custom pricing unit) that the balanc
        end
      end
    end
  end
end
