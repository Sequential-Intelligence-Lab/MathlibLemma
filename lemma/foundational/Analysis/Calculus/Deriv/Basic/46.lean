import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivAt.const_add'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (c : F) {f : 𝕜 → F} {f' : F} {x : 𝕜}
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun y => c + f y) f' x := by
  have h_const : HasDerivAt (fun y : 𝕜 => c) 0 x := by
    -- Prove that the constant function `c` has derivative `0` at `x`
    simpa using hasDerivAt_const x c
  
  have h_sum : HasDerivAt (fun y : 𝕜 => c + f y) (0 + f') x := by
    -- Use the fact that the derivative of the sum is the sum of the derivatives
    have h₁ : HasDerivAt (fun y : 𝕜 => c + f y) (0 + f') x := HasDerivAt.add h_const hf
    exact h₁
  
  have h_final : HasDerivAt (fun y : 𝕜 => c + f y) f' x := by
    -- Simplify `0 + f'` to `f'`
    convert h_sum using 1
    <;> simp [add_zero]
    <;>
    (try simp_all)
    <;>
    (try norm_num)
    <;>
    (try linarith)
  
  exact h_final