# FM-2024



Usage
1. The modified IC3ref
To build:

IC3ref/minisat$ make
IC3ref/aiger$ ./configure.sh
IC3ref/aiger$ make
IC3ref$ make
To Run:

$ ./IC3 [-br][-rs] <AIGER_file.aig> <OUTPUT_PATH>
-br: enable branching heuristic
-rs: enable refer-skipping heuristic
