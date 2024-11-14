module Audit
  class Client < BaseClient
    BASE_URL = ENV["AUDIT_BASE_URL"]
  end
end
