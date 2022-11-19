package apis

import "fmt"

const ApiVersionTemplate = "aws.terraform.alexandre.mahdhaoui.com/%s"
const CurrentVersion = "v0.1.0"

func ApiVersion() string {
	return fmt.Sprintf(ApiVersionTemplate, CurrentVersion)
}
