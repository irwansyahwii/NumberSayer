class NumberSayer
    def initialize
        @two_digits_parser = TwoDigitsParser.new
    end

    def say(number)
        
        return @two_digits_parser.say number
    end
end

class TwoDigitsParser
    attr_accessor :satuans

    def initialize
        @satuans = ["nol", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan"]    
        @adjective_sayings = {ratusan: "ratus", ribuan: "ribu", jutaan: "juta", milyaran: "milyar"}
    end

    def parse_belasan(param)        
        front_digit = param[:front_digit]
        current_digit = param[:current_digit]
        results = param[:destination]
        satuans = @satuans
        if front_digit == "1"
            if current_digit == "0" #10
                results.push "sepuluh"
            elsif current_digit == "1" #11
                results.push "sebelas"
            else # 12-19
                satuan = satuans[current_digit.to_i]
                results.push "#{satuan} belas"
            end
        else #20
            if front_digit != "0"
                puluhan = satuans[front_digit.to_i]
                results.push "#{puluhan} puluh"

                if current_digit != "0"
                    satuan = satuans[current_digit.to_i]
                    results.push satuan
                end
            end
        end        
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
            puts "number_s: #{number_s}"

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
                puts "i: #{i}, adj: #{digit_adjective[0]}, digit: #{digit_adjective[1]}"

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
                        results.push "seratus"
                    else
                        if current_digit != "0"
                            ratusan = @satuans[current_digit.to_i]
                            results.push "#{ratusan} ratus"
                        end
                    end
                end
                if current_adjective == :ribuan or current_adjective == :jutaan or current_adjective == :milyaran
                    has_puluhan = i > 0
                    if !has_puluhan
                        if current_digit == "1"
                            if current_adjective == :ribuan
                                results.push "seribu"
                            else
                                results.push "sejuta"
                            end
                        else
                            ribuan = @satuans[current_digit.to_i]
                            if current_adjective == :ribuan
                                results.push "#{ribuan} ribu"
                            else
                                results.push "#{ribuan} juta"
                            end
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