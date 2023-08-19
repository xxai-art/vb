use thiserror::Error;

#[derive(Error, Debug)]
pub enum Error {
  #[error("vbyte decode error : {0}")]
  VbyteDecode(String),
}

pub fn e(vs: &[u64]) -> Vec<u8> {
  vbyte::compress_list(vs)
}

pub fn d(vs: &[u8]) -> Result<Vec<u64>, Error> {
  match vbyte::decompress_list(vs) {
    Ok(r) => Ok(r),
    Err(err) => Err(Error::VbyteDecode(err.to_string())),
  }
}
