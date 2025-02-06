# typed: strong

module Metronome
  module Models
    module Customers
      class AlertListParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        sig { returns(T.nilable(T::Array[Symbol])) }
        attr_reader :alert_statuses

        sig { params(alert_statuses: T::Array[Symbol]).void }
        attr_writer :alert_statuses

        sig do
          params(
            customer_id: String,
            next_page: String,
            alert_statuses: T::Array[Symbol],
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(customer_id:, next_page: nil, alert_statuses: nil, request_options: {}); end

        sig do
          override.returns(
            {
              customer_id: String,
              next_page: String,
              alert_statuses: T::Array[Symbol],
              request_options: Metronome::RequestOptions
            }
          )
        end
        def to_hash; end

        class AlertStatus < Metronome::Enum
          abstract!

          ENABLED = :ENABLED
          DISABLED = :DISABLED
          ARCHIVED = :ARCHIVED

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
