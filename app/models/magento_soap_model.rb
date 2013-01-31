class MagentoSoapModel
  extend Savon::Model
  client wsdl: Rails.root.join('public','v2_soap.xml')
  client debug: true
  client logger: Rails.logger
  client strip_namespaces: false
  client soap_version: 2
  client advanced_typecasting: false
  client pretty_print_xml: true


  attr_accessor :store
  operations :login

  def login
    return session if session
    resp = super(message: {username: 'dwilkins',apiKey: 'i82much'})
    @session = resp.body[:login_response_param][:result]
    class << MagentoSoapModel
      def self.single_session
        @session
      end
    end

    self.instance_eval <<EOT
    def MagentoSoapModel.session
      '#{@session}'
    end
EOT
    @session
  end

  def session
    MagentoSoapModel.respond_to?(:session) ? MagentoSoapModel.session : nil
  end

end
