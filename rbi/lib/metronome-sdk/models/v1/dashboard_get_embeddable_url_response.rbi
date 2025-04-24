# typed: strong

module MetronomeSDK
  module Models
    module V1
      class DashboardGetEmbeddableURLResponse < MetronomeSDK::BaseModel
        sig { returns(MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data) }
        def data
        end

        sig do
          params(_: MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data)
            .returns(MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data)
        end
        def data=(_)
        end

        sig { params(data: MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data).void }
        def initialize(data:)
        end

        sig { override.returns({data: MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data}) }
        def to_hash
        end

        class Data < MetronomeSDK::BaseModel
          sig { returns(T.nilable(String)) }
          def url
          end

          sig { params(_: String).returns(String) }
          def url=(_)
          end

          sig { params(url: String).void }
          def initialize(url: nil)
          end

          sig { override.returns({url: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
