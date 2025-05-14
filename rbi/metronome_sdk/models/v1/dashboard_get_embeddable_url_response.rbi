# typed: strong

module MetronomeSDK
  module Models
    module V1
      class DashboardGetEmbeddableURLResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig { params(url: String).returns(T.attached_class) }
          def self.new(url: nil)
          end

          sig { override.returns({ url: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
