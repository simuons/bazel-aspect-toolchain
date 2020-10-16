`bazel build //:test --aspects test.bzl%test_aspect` fails with

```
Error: In aspect //:test.bzl%test_aspect applied to proto_library rule @bazel_tools//src/main/protobuf:worker_protocol_proto, 
toolchain type @test//:toolchain_type was requested but only types [//:toolchain_type] are configured
```
