# typed: strong

module Metronome
  module Resources
    class Plans
      sig do
        params(
          limit: Integer,
          next_page: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::CursorPage[Metronome::Models::PlanListResponse])
      end
      def list(limit:, next_page:, request_options: {}); end

      sig do
        params(
          plan_id: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::PlanGetDetailsResponse)
      end
      def get_details(plan_id:, request_options: {}); end

      sig do
        params(
          plan_id: String,
          limit: Integer,
          next_page: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::CursorPage[Metronome::Models::PlanListChargesResponse])
      end
      def list_charges(plan_id:, limit:, next_page:, request_options: {}); end

      sig do
        params(
          plan_id: String,
          limit: Integer,
          next_page: String,
          status: Symbol,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::CursorPage[Metronome::Models::PlanListCustomersResponse])
      end
      def list_customers(plan_id:, limit:, next_page:, status:, request_options: {}); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
