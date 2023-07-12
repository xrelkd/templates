# C++ Template

# Usage

Generate build system in directory `build`

```bash
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DENABLE_SCCACHE=ON -DCMAKE_BUILD_TYPE=Debug -Bbuild
```

Build

```bash
cmake --build build
```

Run `clang-tidy`

```bash
run-clang-tidy -p build
```

# References

- [Lectem/cpp-boilerplate](https://github.com/Lectem/cpp-boilerplate/)
- [nixvital/nix-based-cpp-starterkit](https://github.com/nixvital/nix-based-cpp-starterkit/)
