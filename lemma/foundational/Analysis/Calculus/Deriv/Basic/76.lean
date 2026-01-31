import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open Complex

theorem HasDerivAt.log'
    {f : ℂ → ℂ} {f' : ℂ} {x : ℂ}
    (hf : HasDerivAt f f' x)
    (hx : f x ≠ 0) :
    HasDerivAt (fun y => Complex.log (f y)) (f' / f x) x := by
  sorry