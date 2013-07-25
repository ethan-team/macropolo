# using seedbank to generate all different seeds instead plain seed
# check here for the details: https://github.com/james2m/seedbank
#
# coding: utf-8

seeds_dir = File.expand_path(File.dirname(__FILE__)) + "/seeds/"
 
 #const first
require seeds_dir + "accounts.const.seeds.rb"
require seeds_dir + "offers.const.seeds.rb"
require seeds_dir + "bookings.const.seeds.rb"

#samples second
require seeds_dir + "accounts.seeds.rb"
require seeds_dir + "offers.seeds.rb"
require seeds_dir + "bookings.seeds.rb"
