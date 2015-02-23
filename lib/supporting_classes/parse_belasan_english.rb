class ParseBelasanEnglish
    def initialize(satuans, anomalies, adjective_sayings)
        @satuans = satuans
        @anomalies = anomalies
        @adjective_sayings = adjective_sayings
    end
    def parse(param)

        front_digit = param[:front_digit]
        current_digit = param[:current_digit]
        results = param[:destination]
        satuans = @satuans
        if front_digit == "1"
            if current_digit == "0" #10
                results.push @anomalies[:a10]
            elsif current_digit == "1" #11
                results.push @anomalies[:a11]
            else # 12-19
                satuan = satuans[current_digit.to_i]
                symbol_string = "a#{front_digit}#{current_digit}"          
                results.push "#{@anomalies[symbol_string.to_sym]}"
            end
        else #20
            if front_digit != "0"
                puluhan = satuans[front_digit.to_i]
                symbol_string = "a#{front_digit}0"          
                results.push "#{@anomalies[symbol_string.to_sym]}"

                if current_digit != "0"
                    satuan = satuans[current_digit.to_i]
                    results.push satuan
                end
            end
        end                    
    end    
end
