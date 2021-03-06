#! /bin/sh

BASE_URL=http://beta.unity3d.com/download
HASH=0c3a6a294e34
VERSION=2017.2.0p4

download() {
  file=$1
  url="$BASE_URL/$HASH/$package"

  echo "Downloading from $url: "
  curl -o `basename "$package"` "$url"
}

install() {
  package=$1
  download "$package"

  echo "Installing "`basename "$package"`
  sudo installer -dumplog -package `basename "$package"` -target /
}

# See $BASE_URL/$HASH/unity-$VERSION-$PLATFORM.ini for complete list
# of available packages, where PLATFORM is `osx` or `win`
# https://beta.unity3d.com/download/0c3a6a294e34/unity-2017.2.0p4-osx.ini

install "MacEditorInstaller/Unity-$VERSION.pkg"
install "MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-$VERSION.pkg"
install "MacMonoDevelopInstaller/UnityMonoDevelop.pkg"
