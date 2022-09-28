pushd .

REPO=tf-controller/aws-primitive-modules

tmp_dir=$(mktemp -d -t ci-XXXXXXXXXX)
cd $tmp_dir

git clone https://github.com/${REPO}
cd aws_iam_policy

TAG=$(git rev-parse --short HEAD)
SOURCE="$(git config --get remote.origin.url)"
REVISION="$(git branch --show-current)/$(git rev-parse HEAD)"

rm -rf .git
rm Makefile
rm *.sh

flux push artifact \
    oci://ghcr.io/${REPO}/module:$TAG \
	--path="./" \
	--source=$SOURCE \
	--revision=$REVISION

flux tag artifact \
    oci://ghcr.io/${REPO}/module:$TAG \
    --tag latest

flux tag artifact \
    oci://ghcr.io/${REPO}/module:$TAG \
    --tag $1

rm -rf $tmp_dir

popd
