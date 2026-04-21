tools:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

generate:
	protoc --go_out=paths=source_relative:gen/go --go-grpc_out=paths=source_relative:gen/go proto/webapp/v1/webapp.proto