### Compilation failed:

error: :4:1 error: structures must have at least one member
struct FSOut {
^^^^^^


struct FSIn {
  @builtin(front_facing) sk_Clockwise: bool,
};
struct FSOut {
};
fn foo_ff(_skParam0: array<f32, 2>) -> f32 {
  var v = _skParam0;
  {
    v[0] = v[1];
    return v[0];
  }
}
fn main() {
  {
    var y: array<f32, 2>;
    let _skTemp0 = foo_ff(y);
  }
}
@fragment fn fragmentMain(_stageIn: FSIn) -> FSOut {
  var _stageOut: FSOut;
  main();
  return _stageOut;
}

1 error