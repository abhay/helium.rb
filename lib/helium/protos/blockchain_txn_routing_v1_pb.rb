# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: blockchain_txn_routing_v1.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("blockchain_txn_routing_v1.proto", :syntax => :proto3) do
    add_message "helium.update_routers" do
      repeated :router_addresses, :bytes, 1
    end
    add_message "helium.update_xor" do
      optional :index, :uint32, 1
      optional :filter, :bytes, 2
    end
    add_message "helium.blockchain_txn_routing_v1" do
      optional :oui, :uint32, 1
      optional :owner, :bytes, 2
      optional :fee, :uint64, 7
      optional :nonce, :uint64, 8
      optional :signature, :bytes, 9
      optional :staking_fee, :uint64, 10
      oneof :update do
        optional :update_routers, :message, 3, "helium.update_routers"
        optional :new_xor, :bytes, 4
        optional :update_xor, :message, 5, "helium.update_xor"
        optional :request_subnet, :uint32, 6
      end
    end
  end
end

module Helium
  Update_routers = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("helium.update_routers").msgclass
  Update_xor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("helium.update_xor").msgclass
  Blockchain_txn_routing_v1 = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("helium.blockchain_txn_routing_v1").msgclass
end
