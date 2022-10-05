pushd .

REPO=tf-controller/aws-primitive-modules
PROVIDER_VERSION=v4.33.0

tmp_dir=$(mktemp -d -t ci-XXXXXXXXXX)
cd $tmp_dir

git clone https://github.com/${REPO}
cd aws-primitive-modules

TAG=$(git rev-parse --short HEAD)
SOURCE="$(git config --get remote.origin.url)"
REVISION="$(git branch --show-current)/$(git rev-parse HEAD)"

rm -rf .git || true
rm -rf .github || true
rm Makefile
rm *.sh
rm $(find . -name "README.md")

flux push artifact \
    oci://ghcr.io/${REPO}:$PROVIDER_VERSION-$TAG \
	--path="./" \
	--source=$SOURCE \
	--revision=$REVISION

flux tag artifact \
    oci://ghcr.io/${REPO}:$PROVIDER_VERSION-$TAG \
    --tag latest

flux tag artifact \
    oci://ghcr.io/${REPO}:$PROVIDER_VERSION-$TAG \
    --tag $PROVIDER_VERSION-$1

rm -rf $tmp_dir

popd
