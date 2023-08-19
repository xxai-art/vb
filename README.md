# vb : vbyte encode / decode

[→ tests/main.rs](tests/main.rs)

```rust
#[test]
fn main() {
  let vbe = vb::e([123, 1, 3]);
  dbg!(&vbe);
  dbg!(vb::d(vbe).unwrap());
}
```


run

[→ out.txt](out.txt)

```txt
+ cargo test --all-features -- --nocapture
     Running tests/main.rs (target/debug/deps/main-f20b54c7b6ae64a3)
[tests/main.rs:4] &vbe = [
    123,
    1,
    3,
]
[tests/main.rs:5] vb::d(vbe).unwrap() = [
    123,
    1,
    3,
]
```

