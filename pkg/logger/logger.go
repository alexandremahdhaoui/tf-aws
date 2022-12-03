// Package logger uses `logrus` to provide a convenient defer-able log functions.
// Please note Panic usage is slightly different.
// Please note Fatal, Warn and Error are not exposed by this logger. Please directly use `logrus`
// usage: ```defer Debugf("verb", args []string{"yolo", "and another", "word will be logged"})```
package logger

import (
	"fmt"
	log "github.com/sirupsen/logrus"
	"strings"
)

const (
	space        = " "
	successfully = "successfully"
	failed       = "failed"

	past    = "ed"
	present = "ing"
)

type logrusFunc func(args ...interface{})
type successLogFunc func()
type failLogFunc func()

func Panic(e error, f failLogFunc) {
	if e != nil {
		f()
		log.Panic(e)
	}
}

func Info(verb, coord string, args ...string) (successLogFunc, failLogFunc) {
	return internalLog(verb, coord, cleanArgs(args), log.Infoln, log.Errorln)
}
func Debug(verb, coord string, args ...string) (successLogFunc, failLogFunc) {
	return internalLog(verb, coord, cleanArgs(args), log.Debugln, log.Errorln)
}

func Trace(verb, coord string, args ...string) (successLogFunc, failLogFunc) {
	return internalLog(verb, coord, cleanArgs(args), log.Traceln, log.Errorln)
}

func internalLog(verb, coord string, s string, success logrusFunc, fail logrusFunc) (successLogFunc, failLogFunc) {
	success(joinString(formatPresent(verb), coord, s))
	return func() {
			success(joinString(successfully, formatPast(verb), coord, s))
		}, func() {
			fail(joinString(failed, formatPresent(verb), coord, s))
		}
}

func formatPast(verb string) string {
	switch {
	case verb == "run":
		return "ran"
	case strings.HasSuffix(verb, "e"):
		verb = verb[:len(verb)-1]
	}
	return fmt.Sprintf("%s%s", verb, past)
}

func formatPresent(verb string) string {
	switch {
	case verb == "run":
		return "running"
	case strings.HasSuffix(verb, "e"):
		verb = verb[:len(verb)-1]
	}
	return fmt.Sprintf("%s%s", verb, present)
}

func cleanArgs(args []string) string {
	var sl []string
	for _, arg := range args {
		sl = append(sl, fmt.Sprintf("`%s`", arg))
	}
	return strings.Join(sl, " ")
}

func joinString(sl ...string) string {
	return strings.Join(sl, space)
}
