package apis

import (
	"os"
	"strings"
)

const (
	terraformVersionTagEnv = "GO_LIB_GEN_TF_TERRAFORM_VERSION_TAG"
	providerVersionTagEnv  = "GO_LIB_GEN_TF_PROVIDER_VERSION_TAG"
)

func TerraformVersionTag() string {
	return os.Getenv(terraformVersionTagEnv)
}

func SetTerraformVersionTag(version string) error {
	err := os.Setenv(terraformVersionTagEnv, version)
	if err != nil {
		return err
	}
	return nil
}

func ProviderVersionTag() string {
	return os.Getenv(providerVersionTagEnv)
}

func SetProviderVersionTag(version string) error {
	err := os.Setenv(providerVersionTagEnv, version)
	if err != nil {
		return err
	}
	return nil
}

// CleanVersion returns version without prefixed `v`, e.g. from `v1.3.4` returns `1.3.4`
func CleanVersion(f func() string) string {
	v := f()
	if strings.HasPrefix(v, "v") {
		return v[1:]
	}
	return v
}
