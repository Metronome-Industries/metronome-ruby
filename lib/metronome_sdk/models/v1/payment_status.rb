# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module PaymentStatus
        extend MetronomeSDK::Internal::Type::Enum

        PENDING = :pending
        REQUIRES_INTERVENTION = :requires_intervention
        PAID = :paid
        CANCELED = :canceled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
