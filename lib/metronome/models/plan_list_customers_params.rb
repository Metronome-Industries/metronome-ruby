# frozen_string_literal: true

module Metronome
  module Models
    class PlanListCustomersParams < Metronome::BaseModel
      # @!attribute plan_id
      #   @return [String]
      required :plan_id, String

      # @!attribute limit
      #   Max number of results that should be returned
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute next_page
      #   Cursor that indicates where the next page of results should start.
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
      #   @return [Symbol, Metronome::Models::PlanListCustomersParams::Status]
      optional :status, enum: -> { Metronome::Models::PlanListCustomersParams::Status }

      # Status of customers on a given plan. Defaults to `active`.
      #
      # * `all` - Return current, past, and upcoming customers of the plan.
      # * `active` - Return current customers of the plan.
      # * `ended` - Return past customers of the plan.
      # * `upcoming` - Return upcoming customers of the plan.
      #
      # Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
      # **Note:** `ended,upcoming` combination is not yet supported.
      class Status < Metronome::Enum
        ALL = :all
        ACTIVE = :active
        ENDED = :ended
        UPCOMING = :upcoming
      end
    end
  end
end
