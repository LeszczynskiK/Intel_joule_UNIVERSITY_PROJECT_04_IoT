# Intel_joule_UNIVERSITY_PROJECT_04_IoT

Projekt obejmuje:  
1. Sterowanie liniami GPIO z poziomu systemu Linux.  
2. Implementację sterowania GPIO w JavaScript oraz Pythonie przy użyciu biblioteki MRAA.  
3. Komunikację I2C między SBC (Intel Joule) a modułem dotykowym KA-MOD-TOUCH opartym na układzie Microchip/Atmel QT1060.  
  
  
Celem projektu jest praktyczne wykorzystanie linii GPIO w systemie Linux do sterowania urządzeniami peryferyjnymi,   
takimi jak diody LED, oraz realizacja komunikacji I2C w celu odczytu danych z układu sterownika dotykowego.  

Zakres projektu:
1. Sterowanie GPIO w terminalu Linux
- Konfiguracja linii GPIO w trybie wyjścia.
- Sterowanie diodami LED za pomocą komend systemowych (echo do /sys/class/gpio).
- Automatyczna zmiana stanu LED w pętli.
2. Sterowanie GPIO przy użyciu JavaScript i Pythona
- Wykorzystanie biblioteki MRAA do sterowania GPIO w JavaScript.
- Implementacja podobnej funkcjonalności w Pythonie.
- Naprzemienne włączanie i wyłączanie diod LED.
3. Komunikacja I2C w Pythonie
- Konfiguracja magistrali I2C.
- Odczyt stanów przycisków dotykowych z modułu KA-MOD-TOUCH (układ QT1060).
- Odczyt danych z rejestru Detection Status (0x04) i analiza wartości binarnych.
  
Sprzęt  
SBC: Intel Joule  
Moduł dotykowy: KA-MOD-TOUCH z układem Microchip/Atmel QT1060  
Diody LED: 4 sztuki podłączone do linii GPIO  

Połączenia:  
GPIO → Diody LED  
I2C → Moduł dotykowy  

System operacyjny: Linux  

Biblioteki:  
MRAA (do obsługi GPIO w JavaScript i Pythonie)    
smbus (do komunikacji I2C w Pythonie)    


