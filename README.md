# vb : vbyte encode / decode

[→ tests/main.rs](tests/main.rs)

```rust
#[test]
fn main() {
  let vbe = vb::e([254, 1, 3]);
  dbg!(&vbe);
  dbg!(vb::d(vbe).unwrap());
}
```


run

[→ out.txt](out.txt)

```txt
+ cargo test --all-features -- --nocapture
     Running tests/main.rs (target/debug/deps/main-65c7e4de979d0b09)
[tests/main.rs:4] &vbe = [
    254,
    1,
    1,
    3,
]
[tests/main.rs:5] vb::d(vbe).unwrap() = [
    254,
    1,
    3,
]
```

