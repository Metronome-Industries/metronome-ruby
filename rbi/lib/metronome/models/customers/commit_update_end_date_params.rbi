# typed: strong

module Metronome
  module Models
    module Customers
      class CommitUpdateEndDateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        def commit_id
        end

        sig { params(_: String).returns(String) }
        def commit_id=(_)
        end

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(T.nilable(Time)) }
        def access_ending_before
        end

        sig { params(_: Time).returns(Time) }
        def access_ending_before=(_)
        end

        sig { returns(T.nilable(Time)) }
        def invoices_ending_before
        end

        sig { params(_: Time).returns(Time) }
        def invoices_ending_before=(_)
        end

        sig do
          params(
            commit_id: String,
            customer_id: String,
            access_ending_before: Time,
            invoices_ending_before: Time,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(
          commit_id:,
          customer_id:,
          access_ending_before: nil,
          invoices_ending_before: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                commit_id: String,
                customer_id: String,
                access_ending_before: Time,
                invoices_ending_before: Time,
                request_options: Metronome::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
