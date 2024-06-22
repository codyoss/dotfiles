########################################################################################################
#                                       Exporting to Path                                              #
########################################################################################################

export PATH=$HOME:$PATH
export PATH=$HOME/bin:$PATH

########################################################################################################
#                                     Environment Variables                                             #
########################################################################################################
export GOOGLE_APPLICATION_CREDENTIALS=TODO

########################################################################################################
# 					Souce some stuff					                                               #
########################################################################################################
source $HOME/.cargo/env
source $HOME/.bash_alias

########################################################################################################
# 					Functions       					                                               #
########################################################################################################

scratch() {
    cd ~/scratch
    mkdir $1
    cd $1
    go mod init example.com/$1
    echo -e 'package main

import (
    "context"
    "log/slog"
    "os"
)

func main() {
    if err := run(); err != nil {
        slog.Error("shutting down", "err", err)
        os.Exit(1)
    }
}

func run() error {
    ctx := context.Background()
    
    
    return nil
}
' >main.go
    code .
}

tidyall() {
    find . -name go.mod -execdir go mod tidy \;
}

goupgrade() {
    go get $(go list -f '{{if not (or .Main .Indirect)}}{{.Path}}{{end}}' -m all)
}
