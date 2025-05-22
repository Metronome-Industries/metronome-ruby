# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Plans#list_customers
      class PlanListCustomersParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute plan_id
        #
        #   @return [String]
        required :plan_id, String

        # @!attribute limit
        #   Max number of results that should be returned
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!attribute status
        #   Status of customers on a given plan. Defaults to `active`.
        #
        #   - `all` - Return current, past, and upcoming customers of the plan.
        #   - `active` - Return current customers of the plan.
        #   - `ended` - Return past customers of the plan.
        #   - `upcoming` - Return upcoming customers of the plan.
        #
        #   Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
        #   **Note:** `ended,upcoming` combination is not yet supported.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PlanListCustomersParams::Status, nil]
        optional :status, enum: -> { MetronomeSDK::V1::PlanListCustomersParams::Status }

        # @!method initialize(plan_id:, limit: nil, next_page: nil, status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::PlanListCustomersParams} for more details.
        #
        #   @param plan_id [String]
        #
        #   @param limit [Integer] Max number of results that should be returned
        #
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param status [Symbol, MetronomeSDK::Models::V1::PlanListCustomersParams::Status] Status of customers on a given plan. Defaults to `active`.
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        # Status of customers on a given plan. Defaults to `active`.
        #
        # - `all` - Return current, past, and upcoming customers of the plan.
        # - `active` - Return current customers of the plan.
        # - `ended` - Return past customers of the plan.
        # - `upcoming` - Return upcoming customers of the plan.
        #
        # Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
        # **Note:** `ended,upcoming` combination is not yet supported.
        module Status
          extend MetronomeSDK::Internal::Type::Enum

          ALL = :all
          ACTIVE = :active
          ENDED = :ended
          UPCOMING = :upcoming

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
