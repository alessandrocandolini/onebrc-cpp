CXXFLAGS ?= -std=c++20 -O2 -Wall -Wextra -Wpedantic

.PHONY: all build run clean
all: build

build: build/hello_world

build/hello_world: src/main.cpp Makefile
	mkdir -p $(@D)
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) $< $(LDFLAGS) $(LDLIBS) -o $@

run: build/hello_world
	./build/hello_world

clean:
	rm -rf build
