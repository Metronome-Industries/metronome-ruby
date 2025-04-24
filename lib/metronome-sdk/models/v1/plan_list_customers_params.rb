# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class PlanListCustomersParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute plan_id
        #
        #   @return [String]
        required :plan_id, String

        # @!attribute [r] limit
        #   Max number of results that should be returned
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :limit

        # @!attribute [r] next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!parse
        #   # @return [String]
        #   attr_writer :next_page

        # @!attribute [r] status
        #   Status of customers on a given plan. Defaults to `active`.
        #
        #     - `all` - Return current, past, and upcoming customers of the plan.
        #     - `active` - Return current customers of the plan.
        #     - `ended` - Return past customers of the plan.
        #     - `upcoming` - Return upcoming customers of the plan.
        #
        #     Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
        #     **Note:** `ended,upcoming` combination is not yet supported.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PlanListCustomersParams::Status, nil]
        optional :status, enum: -> { MetronomeSDK::Models::V1::PlanListCustomersParams::Status }

        # @!parse
        #   # @return [Symbol, MetronomeSDK::Models::V1::PlanListCustomersParams::Status]
        #   attr_writer :status

        # @!parse
        #   # @param plan_id [String]
        #   # @param limit [Integer]
        #   # @param next_page [String]
        #   # @param status [Symbol, MetronomeSDK::Models::V1::PlanListCustomersParams::Status]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(plan_id:, limit: nil, next_page: nil, status: nil, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        # @abstract
        #
        # Status of customers on a given plan. Defaults to `active`.
        #
        #   - `all` - Return current, past, and upcoming customers of the plan.
        #   - `active` - Return current customers of the plan.
        #   - `ended` - Return past customers of the plan.
        #   - `upcoming` - Return upcoming customers of the plan.
        #
        #   Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
        #   **Note:** `ended,upcoming` combination is not yet supported.
        #
        # @example
        # ```ruby
        # case status
        # in :all
        #   # ...
        # in :active
        #   # ...
        # in :ended
        #   # ...
        # in :upcoming
        #   # ...
        # end
        # ```
        class Status < MetronomeSDK::Enum
          ALL = :all
          ACTIVE = :active
          ENDED = :ended
          UPCOMING = :upcoming

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
