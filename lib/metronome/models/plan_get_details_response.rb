# frozen_string_literal: true

module Metronome
  module Models
    class PlanGetDetailsResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::PlanGetDetailsResponse::Data]
      required :data, -> { Metronome::Models::PlanGetDetailsResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        required :custom_fields, Hash

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] credit_grants
        #   @return [Array<Metronome::Models::PlanGetDetailsResponse::Data::CreditGrant>]
        optional :credit_grants,
                 Metronome::ArrayOf.new(-> { Metronome::Models::PlanGetDetailsResponse::Data::CreditGrant })

        # @!attribute [rw] description
        #   @return [String]
        optional :description, String

        # @!attribute [rw] minimums
        #   @return [Array<Metronome::Models::PlanGetDetailsResponse::Data::Minimum>]
        optional :minimums,
                 Metronome::ArrayOf.new(-> { Metronome::Models::PlanGetDetailsResponse::Data::Minimum })

        # @!attribute [rw] overage_rates
        #   @return [Array<Metronome::Models::PlanGetDetailsResponse::Data::OverageRate>]
        optional :overage_rates,
                 Metronome::ArrayOf.new(-> { Metronome::Models::PlanGetDetailsResponse::Data::OverageRate })

        class CreditGrant < BaseModel
          # @!attribute [rw] amount_granted
          #   @return [Float]
          required :amount_granted, Float

          # @!attribute [rw] amount_granted_credit_type
          #   @return [Metronome::Models::PlanGetDetailsResponse::Data::CreditGrant::AmountGrantedCreditType]
          required :amount_granted_credit_type,
                   -> { Metronome::Models::PlanGetDetailsResponse::Data::CreditGrant::AmountGrantedCreditType }

          # @!attribute [rw] amount_paid
          #   @return [Float]
          required :amount_paid, Float

          # @!attribute [rw] amount_paid_credit_type
          #   @return [Metronome::Models::PlanGetDetailsResponse::Data::CreditGrant::AmountPaidCreditType]
          required :amount_paid_credit_type,
                   -> { Metronome::Models::PlanGetDetailsResponse::Data::CreditGrant::AmountPaidCreditType }

          # @!attribute [rw] effective_duration
          #   @return [Float]
          required :effective_duration, Float

          # @!attribute [rw] name_
          #   @return [String]
          required :name_, String

          # @!attribute [rw] priority
          #   @return [String]
          required :priority, String

          # @!attribute [rw] send_invoice
          #   @return [Boolean]
          required :send_invoice, Metronome::BooleanModel

          # @!attribute [rw] reason
          #   @return [String]
          optional :reason, String

          # @!attribute [rw] recurrence_duration
          #   @return [Float]
          optional :recurrence_duration, Float

          # @!attribute [rw] recurrence_interval
          #   @return [Float]
          optional :recurrence_interval, Float

          class AmountGrantedCreditType < BaseModel
            # @!attribute [rw] id
            #   @return [String]
            required :id, String

            # @!attribute [rw] name_
            #   @return [String]
            required :name_, String
          end

          class AmountPaidCreditType < BaseModel
            # @!attribute [rw] id
            #   @return [String]
            required :id, String

            # @!attribute [rw] name_
            #   @return [String]
            required :name_, String
          end
        end

        class Minimum < BaseModel
          # @!attribute [rw] credit_type
          #   @return [Metronome::Models::PlanGetDetailsResponse::Data::Minimum::CreditType]
          required :credit_type, -> { Metronome::Models::PlanGetDetailsResponse::Data::Minimum::CreditType }

          # @!attribute [rw] name_
          #   @return [String]
          required :name_, String

          # @!attribute [rw] start_period
          #   Used in price ramps.  Indicates how many billing periods pass before the charge applies.
          #   @return [Float]
          required :start_period, Float

          # @!attribute [rw] value
          #   @return [Float]
          required :value, Float

          class CreditType < BaseModel
            # @!attribute [rw] id
            #   @return [String]
            required :id, String

            # @!attribute [rw] name_
            #   @return [String]
            required :name_, String
          end
        end

        class OverageRate < BaseModel
          # @!attribute [rw] credit_type
          #   @return [Metronome::Models::PlanGetDetailsResponse::Data::OverageRate::CreditType]
          required :credit_type, -> { Metronome::Models::PlanGetDetailsResponse::Data::OverageRate::CreditType }

          # @!attribute [rw] fiat_credit_type
          #   @return [Metronome::Models::PlanGetDetailsResponse::Data::OverageRate::FiatCreditType]
          required :fiat_credit_type,
                   -> { Metronome::Models::PlanGetDetailsResponse::Data::OverageRate::FiatCreditType }

          # @!attribute [rw] start_period
          #   Used in price ramps.  Indicates how many billing periods pass before the charge applies.
          #   @return [Float]
          required :start_period, Float

          # @!attribute [rw] to_fiat_conversion_factor
          #   @return [Float]
          required :to_fiat_conversion_factor, Float

          class CreditType < BaseModel
            # @!attribute [rw] id
            #   @return [String]
            required :id, String

            # @!attribute [rw] name_
            #   @return [String]
            required :name_, String
          end

          class FiatCreditType < BaseModel
            # @!attribute [rw] id
            #   @return [String]
            required :id, String

            # @!attribute [rw] name_
            #   @return [String]
            required :name_, String
          end
        end
      end
    end
  end
end
