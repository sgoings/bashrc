if which go &> /dev/null; then
  case ${PLATFORM} in
    darwin)
      GOROOT=`brew --prefix go`
      ;;
    *)
      GOROOT=/usr/lib/go
      ;;
  esac

  export GOPATH=${HOME}/GoWorkspace
  path-append ${HOME}/GoWorkspace/bin
  path-append ${GOROOT}/bin
fi
