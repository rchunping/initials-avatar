.PHONY: test install

fontFile=$(CURDIR)/resource/fonts/Hiragino_Sans_GB_W3.ttf
all: install

test:
	@AVATAR_FONT=$(fontFile) go test -v -race -cover  -covermode=count -coverprofile=coverage.out ./avatar
  
install:
	go get ./...
	go install github.com/holys/initials-avatar/cmd/avatar


