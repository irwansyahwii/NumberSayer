# NumberSayer
Convert from number to Indonesian's (or any other language) text

## How To Use ##

It will default to spit out Indonesian if no language id specified.

``` ruby
sayer = NumberSayer.new
result = sayer.say 11101060020

#result will be sebelas milyar seratus satu juta enam puluh ribu dua puluh
```
To spit out English, you can pass :en

``` ruby
sayer = NumberSayer.new
result = sayer.say 11101060020, :en

#result will be eleven billion one hundred one million sixty thousand twenty
```

