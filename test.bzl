
def _test_aspect_impl(target, ctx):
    ctx.toolchains["@test//:toolchain_type"]
    return []

test_aspect = aspect(
    implementation = _test_aspect_impl,
    attr_aspects = ["deps"],
    toolchains = ["@test//:toolchain_type"],
)

def _test_toolchain_impl(ctx):
    return platform_common.ToolchainInfo()

test_toolchain = rule(
    implementation = _test_toolchain_impl
)
