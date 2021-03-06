# == Schema Information
#
# Table name: hands
#
#  id      :bigint           not null, primary key
#  cards   :jsonb
#  seat    :enum
#  deal_id :bigint           not null
#
class Hand < ApplicationRecord
  enum seat: PlayerPosition.as_hash

  #associations
  belongs_to :deal
end
