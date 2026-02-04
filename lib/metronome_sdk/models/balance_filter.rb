# frozen_string_literal: true

module MetronomeSDK
  module Models
    class BalanceFilter < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute balance_types
      #   The balance type to filter by.
      #
      #   @return [Array<Symbol, MetronomeSDK::Models::BalanceFilter::BalanceType>, nil]
      optional :balance_types,
               -> { MetronomeSDK::Internal::Type::ArrayOf[enum: MetronomeSDK::BalanceFilter::BalanceType] }

      # @!attribute custom_fields
      #   Custom fields to compute balance across. Must match all custom fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

      # @!attribute ids
      #   Specific IDs to compute balance across.
      #
      #   @return [Array<String>, nil]
      optional :ids, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!method initialize(balance_types: nil, custom_fields: nil, ids: nil)
      #   @param balance_types [Array<Symbol, MetronomeSDK::Models::BalanceFilter::BalanceType>] The balance type to filter by.
      #
      #   @param custom_fields [Hash{Symbol=>String}] Custom fields to compute balance across. Must match all custom fields
      #
      #   @param ids [Array<String>] Specific IDs to compute balance across.

      module BalanceType
        extend MetronomeSDK::Internal::Type::Enum

        PREPAID_COMMIT = :PREPAID_COMMIT
        POSTPAID_COMMIT = :POSTPAID_COMMIT
        CREDIT = :CREDIT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
