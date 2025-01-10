# frozen_string_literal: true

module Metronome
  module Models
    class PlanListCustomersParams < Metronome::BaseModel
      # @!attribute plan_id
      #
      #   @return [String]
      required :plan_id, String

      # @!attribute limit
      #   Max number of results that should be returned
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute next_page
      #   Cursor that indicates where the next page of results should start.
      #
      #   @return [String]
      optional :next_page, String

      # @!attribute status
      #   Status of customers on a given plan. Defaults to `active`.
      #
      # * `all` - Return current, past, and upcoming customers of the plan.
      # * `active` - Return current customers of the plan.
      # * `ended` - Return past customers of the plan.
      # * `upcoming` - Return upcoming customers of the plan.
      #
      # Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
      # **Note:** `ended,upcoming` combination is not yet supported.
      #
      #   @return [Symbol, Metronome::Models::PlanListCustomersParams::Status]
      optional :status, enum: -> { Metronome::Models::PlanListCustomersParams::Status }

      # @!parse
      #   # @param plan_id [String]
      #   #
      #   # @param limit [Integer] Max number of results that should be returned
      #   #
      #   # @param next_page [String] Cursor that indicates where the next page of results should start.
      #   #
      #   # @param status [String] Status of customers on a given plan. Defaults to `active`.
      #   #
      #   #   - `all` - Return current, past, and upcoming customers of the plan.
      #   #   - `active` - Return current customers of the plan.
      #   #   - `ended` - Return past customers of the plan.
      #   #   - `upcoming` - Return upcoming customers of the plan.
      #   #
      #   #   Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
      #   #   **Note:** `ended,upcoming` combination is not yet supported.
      #   #
      #   def initialize(plan_id:, limit: nil, next_page: nil, status: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # Status of customers on a given plan. Defaults to `active`.
      #
      # * `all` - Return current, past, and upcoming customers of the plan.
      # * `active` - Return current customers of the plan.
      # * `ended` - Return past customers of the plan.
      # * `upcoming` - Return upcoming customers of the plan.
      #
      # Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
      # **Note:** `ended,upcoming` combination is not yet supported.
      #
      # @example
      #
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
      class Status < Metronome::Enum
        ALL = :all
        ACTIVE = :active
        ENDED = :ended
        UPCOMING = :upcoming

        finalize!
      end
    end
  end
end
