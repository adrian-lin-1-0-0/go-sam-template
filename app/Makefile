go-build-param=GOARCH=arm64 GOOS=linux
go-build=go build

build-%:
	$(go-build-param) $(go-build) -o ./bootstrap cmd/$*/main.go
	cp ./bootstrap $(ARTIFACTS_DIR)/.