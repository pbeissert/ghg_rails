# == Schema Information
#
# Table name: pbeissert.em_annu_pools_kp
#
#  luc_nr         :string(11)
#  pool_abbr      :string(20)
#  submission     :integer
#  inventory_year :integer
#  state_abbr     :string(2)
#  substance      :string(5)
#  unit           :string(6)
#  value          :decimal(, )
#


class EmAnnuPoolsKp < ActiveRecord::Base
  self.table_name = 'pbeissert.em_annu_pools_kp'
  def self.all_luc_nrs
    order("luc_nr").pluck("luc_nr").uniq
  end

  def self.all_submissions
    order("submission").pluck("submission").uniq
  end
end
