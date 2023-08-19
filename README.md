# vb : vbyte encode / decode

[→ tests/main.rs](tests/main.rs)

```rust
#[test]
fn main() {
  let vbe = vb::e([9876543210, 1, 3]);
  dbg!(&vbe);
  dbg!(vb::d(vbe).unwrap());
}
```


run

[→ out.txt](out.txt)

```txt
+ cargo test --all-features -- --nocapture
     Running tests/main.rs (target/debug/deps/main-b9bb62e9657d6be0)
[tests/main.rs:4] &vbe = [
    234,
    173,
    192,
    229,
    36,
    1,
    3,
]
[tests/main.rs:5] vb::d(vbe).unwrap() = [
    9876543210,
    1,
    3,
]
```

