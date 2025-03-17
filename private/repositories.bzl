"""Repositories Macros"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rules_antlr_fetch():
    """Fetches rules_antlr."""
    http_archive(
        name = "rules_antlr",
        sha256 = "67d9938ac2f811bf6357c35f8ee43f2b229ef93d6756dabf6d2986ceaf757598",
        strip_prefix = "rules_antlr-0.6.0",
        urls = ["https://github.com/albertocavalcante/rules_antlr/releases/download/0.6.0/rules_antlr-0.6.0.tar.gz"],
    )
