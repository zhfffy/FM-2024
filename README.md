# FM-2024

Artifacts of the paper 
  *Accelerating IC3 via Generalization Refinements*

## Usage
---
### 1. Modified IC3ref 

To build:

```
IC3ref/minisat$ make
IC3ref$ make
```

To Run:

```
$ ./IC3 [-pc][-acc] < <AIGER_file> 
```

- -pc: enable push-success
- -acc: enable assuption-core consistency

### 2. Modelchecker

To build:

```
./rebulid.sh
make -j
```

To Run:

```
$ ./modelchecker [-pc][-acc] <AIGER_file> 
```
- -pc: enable push-success
- -acc: enable assuption-core consistency
