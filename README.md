#4-bit Comparator (Verilog)

This project implements a 4-bit digital comparator in Verilog HDL. It compares two 4-bit binary numbers (`A` and `B`) and outputs whether:
- `A > B`
- `A == B`
- `A < B`

## Module Description

### Inputs:
- `A [3:0]`: 4-bit input number
- `B [3:0]`: 4-bit input number

### Outputs:
- `A_greater`: High (1) if A > B
- `A_equal`: High (1) if A == B
- `A_less`: High (1) if A < B

### Logic Used:
The comparison is done using **continuous assignment** with Verilog operators:
```verilog
assign A_greater = (A > B);
assign A_equal   = (A == B);
assign A_less    = (A < B);
![image](https://github.com/user-attachments/assets/e0935c06-22ba-4d78-9a7a-c51e143fa77c)

