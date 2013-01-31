require 'active_support/concern'

module BasicStatuses
  extend ActiveSupport::Concern
  included do
    extend Savon::Model
    client wsdl: Rails.root.join('public','v2_soap.xml')
  end
end
