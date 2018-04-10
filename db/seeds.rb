# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


question_banks = [
	{	:category => 'Networks',
		:question => 'In the Internet Protocol (IP) suite of protocols, which of the following best describes the purpose of the Address Resolution Protocol?',
		:option1 => 'To translate Web addresses to host names',
		:option2 => 'To determine the IP address of a given host name',
		:option3 => 'To determine the hardware address of a given host name',
		:option4 => 'To determine the hardware address of a given IP address',
		:option5 => 'To determine the appropriate route for a datagram', :answer => 2},
	{	:category => 'Algorithms', 
		:question => 'Let X be a problem that belongs to the class NP. Then which one of the following is TRUE?',
		:option1 => 'There is no polynomial time algorithm for X',
		:option2 => 'If X can be solved deterministically in polynomial time, then P = NP', 
		:option3 => 'If X is NP-hard, then it is NP-complete', 
		:option4 => 'X may be undecidable', 
		:option5 => 'None of the above', 
		:answer => 3}
]

question_banks.each do |question|
  QuestionBank.create(question)
end

users = [
	{	:name => 'Satish', 
		:email => 'admin1@cs.tamu.edu',
		:password => 'foobar1',
		:password_confirmation => 'foobar1'}
]

users.each do |user|
  User.create(user)
end