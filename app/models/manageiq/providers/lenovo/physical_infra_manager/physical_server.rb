module ManageIQ::Providers
  class Lenovo::PhysicalInfraManager::PhysicalServer < ::PhysicalServer
    belongs_to :ext_management_system, foreign_key: "ems_id", class_name: "ManageIQ::Providers::Lenovo::PhysicalInfraManager"
    has_many :firmwares, :foreign_key => "ph_server_uuid", :primary_key => "uuid"
    has_one :host, :foreign_key => "service_tag", :primary_key => "serialNumber"
    has_one :hardware, :foreign_key => "physical_server_id", :primary_key => "id"
  end
end
