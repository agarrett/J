   F=. <'j/temp/waveSeismicSample.txt'
   
   slurp =: {{ > 0 ". each cutopen toJ 1!:1 y }}
   
   trace=. slurp F
   
   'title SEISMIC trace - SEGY; xcaption Samples (time); ycaption Signal (magnitude); text 825 125 @AlexGarrett; itemcolor DARKBLUE' plot trace

