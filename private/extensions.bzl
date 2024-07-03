"""Extension Macros"""

load("//private:repositories.bzl", "rules_antlr_fetch", "rules_antlr_transitive_deps")

def _non_bzlmod_dependencies_impl(_ctx):
    rules_antlr_fetch()
    rules_antlr_transitive_deps()

non_bzlmod_dependencies = module_extension(
    implementation = _non_bzlmod_dependencies_impl,
)
