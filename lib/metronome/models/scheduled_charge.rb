# frozen_string_literal: true

module Metronome
  module Models
    class ScheduledCharge < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] product
      #   @return [Metronome::Models::ScheduledCharge::Product]
      required :product, -> { Metronome::Models::ScheduledCharge::Product }

      # @!attribute [rw] schedule
      #   @return [Metronome::Models::ScheduledCharge::Schedule]
      required :schedule, -> { Metronome::Models::ScheduledCharge::Schedule }

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute [rw] name_
      #   displayed on invoices
      #   @return [String]
      optional :name_, String

      # @!attribute [rw] netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #   @return [String]
      optional :netsuite_sales_order_id, String

      class Product < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String
      end

      class Schedule < BaseModel
        # @!attribute [rw] schedule_items
        #   @return [Array<Metronome::Models::ScheduledCharge::Schedule::ScheduleItem>]
        optional :schedule_items,
                 Metronome::ArrayOf.new(-> { Metronome::Models::ScheduledCharge::Schedule::ScheduleItem })

        class ScheduleItem < BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

          # @!attribute [rw] amount
          #   @return [Float]
          required :amount, Float

          # @!attribute [rw] invoice_id
          #   @return [String]
          required :invoice_id, String

          # @!attribute [rw] quantity
          #   @return [Float]
          required :quantity, Float

          # @!attribute [rw] timestamp
          #   @return [String]
          required :timestamp, String

          # @!attribute [rw] unit_price
          #   @return [Float]
          required :unit_price, Float
        end
      end
    end
  end
end
