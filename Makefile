BZL = bazelisk

gazelle:
	$(BZL) run //:gazelle -- -from_file go/test/go.mod
	$(BZL) run //:gazelle -- update-repos -from_file go/test/go.mod -to_macro deps.bzl%go_deps

go-test:
	$(BZL) run //go/test:test
