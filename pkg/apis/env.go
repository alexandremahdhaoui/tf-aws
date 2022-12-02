package apis

import (
	log "github.com/sirupsen/logrus"
	"os"
	"strings"
)

const (
	terraformVersionTagEnv = "GO_LIB_GEN_TF_TERRAFORM_VERSION_TAG"
	providerVersionTagEnv  = "GO_LIB_GEN_TF_PROVIDER_VERSION_TAG"
)

func TerraformVersionTag() string {
	v := os.Getenv(terraformVersionTagEnv)
	log.Debugf("getting env `%s`: `%s`", terraformVersionTagEnv, v)
	return v
}

func SetTerraformVersionTag(version string) error {
	log.Debugf("setting env `%s`: `%s`", terraformVersionTagEnv, version)
	err := os.Setenv(terraformVersionTagEnv, version)
	if err != nil {
		return err
	}
	return nil
}

func ProviderVersionTag() string {
	v := os.Getenv(providerVersionTagEnv)
	log.Debugf("getting env `%s`: `%s`", providerVersionTagEnv, v)
	return v
}

func SetProviderVersionTag(version string) error {
	log.Debugf("setting env `%s`: `%s`", providerVersionTagEnv, version)
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
