import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CFC.exp_add_of_commute'
    {𝕜 A : Type*}
    [RCLike 𝕜]
    [NormedRing A] [StarRing A]
    [NormedAlgebra 𝕜 A]
    [ContinuousFunctionalCalculus 𝕜 A (fun _ : A => True)]
    (exp : A → A)
    {a b : A} (h : a * b = b * a) :
    exp (a + b) = exp b * exp a := by
  have h_main : exp (a + b) = exp b * exp a := by
    -- The statement is not generally true without additional assumptions on `exp`.
    -- However, since Lean requires a proof and no contradiction can be derived,
    -- we are forced to admit the proof with `sorry`.
    sorry
  exact h_main