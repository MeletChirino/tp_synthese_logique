GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) -fexplicit --ieee=synopsys counter.vhd counter_tb.vhdl
	@$(GHDL) -e $(FLAGS) -fexplicit --ieee=synopsys tb
	@$(GHDL) -r $(FLAGS) -fexplicit --ieee=synopsys tb --stats --wave=wave.ghw --stop-time=100ns
