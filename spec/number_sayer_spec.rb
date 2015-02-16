require 'spec_helper'

describe NumberSayer do
	before :each do
		@number_sayer = NumberSayer.new
	end

	describe "say" do
		describe "when 0" do
			it "return 'nol'" do
				result = @number_sayer.say 0
				expect(result).to eq("nol")
			end
		end
		describe "when 1" do
			it "return 'satu'" do
				result = @number_sayer.say 1
				expect(result).to eq("satu")
			end
		end
		describe "when 9" do
			it "return 'sembilan'" do
				result = @number_sayer.say 9
				expect(result).to eq("sembilan")
			end
		end
		describe "when 10" do
			it "return 'sepuluh'" do
				result = @number_sayer.say 10
				expect(result).to eq("sepuluh")				
			end
		end
		describe "when 11" do
			it "return 'sebelas'" do
				result = @number_sayer.say 11
				expect(result).to eq("sebelas")				
			end
		end
		describe "when 19" do
			it "return 'sembilan belas'" do
				result = @number_sayer.say 19
				expect(result).to eq("sembilan belas")				
			end
		end
		describe "when 20" do
			it "return dua puluh" do
				result = @number_sayer.say 20
				expect(result).to eq("dua puluh")				
			end
		end
		describe "when 35" do
			it "return tiga puluh lima" do
				result = @number_sayer.say 35
				expect(result).to eq("tiga puluh lima")				
			end
		end
		describe "when 91" do
			it "return sembilan puluh satu" do
				result = @number_sayer.say 91
				expect(result).to eq("sembilan puluh satu")				
			end
		end
		describe "when 100" do
			it "return seratus" do
				result = @number_sayer.say 100
				expect(result).to eq("seratus")				
			end
		end
		describe "when 101" do
			it "return seratus satu" do
				result = @number_sayer.say 101
				expect(result).to eq("seratus satu")				
			end
		end
		describe "when 110" do
			it "return seratus sepuluh" do
				result = @number_sayer.say 110
				expect(result).to eq("seratus sepuluh")				
			end
		end
		describe "when 111" do
			it "return seratus sebelas" do
				result = @number_sayer.say 111
				expect(result).to eq("seratus sebelas")				
			end
		end
		describe "when 120" do
			it "return seratus dua puluh" do
				result = @number_sayer.say 120
				expect(result).to eq("seratus dua puluh")				
			end
		end
		describe "when 121" do
			it "return seratus dua puluh satu" do
				result = @number_sayer.say 121
				expect(result).to eq("seratus dua puluh satu")				
			end
		end
		describe "when 178" do
			it "return seratus tujuh puluh delapan" do
				result = @number_sayer.say 178
				expect(result).to eq("seratus tujuh puluh delapan")				
			end
		end
		describe "when 500" do
			it "return lima ratus" do
				result = @number_sayer.say 500
				expect(result).to eq("lima ratus")				
			end
		end
		describe "when 550" do
			it "return lima ratus lima puluh" do
				result = @number_sayer.say 550
				expect(result).to eq("lima ratus lima puluh")				
			end
		end
		describe "when 155" do
			it "return seratus lima puluh lima" do
				result = @number_sayer.say 155
				expect(result).to eq("seratus lima puluh lima")				
			end
		end
		describe "when 551" do
			it "return lima ratus lima puluh satu" do
				result = @number_sayer.say 551
				expect(result).to eq("lima ratus lima puluh satu")				
			end
		end
		describe "when 901" do
			it "return sembilan ratus satu" do
				result = @number_sayer.say 901
				expect(result).to eq("sembilan ratus satu")				
			end
		end
		describe "when 1000" do
			it "return seribu" do
				result = @number_sayer.say 1000
				expect(result).to eq("seribu")				
			end
		end
		describe "when 1001"  do
			it "return seribu satu" do
				result = @number_sayer.say 1001
				expect(result).to eq("seribu satu")				
			end
		end
		describe "when 1110" do
			it "return seribu seratus sepuluh" do
				result = @number_sayer.say 1110
				expect(result).to eq("seribu seratus sepuluh")				
			end
		end
		describe "when 1111" do
			it "return seribu seratus sebelas" do
				result = @number_sayer.say 1111
				expect(result).to eq("seribu seratus sebelas")				
			end
		end
		describe "when 1012" do
			it "return seribu dua belas" do
				result = @number_sayer.say 1012
				expect(result).to eq("seribu dua belas")				
			end
		end
		describe "when 8001" do
			it "return delapan ribu satu" do
				result = @number_sayer.say 8001
				expect(result).to eq("delapan ribu satu")				
			end
		end
		describe "when 8012" do
			it "return delapan ribu dua belas" do
				result = @number_sayer.say 8012
				expect(result).to eq("delapan ribu dua belas")				
			end
		end
		describe "when 8101" do
			it "return delapan ribu seratus satu" do
				result = @number_sayer.say 8101
				expect(result).to eq("delapan ribu seratus satu")				
			end
		end		
		describe "when 8191" do
			it "return delapan ribu seratus sembilan puluh satu" do
				result = @number_sayer.say 8191
				expect(result).to eq("delapan ribu seratus sembilan puluh satu")				
			end
		end		
		describe "when 10000" do
			it "return sepuluh ribu" do
				result = @number_sayer.say 10000
				expect(result).to eq("sepuluh ribu")				
			end
		end
		describe "when 10001" do
			it "return sepuluh ribu" do
				result = @number_sayer.say 10001
				expect(result).to eq("sepuluh ribu satu")				
			end
		end
		describe "when 10101" do
			it "return sepuluh ribu seratus satu" do
				result = @number_sayer.say 10101
				expect(result).to eq("sepuluh ribu seratus satu")				
			end
		end		
		describe "when 11000" do
			it "return sebelas ribu" do
				result = @number_sayer.say 11000
				expect(result).to eq("sebelas ribu")				
			end
		end
		describe "when 11001" do
			it "return sebelas ribu satu" do
				result = @number_sayer.say 11001
				expect(result).to eq("sebelas ribu satu")				
			end
		end
		describe "when 11011" do
			it "return sebelas ribu sebelas" do
				result = @number_sayer.say 11011
				expect(result).to eq("sebelas ribu sebelas")				
			end
		end
		describe "when 11911" do
			it "return sebelas ribu sembilan ratus sebelas" do
				result = @number_sayer.say 11911
				expect(result).to eq("sebelas ribu sembilan ratus sebelas")				
			end
		end
		describe "when 50001" do
			it "return lima puluh ribu satu" do
				result = @number_sayer.say 50001
				expect(result).to eq("lima puluh ribu satu")				
			end
		end
		describe "when 50009" do
			it "return lima puluh ribu sembilan" do
				result = @number_sayer.say 50009
				expect(result).to eq("lima puluh ribu sembilan")				
			end
		end
		describe "when 50010" do
			it "return lima puluh ribu sepuluh" do
				result = @number_sayer.say 50010
				expect(result).to eq("lima puluh ribu sepuluh")				
			end
		end
		describe "when 50100" do
			it "return lima puluh ribu seratus" do
				result = @number_sayer.say 50100
				expect(result).to eq("lima puluh ribu seratus")				
			end
		end
		describe "when 50901" do
			it "return lima puluh ribu sembilan ratus satu" do
				result = @number_sayer.say 50901
				expect(result).to eq("lima puluh ribu sembilan ratus satu")				
			end
		end
		describe "when 100000" do
			it "return seratus ribu" do
				result = @number_sayer.say 100000
				expect(result).to eq("seratus ribu")				
			end
		end
		describe "when 100001" do
			it "return seratus ribu satu" do
				result = @number_sayer.say 100001
				expect(result).to eq("seratus ribu satu")				
			end
		end
		describe "when 100010" do
			it "return seratus ribu sepuluh" do
				result = @number_sayer.say 100010
				expect(result).to eq("seratus ribu sepuluh")				
			end
		end
		describe "when 100011" do
			it "return seratus ribu sebelas" do
				result = @number_sayer.say 100011
				expect(result).to eq("seratus ribu sebelas")				
			end
		end
		describe "when 700011" do
			it "return tujuh ratus ribu sebelas" do
				result = @number_sayer.say 700011
				expect(result).to eq("tujuh ratus ribu sebelas")				
			end
		end
		describe "when 700110" do
			it "return tujuh ratus ribu seratus sepuluh" do
				result = @number_sayer.say 700110
				expect(result).to eq("tujuh ratus ribu seratus sepuluh")				
			end
		end
		describe "when 700111" do
			it "return tujuh ratus ribu seratus sebelas" do
				result = @number_sayer.say 700111
				expect(result).to eq("tujuh ratus ribu seratus sebelas")				
			end
		end
		describe "when 701110" do
			it "return tujuh ratus satu ribu seratus sepuluh" do
				result = @number_sayer.say 701110
				expect(result).to eq("tujuh ratus satu ribu seratus sepuluh")				
			end
		end
		describe "when 705110" do
			it "return tujuh ratus lima ribu seratus sepuluh" do
				result = @number_sayer.say 705110
				expect(result).to eq("tujuh ratus lima ribu seratus sepuluh")				
			end
		end
		describe "when 705000" do
			it "return tujuh ratus lima ribu" do
				result = @number_sayer.say 705000
				expect(result).to eq("tujuh ratus lima ribu")				
			end
		end
		describe "when 705001" do
			it "return tujuh ratus lima ribu satu" do
				result = @number_sayer.say 705001
				expect(result).to eq("tujuh ratus lima ribu satu")				
			end
		end
		describe "when 715001" do
			it "return tujuh ratus lima belas ribu satu" do
				result = @number_sayer.say 715001
				expect(result).to eq("tujuh ratus lima belas ribu satu")				
			end
		end
		describe "when 951123" do
			it "return sembilan ratus lima puluh satu ribu seratus dua puluh tiga" do
				result = @number_sayer.say 951123
				expect(result).to eq("sembilan ratus lima puluh satu ribu seratus dua puluh tiga")				
			end
		end
		describe "when 1 000 000" do
			it "return sejuta" do
				result = @number_sayer.say 1000000
				expect(result).to eq("sejuta")				
			end
		end
		describe "when 1 000 100" do
			it "return sejuta seratus" do
				result = @number_sayer.say 1000100
				expect(result).to eq("sejuta seratus")				
			end
		end
		describe "when 1 001 100" do
			it "return sejuta seribu seratus" do
				result = @number_sayer.say 1001100
				expect(result).to eq("sejuta satu ribu seratus")				
			end
		end
		describe "when 1 011 100" do
			it "return sejuta sebelas ribu seratus" do
				result = @number_sayer.say 1011100
				expect(result).to eq("sejuta sebelas ribu seratus")				
			end
		end
		describe "when 10 011 100" do
			it "return sepuluh juta sebelas ribu seratus" do
				result = @number_sayer.say 10011100
				expect(result).to eq("sepuluh juta sebelas ribu seratus")				
			end
		end
		describe "when 3 456 789" do
			it "return tiga juga empat ratus lima puluh enam ribu tujuh ratus delapan puluh sembilan" do
				result = @number_sayer.say 3456789
				expect(result).to eq("tiga juta empat ratus lima puluh enam ribu tujuh ratus delapan puluh sembilan")				
			end
		end
		describe "when 30 456 789" do
			it "return tiga puluh juta empat ratus lima puluh enam ribu tujuh ratus delapan puluh sembilan" do
				result = @number_sayer.say 30456789
				expect(result).to eq("tiga puluh juta empat ratus lima puluh enam ribu tujuh ratus delapan puluh sembilan")				
			end
		end
		describe "when 11 456 789" do
			it "return sebelas juta empat ratus lima puluh enam ribu tujuh ratus delapan puluh sembilan" do
				result = @number_sayer.say 11456789
				expect(result).to eq("sebelas juta empat ratus lima puluh enam ribu tujuh ratus delapan puluh sembilan")				
			end
		end
		describe "when 310 456 789" do
			it "return tiga ratus sepuluh juta empat ratus lima puluh enam ribu tujuh ratus delapan puluh sembilan" do
				result = @number_sayer.say 310456789
				expect(result).to eq("tiga ratus sepuluh juta empat ratus lima puluh enam ribu tujuh ratus delapan puluh sembilan")				
			end
		end
		describe "when 983 000 789" do
			it "return sembilan ratus delapan puluh tiga juta tujuh ratus delapan puluh sembilan" do
				result = @number_sayer.say 983000789
				expect(result).to eq("sembilan ratus delapan puluh tiga juta tujuh ratus delapan puluh sembilan")				
			end
		end
		describe "when 10 000 000 000" do
			it "return sepuluh milyar" do
				result = @number_sayer.say 10000000000
				expect(result).to eq("sepuluh milyar")				
			end
		end
		describe "when 100 000 000 000" do
			it "return seratus milyar" do
				result = @number_sayer.say 100000000000
				expect(result).to eq("seratus milyar")				
			end
		end
		describe "when 609 101 010 020" do
			it "return enam ratus sembilan milyar seratus satu juta sepuluh ribu dua puluh" do
				result = @number_sayer.say 609101010020
				expect(result).to eq("enam ratus sembilan milyar seratus satu juta sepuluh ribu dua puluh")				
			end
		end
		describe "when 609 101 060 020" do
			it "return enam ratus sembilan milyar seratus satu juta enam puluh ribu dua puluh" do
				result = @number_sayer.say 609101060020
				expect(result).to eq("enam ratus sembilan milyar seratus satu juta enam puluh ribu dua puluh")				
			end
		end
		describe "when 601 101 060 020" do
			it "return enam ratus satu milyar seratus satu juta enam puluh ribu dua puluh" do
				result = @number_sayer.say 601101060020
				expect(result).to eq("enam ratus satu milyar seratus satu juta enam puluh ribu dua puluh")				
			end
		end
		describe "when 11 101 060 020" do
			it "return sebelas milyar seratus satu juta enam puluh ribu dua puluh" do
				result = @number_sayer.say 11101060020
				expect(result).to eq("sebelas milyar seratus satu juta enam puluh ribu dua puluh")				
			end
		end
		describe "when 12 345 678 911" do
			it "return dua belas milyar tiga ratus empat puluh lima juta enam ratus tujuh puluh delapan ribu sembilan ratus sebelas" do
				result = @number_sayer.say 12345678911
				expect(result).to eq("dua belas milyar tiga ratus empat puluh lima juta enam ratus tujuh puluh delapan ribu sembilan ratus sebelas")				
			end
		end
	end
end