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



running 1 test
test main ... ok

test result: ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s


running 0 tests

test result: ok. 0 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s
```

