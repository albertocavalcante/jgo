"""Repositories Macros"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")

def rules_antlr_fetch():
    """Fetches the rules_antlr repository and its dependencies.

    They have been manually cherry-picked from:

     * https://github.com/marcohu/rules_antlr/blob/89a29cca479363a5aee53e203719510bdc6be6ff/docs/setup.md?plain=1#L81

    """
    http_archive(
        name = "rules_antlr",
        sha256 = "26e6a83c665cf6c1093b628b3a749071322f0f70305d12ede30909695ed85591",
        strip_prefix = "rules_antlr-0.5.0",
        urls = ["https://github.com/marcohu/rules_antlr/archive/0.5.0.tar.gz"],
    )

    http_jar(
        name = "javax_json",
        url = "https://jcenter.bintray.com/org/glassfish/javax.json/1.0.4/javax.json-1.0.4.jar",
        sha256 = "0e1dec40a1ede965941251eda968aeee052cc4f50378bc316cc48e8159bdbeb4",
    )

    http_jar(
        name = "stringtemplate4",
        url = "https://jcenter.bintray.com/org/antlr/ST4/4.0.8/ST4-4.0.8.jar",
        sha256 = "58caabc40c9f74b0b5993fd868e0f64a50c0759094e6a251aaafad98edfc7a3b",
    )

    http_jar(
        name = "antlr3_runtime",
        url = "https://jcenter.bintray.com/org/antlr/antlr-runtime/3.5.2/antlr-runtime-3.5.2.jar",
        sha256 = "ce3fc8ecb10f39e9a3cddcbb2ce350d272d9cd3d0b1e18e6fe73c3b9389c8734",
    )

    http_jar(
        name = "antlr4_runtime",
        url = "https://jcenter.bintray.com/org/antlr/antlr4-runtime/4.7/antlr4-runtime-4.7.jar",
        sha256 = "2a61943f803bbd1d0e02dffd19b92a418f83340c994346809e3b51e2231aa6c0",
    )

    http_jar(
        name = "antlr4_tool",
        url = "https://jcenter.bintray.com/org/antlr/antlr4/4.7/antlr4-4.7.jar",
        sha256 = "7867257028b3373af011dee7b6ce9b587a8fd5c7a0b25f68b2ff4cb90be8aa07",
    )
