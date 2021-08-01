# 14mhz-accelerator

This is 14MHz 68000 accelerator with 1MB fast ram and disable switch for the Amiga.
Tested on a rev. 5 Amiga 500. It might also work on other revisions and Amiga models but that has not been tested.
The design is licensed under CERN OHL-S V2.0

The design is a complete overhaul of a design by Livio Plos and Jorg Richter. Although based upon that design so much has been changed that it is almost like a new design.

Changes include:
* New clock doubler using an old school 4046 PLL to generate the 7MHz quadrature clock
This is more reliable than the RC delays in the original design. Alternatively the quadrature clock can
be taken from the motherboard. The latter has not been tested
* 3 input NOR's have been replaced by more common 2-input NOR's
In the process the basic design could be reduced to 4 IC's.
* some JK flipflops have been replaced by D latches.
* The E vs VMA/VPA timing has been improved for more robust write timing
* AS is now delayed before being fed to the motherboard fixing issues when the CPU does a chipset cycle after a CIA cycle.
* an optional 1Mb of zero waitstate Ranger RAM has been added to take full advantage of the 14MHz cpu.
* an optional reset timing based switch has been added to disable the ranger RAM upon boot.

## Variants
The accelerator can be build in 3 variant:
* Accelerator only
This only doubles the clock of the CPU to 14MHz. 
* Accelerator plus 1MB zero waitstate ranger RAM
The above but adds 1MB of fast RAM. This makes the accelerator about 2.7 times faster than a stock A500
* Accelerator plus 1MB zero waitstate ranger RAM plus disable circuit
The above but adds a timer based disable option for the RAM. By holdiing ctrl-amiga-amiga down for more 
than 5..6 seconds the RAM is disabled. It is enabled again on the next (less than 5..6 seconds) reset cycle

## Building hints
* use turned/machined pins only for the host connector!
The thick part is soldered on the accelerator, the thin part goes into the 68000 socket on the motherboard.
Makes sure to use the full length of the pins (only solder the tips in the accelerator board) so the accelerator sits above the Kickstart.
* an MC68HC000 (HCMOS version) is preferred as it uses less power and has better drive. This might also help with EPROM Kickstarts on a rev. 5 motherboard.
* The PLL might needs some tuning to provide a 50% dutycycle clock. 
Tuning is done by making the value of R3 slightly smaller or larger until testpoint J2 shows a nice
50% / 14MHZ clock signal. An oscilloscope works best here but alternatively a simple multimeter can be used to adjust the DC voltage
to read half the VCC value. (thus typically about 2.5V if VCC is **really** 5V)
* Alternatively the CDAC signal from the motherboard can be used. No tuning needed but untested at this point.

Here is a picture of the most basic variant (accelerator only) for reference purposes:
![Accelerator only](/pictures/accelerator_only.jpg)

And here a picture of what a complete build should look like:
![complete build](/pictures/complete.jpg)

Have fun!



