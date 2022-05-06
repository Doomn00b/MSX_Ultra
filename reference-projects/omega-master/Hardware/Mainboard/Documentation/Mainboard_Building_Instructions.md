# Omega Home Computer - Main Board Building Instructions

[Lea este documento en español](Mainboard_Building_Instructions_es.md)

## Prerequisites

### Tools, Equipment, and Supplies

* Soldering iron with a fine tip. Temperature controlled soldering station is recommended
* Needle nose pliers for forming components' leads
* Small side cutters for cutting components' leads
* Universal programmer capable of programming SST39F040 Flash ROM ICs and ATF16V8B SPLDs. For example, MiniPro TL866CS or MiniPro TL866A
* Multimeter with frequency measurement, an oscilloscope, or a logic analyzer can be beneficial for troubleshooting
* Desk lamp, magnifying glass
* Small flat and Philips screwdrivers
* Solder suitable for soldering electronics. For example: rosin core Sn63/Pb37, Sn60/Pb40, or a lead-free solder such as Sn96.5/Ag3.0/Cu0.5 (sometimes referred to as SAC305)
* Solder wick for removing excess of solder
* 99% Isopropyl Alcohol for removing the excess of flux after soldering
* Lint free wipes, used toothbrush, cotton swabs for cleaning the PCB before and after soldering

### Parts

