# VLSI_System_Design_ECE474

This repository contains completed assignments for VLSI system design. 

HW2:
- ALU capable of 11 operations.
- Obtained gate level details such as area used, list of synthesized components, and delay analysis

HW3:
- Compare the timing diagram of two Moore State machine using RTL and gatelevel analysis.
- Export gate diagram of both glitch and glitchless designs.

HW4:
- Designed a greatest common denominator (GCD) using Euclid's algorithm with 32-bit inputs and outputs. 

HW5:
- Designed a temperature averaging system that would be used to communicate with a probe orbiting the moon.
- Data was sent 1-bit at a time with the following structure: |Header|Temperature 1|Temperature 2|Temperature 3| Temperature 4|
- System must be capable of tossing or reading data based on header value.
- Output consisted of temperature average that will be written to RAM. Address starts at 0x07FF and decrements one at a time.
- The maximum number of the synthesized netlist is less than 1000.

HW6:
- Collects code coverage of a GCD module.
- Testbench created to monitor module behavior.
- Results were written to report files.
- Random number generation used to test code coverage.

HW7:
- Performed functional coverage by defining covergroupts and coverpoints to test module requirements.

HW8:
- Performed Formal Property Verification on the same GCD in HW 7.
- Adjusted testbench to ensure all state transitions have been reached.
- Implemented formal assertions to monitor output values.
- Debugged module to corect counter examples generated by FPV tool.
