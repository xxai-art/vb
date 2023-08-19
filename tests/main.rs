#[test]
fn main() {
  let vbe = vb::e([9876543210, 1, 3]);
  dbg!(&vbe);
  dbg!(vb::d(vbe).unwrap());
}
