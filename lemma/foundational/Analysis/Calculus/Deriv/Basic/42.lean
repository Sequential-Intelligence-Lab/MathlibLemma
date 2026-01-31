import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivAt.add_const'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : 𝕜 → F} {f' : F} {x : 𝕜} (c : F)
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun y => f y + c) f' x := by
  have h_const : HasDerivAt (fun _ : 𝕜 => c) 0 x := by
    simpa using hasDerivAt_const x c
  
  have h_sum : HasDerivAt (fun y => f y + c) (f' + 0) x := by
    have h1 : HasDerivAt (fun y : 𝕜 => f y + c) (f' + 0) x := by
      -- Apply the sum rule for derivatives
      have h2 : HasDerivAt (fun y : 𝕜 => f y + c) (f' + 0) x := by
        convert hf.add h_const using 1 <;> simp [add_assoc]
      exact h2
    exact h1
  
  have h_final : HasDerivAt (fun y => f y + c) f' x := by
    convert h_sum using 1 <;> simp [add_zero]
  
  exact h_final