#### Procuring Parts
The list of parts provided in the [Bill of Materials](Mainboard.md#bill-of-materials) section of the [Mainboard.md](Mainboard.md) file. It also provides the recommended sources for the parts.
Most of the parts are available from electronic components distributors such as [Mouser](https://www.mouser.com/ProjectManager/ProjectDetail.aspx?AccessID=11fd34d22c) and [Digi-Key](https://www.digikey.com).
Some older out of production parts are available on eBay and from Chinese electronic components recyclers and resellers.

The Omega PCBs are provided by the members of [RetroBrew Computers group](https://www.retrobrewcomputers.org/doku.php?id=boardinventory#omega_home_computer_project_sergey_kiselev).
Alternatively they can be ordered from a PCB manufacturing service using [Gerber](Mainboard/gerber) or [KiCad](Mainboard/KiCad) files provided in this GitHub repository.

#### Parts Replacement

* The recommended logic family is the Advanced High-Speed CMOS with TTL compatible inputs 74AHCT-series
  * The exception is the slot buffers and transceivers, where 74F-series should be used
  * Possible replacement for 74AHCT-series is High-Speed CMOS 74HCT-series logic
  * 74ALS, 74F, and 74LS series logic might work as well, but have not been tested
* The recommended CPU is the CMOS Z80 variant - Z84C00. Any frequency would work.
  * It might be possible to use NMOS Z80, but it has not been tested
* The recommended SPLD is Atmel ATF16V8B. It can be replaced with Lattice GAL16V8D or similar
  * Make sure that your programmer supports the SPLD type you're planning to use
* The recommended Flash ROM part is Microchip SST39SF040
  * Other 512 KiB or 256 KiB, 5V-only Flash ROM ICs can be used, for example SST39SF020A, AMD Am29F040B
* The recommended SRAM part is Alliance Memory AS6C4008-55PCN
  * Other 512 KiB, TTL compatible SRAM ICs should work, for example Hitachi HM628512, BSI BS62LV4006PC
* It is recommended to use ceramic multilayer capacitors with 5 mm lead pitch
  * It is possible to use 2.5 mm lead pitch or axial capacitors by forming their leads accordingly
  * Electrolytic or tantalum capacitors can be used for C18-C20 10 uF. Make sure to observe the polarity in this case

#### Optional Components

* To be completed

### Other Components Required to Build Functional Computer System

* [Omega Keyboard](Keyboard.md)
* Power supply - 5V regulated power supply with barrel type connector. Or 5V/+12V/-12V power supply if 12V/-12V are desired on the extension slots
* Firmware and software to install and run on the system
  * C-BIOS or MSX2 BIOS
  * MSX-DOS
  * Games

## Building the Omega Mainboard

### Build Sequence

1. Inspect the PCB for obvious defects, such as deep scratches or short-circuits between traces
2. Clean the PCB with an alcohol wipe
3. Solder the components, going from lower profile components to higher profile ones
  * Form the leads and solder the D1 diode. Pay attention to the diode's polarity (the black band on the diode should match the band on the silkscreen)
  * Solder resistors
  * Solder inductors
  * Solder crystal oscillators. Start with 32768 Hz X2 crystal oscillator. Secure it with a piece of wire (e.g. cut resistor lead), solder that piece of wire to the crystal's case.
  * Solder resistor arrays. Pay attention to the orientation - pin number 1 is usually marked with a dot on the resistor array. Square pads on the PCB are used to mark the first pin
  * Solder ceramic capacitors
  * Solder all the DIP sockets. Pay close attention to the orientation of the sockets
  * Solder transistors
  * Solder the jumpers and headers.
  * Solder keyboard connector
  * Solder the F1 polyfuse
  * Solder the S-Video Mini DIN connector
  * Solder the Composite Video and the Audio RCA jacks 
  * Solder the extension slot PCB edge connectors
  * Solder the printer connector
  * Solder electrolytic capacitors. Pay attention to the capacitors' polarity
  * Solder the cassette recorder and the RGB DIN connectors
4. Carefully inspect all the solder joints. Re-solder if needed. Optionally use a multimeter to check the board for short-circuits, and for the power supply signals connectivity
5. Clean the board using cotton swaps, wipes, and the toothbrush soaked in alcohol
6. Program the Flash ROM with the BIOS image (Todo: Add image instructions)
7. Program the SPLDs with the [fuse maps](Mainboard/SPLD)
8. Carefully install ICs into the sockets. Use a hard non-static surface to bend the pins of ICs in DIP packages as needed. Double check the orientation of the ICs. Make sure that all ICs pins are inserted into the sockets, and not bent.
9. Inspect the completed board once again
10. Install the configuration jumpers. Refer to the [Jumpers](Mainboard.md#jumpers) section of the [Mainboard.md](Mainboard.md) file
11. Connect the keyboard PCB
12. Connect the display or TV and the power supply
13. Turn on the power, test the board, run your favorite software, and enjoy!

## Troubleshooting Tips

* Inspect your board for any soldering issues
* Check the jumpers settings
* Make sure that your system is getting the power, and that power supply voltage is within 5% range of the nominal voltage (5 V)
* Start troubleshooting using C-BIOS image first. Once C-BIOS boots, proceed with MSX2 BIOS
  * C-BIOS will initialize the VDP (and show an error message) even the SRAM is not installed or if components related to SRAM are not working.
  * C-BIOS does not access the RTC, and will boot and work even if the RTC IC (U5 RP5C01) is not installed or defective.
* Observe the system activity
  * Does it produce any picture?
    * Does your display or TV show "no signal" message? In this case VDP is not being initialized correctly, or there is an issue with the NTSC/PAL encoder U47 (CXA1645). Check VDP output and U47 input signals.
    * Does your display show that NTSC or PAL input has been detected, yet the screen is black? If using MSX2 BIOS, this likely means that the CPU can't access the RTC IC U5 (RP5C01). Try using C-BIOS instead. It doesn't access RTC, and should work in this case.
  * Using multimeter with the frequency measurement function or an oscilloscope check key CPU and VDP signals:
    * CLK signal on U3 (VDP), pin 8. It should be a 3.579545 MHz square wave signal
    * CLK signal on U1 (CPU), pin 6. It should be a 3.579545 MHz square wave signal
    * A0 signal on U1 (CPU), pin 30. This is a good indicator of CPU activity. There should be a few hundred kHz pulses
    * /RD and /WR signals on U1 (Z80 CPU), pins 21 and 22 respectively. These signals are also a good indicator of CPU activity. There should be a few hundred kHz pulses
    * /MEM_RD signal on U26, pin 1. This signal generated (goes low) every time CPU fetches data from memory. There should be a few hundred kHz pulses
    * /ROM_CS and /RAM0_CS signals on U6 (Flash ROM) pin 22, and U7 (SRAM) pin 22 respectively. These signals go low every time CPU accesses Flash ROM or SRAM. 
    * CSYNC signal on U3 (VDP), pin 6. It should be 15.734 kHz signal for NTSC	15.625 kHz for PAL.
    * SYNCIN signal on U47, pin 10. It should be 15.734 kHz signal for NTSC	15.625 kHz for PAL.
    * SCIN signal on U47, pin 6. It should be 3.579545 MHz for NTSC and	4.433618 MHz for PAL.
    * RED, GREEN, and BLUE signals on U3 (VDP), pins 23, 22, and 24 respectively.
    
