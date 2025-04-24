# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class ContractRetrieveParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute contract_id
        #
        #   @return [String]
        required :contract_id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute [r] include_balance
        #   Include the balance of credits and commits in the response. Setting this flag
        #     may cause the query to be slower.
        #
        #   @return [Boolean, nil]
        optional :include_balance, MetronomeSDK::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_balance

        # @!attribute [r] include_ledgers
        #   Include commit ledgers in the response. Setting this flag may cause the query to
        #     be slower.
        #
        #   @return [Boolean, nil]
        optional :include_ledgers, MetronomeSDK::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_ledgers

        # @!parse
        #   # @param contract_id [String]
        #   # @param customer_id [String]
        #   # @param include_balance [Boolean]
        #   # @param include_ledgers [Boolean]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(contract_id:, customer_id:, include_balance: nil, include_ledgers: nil, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
