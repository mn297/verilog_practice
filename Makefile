COMPILER := iverilog
SIMULATOR := vvp
VIEWER := gtkwave

SRC_counter := counter.v counter_tb.v
SRC_adder := adder.v adder_tb.v

# SRCS := $(shell find $(SRC_counter) -name '*.v' -or -name '*.c' -or -name '*.s')


counter:$(SRC_counter)
	$(COMPILER) -o $@ $^

adder:$(SRC_adder)
	$(COMPILER) -o $@ $^

sim_adder:adder
	$(SIMULATOR) $^ -lxt2
	



