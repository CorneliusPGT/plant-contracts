# plant-contracts/Makefile

.PHONY: gen

gen:
	protoc \
		--proto_path=proto \
		--go_out=gen \
		--go_opt=paths=source_relative \
		--go-grpc_out=gen \
		--go-grpc_opt=paths=source_relative \
		payment/payment.proto

# когда добавишь inventory:
# inventory/inventory.proto