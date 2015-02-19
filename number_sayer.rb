require './supporting_classes/parse_belasan_indonesia'
require './supporting_classes/parse_belasan_english'
require './supporting_classes/digits_parser'

class NumberSayer

    def initialize
        @two_digits_parser = DigitsParser.new

        @satuans_id = ["nol", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan"]    
        @adjective_sayings_id = {puluh: "puluh", belas: "belas", ratusan: "ratus", ribuan: "ribu", jutaan: "juta", milyaran: "milyar"}
        @anomalies_id = {a10: "sepuluh", a11: "sebelas", a100:"seratus", a1rb: "seribu", a1jt: "sejuta", a1M:"semilyar"}
        @belasan_parser_id = ParseBelasanIndonesia.new @satuans_id, @anomalies_id, @adjective_sayings_id

        @satuans_en = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]    
        @adjective_sayings_en = {ratusan: "hundred", ribuan: "thousand", jutaan: "million", milyaran: "billion"}
        @anomalies_en = {a10: "ten", a11: "eleven", a12: "twelve", a13:"thirteen", a14:"fourteen", a15:"fifteen", 
            a16: "sixteen", a17:"seventeen", a18: "eighteen", a19:"nineteen", 
            a20: "twenty", a30: "thirty", a40: "fourty", a50: "fifty", a60: "sixty", a70: "seventy", a80:"eighty", a90:"ninety",
            a100:"one hundred", a1rb: "one thousand", a1jt: "one million", a1M:"one billion"}
        @belasan_parser_en = ParseBelasanEnglish.new @satuans_en, @anomalies_en, @adjective_sayings_en
    end

    def say(number, language = :id)
        if language == :id
            @two_digits_parser.satuans = @satuans_id
            @two_digits_parser.adjective_sayings = @adjective_sayings_id
            @two_digits_parser.anomalies = @anomalies_id
            @two_digits_parser.belasan_parser = @belasan_parser_id
            return @two_digits_parser.say number
        elsif language == :en
            @two_digits_parser.satuans = @satuans_en
            @two_digits_parser.adjective_sayings = @adjective_sayings_en
            @two_digits_parser.anomalies = @anomalies_en
            @two_digits_parser.belasan_parser = @belasan_parser_en
            return @two_digits_parser.say number
        else
            raise "Unknown language"            
        end
    end
end


