# Define targets
.PHONY: linux clean

# Run the linux.sh setup script
linux: clean
	./bin/linux.sh

# Run the cleanup.sh script
clean:
	./bin/cleanup.sh
