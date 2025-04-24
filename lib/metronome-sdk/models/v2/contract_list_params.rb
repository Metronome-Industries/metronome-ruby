# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      class ContractListParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute [r] covering_date
        #   Optional RFC 3339 timestamp. Only include contracts active on the provided date.
        #     This cannot be provided if starting_at filter is provided.
        #
        #   @return [Time, nil]
        optional :covering_date, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :covering_date

        # @!attribute [r] include_archived
        #   Include archived contracts in the response.
        #
        #   @return [Boolean, nil]
        optional :include_archived, MetronomeSDK::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_archived

        # @!attribute [r] include_balance
        #   Include the balance of credits and commits in the response. Setting this flag
        #     may cause the response to be slower.
        #
        #   @return [Boolean, nil]
        optional :include_balance, MetronomeSDK::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_balance

        # @!attribute [r] include_ledgers
        #   Include commit/credit ledgers in the response. Setting this flag may cause the
        #     response to be slower.
        #
        #   @return [Boolean, nil]
        optional :include_ledgers, MetronomeSDK::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_ledgers

        # @!attribute [r] starting_at
        #   Optional RFC 3339 timestamp. Only include contracts that started on or after
        #     this date. This cannot be provided if covering_date filter is provided.
        #
        #   @return [Time, nil]
        optional :starting_at, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :starting_at

        # @!parse
        #   # @param customer_id [String]
        #   # @param covering_date [Time]
        #   # @param include_archived [Boolean]
        #   # @param include_balance [Boolean]
        #   # @param include_ledgers [Boolean]
        #   # @param starting_at [Time]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     customer_id:,
        #     covering_date: nil,
        #     include_archived: nil,
        #     include_balance: nil,
        #     include_ledgers: nil,
        #     starting_at: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
