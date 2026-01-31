import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivWithinAt.add_const'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {s : Set 𝕜} {f : 𝕜 → F} {f' : F} {x : 𝕜} (c : F)
    (hf : HasDerivWithinAt f f' s x) :
    HasDerivWithinAt (fun y => f y + c) f' s x := by
  -- Use the given derivative information for f
  have h := hf.add_const c
  -- Simplify the expression to match the form needed for the lemma
  simp only [add_zero] at h
  -- Conclude the proof by showing that the derivative of f + c is the same as f'
  exact h