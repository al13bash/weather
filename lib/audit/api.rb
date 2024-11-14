module Audit
  class Api
    attr_reader :client

    def create_audit(who:, when:, what:)
      client.post(path: '', body: { who:, when:, what: })
    end

    private def client
      @client ||= Client.new
    end
  end
end