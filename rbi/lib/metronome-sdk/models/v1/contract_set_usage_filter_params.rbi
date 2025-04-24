# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractSetUsageFilterParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def contract_id
        end

        sig { params(_: String).returns(String) }
        def contract_id=(_)
        end

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(String) }
        def group_key
        end

        sig { params(_: String).returns(String) }
        def group_key=(_)
        end

        sig { returns(T::Array[String]) }
        def group_values
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def group_values=(_)
        end

        sig { returns(Time) }
        def starting_at
        end

        sig { params(_: Time).returns(Time) }
        def starting_at=(_)
        end

        sig do
          params(
            contract_id: String,
            customer_id: String,
            group_key: String,
            group_values: T::Array[String],
            starting_at: Time,
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(
          contract_id:,
          customer_id:,
          group_key:,
          group_values:,
          starting_at:,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                contract_id: String,
                customer_id: String,
                group_key: String,
                group_values: T::Array[String],
                starting_at: Time,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
