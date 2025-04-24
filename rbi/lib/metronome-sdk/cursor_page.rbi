# typed: strong

module MetronomeSDK
  class CursorPage
    include MetronomeSDK::BasePage

    Elem = type_member

    sig { returns(String) }
    def next_page_
    end

    sig { params(_: String).returns(String) }
    def next_page_=(_)
    end

    sig { returns(T::Array[Elem]) }
    def data
    end

    sig { params(_: T::Array[Elem]).returns(T::Array[Elem]) }
    def data=(_)
    end

    sig do
      params(
        client: MetronomeSDK::BaseClient,
        req: MetronomeSDK::BaseClient::RequestComponentsShape,
        headers: T.any(T::Hash[String, String], Net::HTTPHeader),
        unwrapped: T::Hash[Symbol, T.anything]
      )
        .void
    end
    def initialize(client:, req:, headers:, unwrapped:)
    end
  end
end
