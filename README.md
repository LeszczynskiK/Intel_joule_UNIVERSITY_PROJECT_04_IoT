# Zadania Raspberry_PI

Połączenie do płytek po ssh (w sieci lokalnej)  
  
  
Zadanie 1: Info o GPIO  
Sprawdzono status pinów GPIO komendą gpioinfo (np. "I2D SDA" nieużywane na linii 0).      
Pin status:: gpioinfo gpiochip0    
  
Zadanie 2: LED-y i temperatura    
Skrypt Bash włącza i wyłącza LED-y na pinach 20 i 21 co sekundę.    
Odczytano temperaturę z czujnika LM75 przez I2C (bus 1, adres 0x48) – wynik 0x18 (24°C).    
Skrypt temp2.sh wyświetla temperaturę co sekundę (np. "Temperature: 24°C").    
  
i2cdetect to list devices on I2C bus 1:: i2cdetect -y 1  
temperature read from LM75: i2cget -y 1 0x58 0x40 0x18  
  
Zadanie 3: Wyświetlacz 7-segmentowy    
Sterowanie wyświetlaczem 7-segmentowym na pinach: A:14, B:15, C:18, D:23, E:24, F:25, G:8, Enable:7.    
Skrypt zad3.sh pokazuje cyfrę "2" i czyści ekran; a nastepnie "5"    
    
Pliki    
led_toggle.sh – miganie LED-ami.    
temp2.sh – odczyt temperatury.    
zad3.sh – sterowanie wyświetlaczem.    

