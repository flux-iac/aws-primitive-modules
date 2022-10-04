PUB_VER := "v1alpha1"

.PHONY: publish-oci
publish-oci:
	bash -x ./publish-oci.sh $(PUB_VER)

.PHONY: init
init:
	terraform init
	rm -rf .terraform
