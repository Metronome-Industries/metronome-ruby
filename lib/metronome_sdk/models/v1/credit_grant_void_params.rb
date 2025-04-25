# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CreditGrants#void
      class CreditGrantVoidParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute release_uniqueness_key
        #   If true, resets the uniqueness key on this grant so it can be re-used
        #
        #   @return [Boolean, nil]
        optional :release_uniqueness_key, MetronomeSDK::Internal::Type::Boolean

        # @!attribute void_credit_purchase_invoice
        #   If true, void the purchase invoice associated with the grant
        #
        #   @return [Boolean, nil]
        optional :void_credit_purchase_invoice, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(id:, release_uniqueness_key: nil, void_credit_purchase_invoice: nil, request_options: {})
        #   @param id [String]
        #
        #   @param release_uniqueness_key [Boolean] If true, resets the uniqueness key on this grant so it can be re-used
        #
        #   @param void_credit_purchase_invoice [Boolean] If true, void the purchase invoice associated with the grant
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
