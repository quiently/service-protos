GEN_AUTH_GO_PATH = ./gen/auth/go

.PHONY: go-auth
go-auth: 
	protoc -I proto proto/auth/*.proto \
	--go_out=${GEN_AUTH_GO_PATH}      --go_opt=paths=source_relative \
	--go-grpc_out=${GEN_AUTH_GO_PATH} --go-grpc_opt=paths=source_relative
