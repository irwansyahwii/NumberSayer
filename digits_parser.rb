class DigitsParser
    attr_accessor :satuans
    attr_accessor :adjective_sayings
    attr_accessor :anomalies
    attr_accessor :belasan_parser

    def initialize
        @satuans = ["nol", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan"]    
        @adjective_sayings = {puluh: "puluh", belas: "belas", ratusan: "ratus", ribuan: "ribu", jutaan: "juta", milyaran: "milyar"}
        @anomalies = {a10: "sepuluh", a11: "sebelas", a100:"seratus", a1rb: "seribu", a1jt: "sejuta", a1M:"semilyar"}
    end

    def parse_belasan(param)        
        @belasan_parser.parse param
    end

    def say(number)
        adjectives = [:satuan, :puluhan, :ratusan, :ribuan, :puluhan_ribu, :ratusan_ribu, :jutaan, :puluhan_juta, :ratusan_juta, :milyaran, :puluhan_milyar, :ratusan_milyar]


        adjective_index = 0
        if number < 10
            return satuans[number]
        else # 10, 11, 19, 20...99, 100
            results = []

            digit_adjectives = []

            number_s = number.to_s

            backward_index = number_s.length - 1
            while backward_index >= 0

                digit_s = number_s[backward_index]
                digit_adjectives.push [adjectives[adjective_index], digit_s]

                adjective_index += 1

                backward_index -= 1
            end         

            digit_adjectives = digit_adjectives.reverse

            is_handle_belasan = false
            is_ignore_ribuan = false
            is_ignore_jutaan = false
            digit_adjectives.each_with_index do |digit_adjective, i|

                current_adjective = digit_adjective[0]
                current_digit = digit_adjective[1]

                if current_adjective == :satuan
                    front_digit = digit_adjectives[i - 1][1]
                    if front_digit == "0"
                        if current_digit != "0"
                            satuan = @satuans[current_digit.to_i]
                            results.push satuan
                        end
                    else
                        parse_belasan front_digit: front_digit, current_digit: current_digit, destination: results
                    end
                end                
                if current_adjective == :ratusan or current_adjective == :ratusan_ribu or current_adjective == :ratusan_juta or current_adjective == :ratusan_milyar
                    
                    if current_digit == "1"
                        results.push @anomalies[:a100]
                    else
                        if current_digit != "0"
                            ratusan = @satuans[current_digit.to_i]
                            results.push "#{ratusan} #{@adjective_sayings[:ratusan]}"
                        end
                    end
                end
                if current_adjective == :ribuan or current_adjective == :jutaan or current_adjective == :milyaran
                    has_puluhan = i > 0
                    if !has_puluhan
                        if current_digit == "1"
                            if current_adjective == :ribuan
                                results.push "#{@anomalies[:a1rb]}"
                            else
                                results.push "#{@anomalies[:a1jt]}"
                            end
                        else
                            ribuan = @satuans[current_digit.to_i]
                            results.push "#{ribuan} #{@adjective_sayings[current_adjective]}"
                        end  
                    else
                        front_digit = digit_adjectives[i - 1][1]
                        if front_digit == "0"
                            if current_digit != "0"
                                satuan = satuans[current_digit.to_i]
                                results.push "#{satuan}"
                                results.push @adjective_sayings[current_adjective]
                            else
                                ratusan_val = digit_adjectives[i - 2][1] 
                                if ratusan_val != "0"                                    
                                    results.push @adjective_sayings[current_adjective]
                                end
                            end
                        else
                            parse_belasan front_digit: front_digit, current_digit: current_digit, destination: results
                            results.push @adjective_sayings[current_adjective]
                        end                                        
                    end                  
                end
            end


            return results.join " "
        end

    end
end