#!/bin/zsh

packages=(
	"golang.org/x/tools/gopls@latest"
	"github.com/99designs/gqlgen@latest"
	"github.com/deepmap/oapi-codegen/cmd/oapi-codegen@latest"
	"github.com/volatiletech/sqlboiler/v4@latest"
	"github.com/volatiletech/sqlboiler/v4/drivers/sqlboiler-mysql@latest"
	"github.com/volatiletech/sqlboiler/v4/drivers/sqlboiler-psql@latest"
	"google.golang.org/protobuf/cmd/protoc-gen-go@latest"
	"google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest"
	"connectrpc.com/connect/cmd/protoc-gen-connect-go@latest"
	"entgo.io/ent/cmd/ent@latest"
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
