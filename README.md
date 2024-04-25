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
$ ./IC3 [-sc][-acc] < <AIGER_file> 
```

- -sc: enable safe sub-cube derivation
- -acc: enable assuption-core consistency

### 2. Modelchecker

To build:

```
./rebulid.sh
make clean
make -j
```

To Run:

```
$ ./modelchecker <AIGER_file> [-sc][-acc]
```
- -sc: enable safe sub-cube derivation
- -acc: enable assuption-core consistency
