#[test]
fn main() {
  let vbe = vb::e([123, 1, 3]);
  dbg!(&vbe);
  dbg!(vb::d(vbe).unwrap());
}
