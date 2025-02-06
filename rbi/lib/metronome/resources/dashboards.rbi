# typed: strong

module Metronome
  module Resources
    class Dashboards
      sig do
        params(
          customer_id: String,
          dashboard: Symbol,
          bm_group_key_overrides: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride],
          color_overrides: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride],
          dashboard_options: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption],
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Metronome::Models::DashboardGetEmbeddableURLResponse)
      end
      def get_embeddable_url(
        customer_id:,
        dashboard:,
        bm_group_key_overrides: nil,
        color_overrides: nil,
        dashboard_options: nil,
        request_options: {}
      ); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
