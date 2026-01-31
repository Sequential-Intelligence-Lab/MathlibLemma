import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivAt.neg'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : 𝕜 → F} {f' : F} {x : 𝕜}
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun y => - f y) (- f') x := by
  have h_main : HasDerivAt (fun y => -f y) (-f') x := by
    -- Use the existing lemma `HasDerivAt.neg` which directly gives the result.
    -- Since `NontriviallyNormedField` extends `NormedField`, we can use this lemma.
    have h1 : HasDerivAt (fun x : 𝕜 => -f x) (-f') x := by
      -- Apply the `neg` rule for derivatives.
      apply HasDerivAt.neg
      exact hf
    -- Convert the result to match the expected form.
    convert h1 using 1 <;> simp [neg_neg]
  -- The main result is already derived, so we just use it.
  exact h_main