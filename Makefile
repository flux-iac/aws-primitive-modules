.PHONY: publish-oci
publish-oci:
	bash -x ./publish-oci.sh v1

.PHONY: init
init:
	terraform init
	rm -rf .terraform
