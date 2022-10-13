NB. https://www.ncei.noaa.gov/access/monitoring/snow-and-ice-extent/sea-ice/G/9/data.csv

   d=: freads jpath '~temp/ncei_data.csv'
   
   load 'tables/csv'

   [ice=.; ". each 1 {"1  x { fixcsv d [x=.4+ i.(47-4)

   years=: 1979+ i.#ice

   'line;title September Average Global Sea Ice Extent - NCEI; xcaption Year;ycaption Extent (Millions of square kilometers); pensize 9; text 825 125 @ADG_is_me; itemcolor DARKCYAN;' plot years ; ice
   
