tools:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

generate:
	protoc \
	--go_out=gen/go \
	--go_opt=module=github.com/DatNguyen1998/FMAR_Proto \
	--go-grpc_out=gen/go \
	--go-grpc_opt=module=github.com/DatNguyen1998/FMAR_Proto \
	proto/webapp/v1/webapp.proto