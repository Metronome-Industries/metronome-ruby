# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanListResponse < MetronomeSDK::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
        end

        sig do
          params(id: String, description: String, name: String, custom_fields: T::Hash[Symbol, String]).void
        end
        def initialize(id:, description:, name:, custom_fields: nil)
        end

        sig do
          override.returns(
            {
              id: String,
              description: String,
              name: String,
              custom_fields: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
