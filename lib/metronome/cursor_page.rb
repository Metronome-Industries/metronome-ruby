# frozen_string_literal: true

module Metronome
  class CursorPage
    # @return [String]
    attr_accessor :next_page

    # @return [Array]
    attr_accessor :data

    # @!visibility private
    attr_accessor :client, :req, :opts

    # @!visibility private
    def initialize(model, raw_data, _response, client, req, opts)
      self.next_page = raw_data[:next_page]
      self.data = (raw_data[:data] || []).map { |e| model.convert(e) }
      self.client = client
      self.req = req
      self.opts = opts
    end

    # @return [Boolean]
    def next_page?
      !next_page.nil?
    end

    # @return [CursorPage]
    def next_page
      if !next_page?
        raise "No more pages available; please check #next_page? before calling #next_page"
      end
      client.request(Util.deep_merge(req, {query: {next_page: next_page}}), opts)
    end

    # @return [nil]
    def auto_paging_each(&blk)
      if !blk
        raise "A block must be given to #auto_paging_each"
      end
      page = self
      loop do
        page.data.each { |e| blk.call(e) }
        break if !page.next_page?
        page = page.next_page
      end
    end
  end
end
