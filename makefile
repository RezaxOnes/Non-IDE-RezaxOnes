# ==============================================================================
# CONFIGURATION
# ==============================================================================
# Make Sure You Using g++ 17 => g++ I I = (17 => ∞)

CXX       := g++
CXXFLAGS  := -std=c++17 -Wall -Wextra -O3 # -MMD -MP
TARGET    := NIRO

SRC_DIR   := src
BUILD_DIR := build


SRCS := $(wildcard $(SRC_DIR)/*.cpp)
OBJS := $(SRCS:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

# ==============================================================================
# TARGETS & RULES
# ==============================================================================


all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^
	@echo "Đã Linker thành công! (quá trình gộp file obj)"

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(dir $@)
	@echo "Đang biên dịch: $< -> $@"
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: all