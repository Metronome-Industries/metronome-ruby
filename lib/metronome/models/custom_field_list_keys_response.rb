# frozen_string_literal: true

module Metronome
  module Models
    class CustomFieldListKeysResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::CustomFieldListKeysResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::CustomFieldListKeysResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] enforce_uniqueness
        #   @return [Boolean]
        required :enforce_uniqueness, Metronome::BooleanModel

        # @!attribute [rw] entity
        #   @return [Symbol]
        required :entity,
                 Metronome::Enum.new(
                   :alert,
                   :billable_metric,
                   :charge,
                   :commit,
                   :contract_credit,
                   :contract_product,
                   :contract,
                   :credit_grant,
                   :customer_plan,
                   :customer,
                   :invoice,
                   :plan,
                   :professional_service,
                   :product,
                   :rate_card,
                   :scheduled_charge
                 )

        # @!attribute [rw] key
        #   @return [String]
        required :key, String
      end
    end
  end
end
