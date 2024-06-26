#!/bin/zsh

packages=(
	"golang.org/x/tools/gopls@latest"
	"golang.org/x/tools/cmd/goimports@latest"
	"go.uber.org/mock/mockgen@latest"
	"github.com/99designs/gqlgen@latest"
	"google.golang.org/protobuf/cmd/protoc-gen-go@latest"
	"google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest"
	"connectrpc.com/connect/cmd/protoc-gen-connect-go@latest"
)

for package in "${packages[@]}"; do
	echo "Installing $package"
	go install "$package"
	if [ $? -eq 0 ]; then
		echo "Installed $package successfully"
	else
		echo "Failed to install $package"
	fi
done
