.PHONY: build run clean

PROGRAM_FILE=fixa
BUILD_DIR=build

build:
	@go build \
	 	-o ${BUILD_DIR}/${PROGRAM_FILE} \
		cmd/fixa/main.go

run: build
	@./${BUILD_DIR}/${PROGRAM_FILE}

clean:
	@go clean
	@rm -rf ${BUILD_DIR}
