require 'spec_helper'

describe NumberSayer do
	before :each do
		@number_sayer = NumberSayer.new
	end

	describe "say" do
		describe "when 0" do
			it "return 'zero'" do
				result = @number_sayer.say 0, :en
				expect(result).to eq("zero")
			end
		end
		describe "when 1" do
			it "return 'one'" do
				result = @number_sayer.say 1, :en
				expect(result).to eq("one")
			end
		end
		describe "when 9" do
			it "return 'nine'" do
				result = @number_sayer.say 9, :en
				expect(result).to eq("nine")
			end
		end
		describe "when 10" do
			it "return 'ten'" do
				result = @number_sayer.say 10, :en
				expect(result).to eq("ten")				
			end
		end
		describe "when 11" do
			it "return 'sebelas'" do
				result = @number_sayer.say 11, :en
				expect(result).to eq("eleven")				
			end
		end
		describe "when 12" do
			it "return 'twelve'" do
				result = @number_sayer.say 12, :en
				expect(result).to eq("twelve")				
			end
		end
		describe "when 13" do
			it "return 'thirteen'" do
				result = @number_sayer.say 13, :en
				expect(result).to eq("thirteen")				
			end
		end
		describe "when 14" do
			it "return 'fourteen'" do
				result = @number_sayer.say 14, :en
				expect(result).to eq("fourteen")				
			end
		end
		describe "when 15" do
			it "return 'fifteen'" do
				result = @number_sayer.say 15, :en
				expect(result).to eq("fifteen")				
			end
		end
		describe "when 16" do
			it "return 'sixteen'" do
				result = @number_sayer.say 16, :en
				expect(result).to eq("sixteen")				
			end
		end
		describe "when 17" do
			it "return 'seventeen'" do
				result = @number_sayer.say 17, :en
				expect(result).to eq("seventeen")				
			end
		end
		describe "when 18" do
			it "return 'eighteen'" do
				result = @number_sayer.say 18, :en
				expect(result).to eq("eighteen")				
			end
		end
		describe "when 19" do
			it "return 'nineteen'" do
				result = @number_sayer.say 19, :en
				expect(result).to eq("nineteen")				
			end
		end
		describe "when 20" do
			it "return twenty" do
				result = @number_sayer.say 20, :en
				expect(result).to eq("twenty")				
			end
		end
		describe "when 21" do
			it "return twenty one" do
				result = @number_sayer.say 21, :en
				expect(result).to eq("twenty one")				
			end
		end
		describe "when 29" do
			it "return twenty nine" do
				result = @number_sayer.say 29, :en
				expect(result).to eq("twenty nine")				
			end
		end
		describe "when 35" do
			it "return thirty five" do
				result = @number_sayer.say 35, :en
				expect(result).to eq("thirty five")				
			end
		end
		describe "when 91" do
			it "return ninety one" do
				result = @number_sayer.say 91, :en
				expect(result).to eq("ninety one")				
			end
		end
		describe "when 100" do
			it "return one hundred" do
				result = @number_sayer.say 100, :en
				expect(result).to eq("one hundred")				
			end
		end
		describe "when 101" do
			it "return one hundred one" do
				result = @number_sayer.say 101, :en
				expect(result).to eq("one hundred one")				
			end
		end
		describe "when 110" do
			it "return one hundred ten" do
				result = @number_sayer.say 110, :en
				expect(result).to eq("one hundred ten")				
			end
		end
		describe "when 111" do
			it "return one hundred eleven" do
				result = @number_sayer.say 111, :en
				expect(result).to eq("one hundred eleven")				
			end
		end
		describe "when 120" do
			it "return one hundred twenty" do
				result = @number_sayer.say 120, :en
				expect(result).to eq("one hundred twenty")				
			end
		end
		describe "when 121" do
			it "return one hundred twenty one" do
				result = @number_sayer.say 121, :en
				expect(result).to eq("one hundred twenty one")				
			end
		end
		describe "when 178" do
			it "return one hundred seventy eight" do
				result = @number_sayer.say 178, :en
				expect(result).to eq("one hundred seventy eight")				
			end
		end
		describe "when 500" do
			it "return five hundred" do
				result = @number_sayer.say 500, :en
				expect(result).to eq("five hundred")				
			end
		end
		describe "when 550" do
			it "return five hundred fifty" do
				result = @number_sayer.say 550, :en
				expect(result).to eq("five hundred fifty")				
			end
		end
		describe "when 155" do
			it "return one hundred fifty five" do
				result = @number_sayer.say 155, :en
				expect(result).to eq("one hundred fifty five")				
			end
		end
		describe "when 551" do
			it "return five hundred fifty one" do
				result = @number_sayer.say 551, :en
				expect(result).to eq("five hundred fifty one")				
			end
		end
		describe "when 901" do
			it "return nine hundred one" do
				result = @number_sayer.say 901, :en
				expect(result).to eq("nine hundred one")				
			end
		end
		describe "when 1000" do
			it "return one thousand" do
				result = @number_sayer.say 1000, :en
				expect(result).to eq("one thousand")				
			end
		end
		describe "when 1001"  do
			it "return one thousand one" do
				result = @number_sayer.say 1001, :en
				expect(result).to eq("one thousand one")				
			end
		end
		describe "when 1110" do
			it "return one thousand one hundred ten" do
				result = @number_sayer.say 1110, :en
				expect(result).to eq("one thousand one hundred ten")				
			end
		end
		describe "when 1111" do
			it "return a thousan one hundred eleven" do
				result = @number_sayer.say 1111, :en
				expect(result).to eq("one thousand one hundred eleven")				
			end
		end
		describe "when 1012" do
			it "return one thousand twelve" do
				result = @number_sayer.say 1012, :en
				expect(result).to eq("one thousand twelve")				
			end
		end
		describe "when 8001" do
			it "return eight thousand one" do
				result = @number_sayer.say 8001, :en
				expect(result).to eq("eight thousand one")				
			end
		end
		describe "when 8012" do
			it "return eight thousand twelve" do
				result = @number_sayer.say 8012, :en
				expect(result).to eq("eight thousand twelve")				
			end
		end
		describe "when 8101" do
			it "return eight thousand one hundred one" do
				result = @number_sayer.say 8101, :en
				expect(result).to eq("eight thousand one hundred one")				
			end
		end		
		describe "when 8191" do
			it "return eight thousand one hundred ninety one" do
				result = @number_sayer.say 8191, :en
				expect(result).to eq("eight thousand one hundred ninety one")				
			end
		end		
		describe "when 10000" do
			it "return ten thousand" do
				result = @number_sayer.say 10000, :en
				expect(result).to eq("ten thousand")				
			end
		end
		describe "when 10001" do
			it "return ten thousand one" do
				result = @number_sayer.say 10001, :en
				expect(result).to eq("ten thousand one")				
			end
		end
		describe "when 10101" do
			it "return ten thousand one hundred one" do
				result = @number_sayer.say 10101, :en
				expect(result).to eq("ten thousand one hundred one")				
			end
		end		
		describe "when 11000" do
			it "return eleven thousand" do
				result = @number_sayer.say 11000, :en
				expect(result).to eq("eleven thousand")				
			end
		end
		describe "when 11001" do
			it "return eleven thousand one" do
				result = @number_sayer.say 11001, :en
				expect(result).to eq("eleven thousand one")				
			end
		end
		describe "when 11011" do
			it "return eleven thousand eleven" do
				result = @number_sayer.say 11011, :en
				expect(result).to eq("eleven thousand eleven")				
			end
		end
		describe "when 11911" do
			it "return eleven thousand nine hundred eleven" do
				result = @number_sayer.say 11911, :en
				expect(result).to eq("eleven thousand nine hundred eleven")				
			end
		end
		describe "when 50001" do
			it "return fifty thousand one" do
				result = @number_sayer.say 50001, :en
				expect(result).to eq("fifty thousand one")				
			end
		end
		describe "when 50009" do
			it "return fifty thousand nine" do
				result = @number_sayer.say 50009, :en
				expect(result).to eq("fifty thousand nine")				
			end
		end
		describe "when 50010" do
			it "return fifty thousand ten" do
				result = @number_sayer.say 50010, :en
				expect(result).to eq("fifty thousand ten")				
			end
		end
		describe "when 50100" do
			it "return fifty thousand one hundred" do
				result = @number_sayer.say 50100, :en
				expect(result).to eq("fifty thousand one hundred")				
			end
		end
		describe "when 50901" do
			it "return fifty thousand nine hundred one" do
				result = @number_sayer.say 50901, :en
				expect(result).to eq("fifty thousand nine hundred one")				
			end
		end
		describe "when 100000" do
			it "return one hundred thousand" do
				result = @number_sayer.say 100000, :en
				expect(result).to eq("one hundred thousand")				
			end
		end
		describe "when 100001" do
			it "return one hundred thousand one" do
				result = @number_sayer.say 100001, :en
				expect(result).to eq("one hundred thousand one")				
			end
		end
		describe "when 100010" do
			it "return one hundred thousand ten" do
				result = @number_sayer.say 100010, :en
				expect(result).to eq("one hundred thousand ten")				
			end
		end
		describe "when 100011" do
			it "return one hundred thousand eleven" do
				result = @number_sayer.say 100011, :en
				expect(result).to eq("one hundred thousand eleven")				
			end
		end
		describe "when 700 011" do
			it "return seven hundred thousand eleven" do
				result = @number_sayer.say 700011, :en
				expect(result).to eq("seven hundred thousand eleven")				
			end
		end
		describe "when 700110" do
			it "return seven hundred thousand one hundred ten" do
				result = @number_sayer.say 700110, :en
				expect(result).to eq("seven hundred thousand one hundred ten")				
			end
		end
		describe "when 700111" do
			it "return seven hundred thousand one hundred eleven" do
				result = @number_sayer.say 700111, :en
				expect(result).to eq("seven hundred thousand one hundred eleven")				
			end
		end
		describe "when 701110" do
			it "return seven hundred one thousand one hundred ten" do
				result = @number_sayer.say 701110, :en
				expect(result).to eq("seven hundred one thousand one hundred ten")				
			end
		end
		describe "when 705110" do
			it "return seven hundred five thousand one hundred ten" do
				result = @number_sayer.say 705110, :en
				expect(result).to eq("seven hundred five thousand one hundred ten")				
			end
		end
		describe "when 705000" do
			it "return seven hundred five thousand" do
				result = @number_sayer.say 705000, :en
				expect(result).to eq("seven hundred five thousand")				
			end
		end
		describe "when 705001" do
			it "return seven hundred five thousand one" do
				result = @number_sayer.say 705001, :en
				expect(result).to eq("seven hundred five thousand one")				
			end
		end
		describe "when 715001" do
			it "return seven hundred fifteen thousand one" do
				result = @number_sayer.say 715001, :en
				expect(result).to eq("seven hundred fifteen thousand one")				
			end
		end
		describe "when 951123" do
			it "return nine hundred fifty one thousand one hundred twenty three" do
				result = @number_sayer.say 951123, :en
				expect(result).to eq("nine hundred fifty one thousand one hundred twenty three")				
			end
		end
		describe "when 1 000 000" do
			it "return one million" do
				result = @number_sayer.say 1000000, :en
				expect(result).to eq("one million")				
			end
		end
		describe "when 1 000 100" do
			it "return one million one hundred" do
				result = @number_sayer.say 1000100, :en
				expect(result).to eq("one million one hundred")				
			end
		end
		describe "when 1 001 100" do
			it "return one million one thousand one hundred" do
				result = @number_sayer.say 1001100, :en
				expect(result).to eq("one million one thousand one hundred")				
			end
		end
		describe "when 1 011 100" do
			it "return one million eleven thousand one hundred" do
				result = @number_sayer.say 1011100, :en
				expect(result).to eq("one million eleven thousand one hundred")				
			end
		end
		describe "when 10 011 100" do
			it "return ten million eleven thousand one hundred" do
				result = @number_sayer.say 10011100, :en
				expect(result).to eq("ten million eleven thousand one hundred")				
			end
		end
		describe "when 3 456 789" do
			it "return three million four hundred fifty six thousand seven hundred eighty nine" do
				result = @number_sayer.say 3456789, :en
				expect(result).to eq("three million four hundred fifty six thousand seven hundred eighty nine")				
			end
		end
		describe "when 30 456 789" do
			it "return thirty million four hundred fifty six thousand seven hundred eighty nine" do
				result = @number_sayer.say 30456789, :en
				expect(result).to eq("thirty million four hundred fifty six thousand seven hundred eighty nine")				
			end
		end
		describe "when 11 456 789" do
			it "return eleven million four hundred fifty six thousand seven hundred eighty nine" do
				result = @number_sayer.say 11456789, :en
				expect(result).to eq("eleven million four hundred fifty six thousand seven hundred eighty nine")				
			end
		end
		describe "when 310 456 789" do
			it "return three hundred ten million four hundred fifty six thousand seven hundred eighty nine" do
				result = @number_sayer.say 310456789, :en
				expect(result).to eq("three hundred ten million four hundred fifty six thousand seven hundred eighty nine")				
			end
		end
		describe "when 983 000 789" do
			it "return nine hundred eighty three million seven hundred eighty nine" do
				result = @number_sayer.say 983000789, :en
				expect(result).to eq("nine hundred eighty three million seven hundred eighty nine")				
			end
		end
		describe "when 10 000 000 000" do
			it "return sepuluh milyar" do
				result = @number_sayer.say 10000000000, :en
				expect(result).to eq("ten billion")				
			end
		end
		describe "when 100 000 000 000" do
			it "return one hundred billion" do
				result = @number_sayer.say 100000000000, :en
				expect(result).to eq("one hundred billion")				
			end
		end
		describe "when 609 101 010 020" do
			it "return six hundred nine billion one hundred one million ten thousand twenty" do
				result = @number_sayer.say 609101010020, :en
				expect(result).to eq("six hundred nine billion one hundred one million ten thousand twenty")				
			end
		end
		describe "when 609 101 060 020" do
			it "return six hundred nine billion one hundred one million sixty thousand twenty" do
				result = @number_sayer.say 609101060020, :en
				expect(result).to eq("six hundred nine billion one hundred one million sixty thousand twenty")				
			end
		end
		describe "when 601 101 060 020" do
			it "return six hundred one billion one hundred one million sixty thousand twenty" do
				result = @number_sayer.say 601101060020, :en
				expect(result).to eq("six hundred one billion one hundred one million sixty thousand twenty")				
			end
		end
		describe "when 11 101 060 020" do
			it "return eleven billion one hundred one million sixty thousand twenty" do
				result = @number_sayer.say 11101060020, :en
				expect(result).to eq("eleven billion one hundred one million sixty thousand twenty")				
			end
		end
		describe "when 12 345 678 911" do
			it "return twelve billion three hundred fourty five million six hundred seventy eight thousand nine hundred eleven" do
				result = @number_sayer.say 12345678911, :en
				expect(result).to eq("twelve billion three hundred fourty five million six hundred seventy eight thousand nine hundred eleven")				
			end
		end
	end
end