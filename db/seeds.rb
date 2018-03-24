# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


question_banks = [{:category => 'Networks', :question => 'In the Internet Protocol (IP) suite of protocols, which of the following best describes the purpose of the Address
Resolution Protocol?', :option1 => 'To translate Web addresses to host names', :option2 => 'To determine the IP address of a given host name', :option3 => 'To determine the hardware address of a given host name', :option4 => 'To determine the hardware address of a given IP address', :option5 => 'To determine the appropriate route for a datagram', :answer => 2}
  	 ]

question_banks.each do |question|
  QuestionBank.create!(question)
end
