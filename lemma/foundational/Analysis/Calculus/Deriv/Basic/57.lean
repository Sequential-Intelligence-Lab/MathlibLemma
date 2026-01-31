import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivWithinAt.sub'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {s : Set 𝕜} {x : 𝕜}
    {f g : 𝕜 → 𝕜} {f' g' : 𝕜}
    (hf : HasDerivWithinAt f f' s x)
    (hg : HasDerivWithinAt g g' s x) :
    HasDerivWithinAt (fun y => f y - g y) (f' - g') s x := by
  have h_neg_g : HasDerivWithinAt (fun y => -g y) (-g') s x := by
    have h1 : HasDerivWithinAt (fun y : 𝕜 => -g y) (-g') s x := by
      -- Use the lemma that if g has a derivative g', then -g has the derivative -g'
      have h2 : HasDerivWithinAt g g' s x := hg
      -- Apply the negation rule for derivatives
      have h3 : HasDerivWithinAt (fun y : 𝕜 => -g y) (-g') s x := by
        convert HasDerivWithinAt.neg h2 using 1 <;> simp [neg_neg]
      exact h3
    exact h1
  
  have h_sum : HasDerivWithinAt (fun y => f y + (-g y)) (f' + (-g')) s x := by
    have h₁ : HasDerivWithinAt (fun y : 𝕜 => f y + (-g y)) (f' + (-g')) s x := by
      -- Use the fact that the derivative of the sum is the sum of the derivatives
      have h₂ : HasDerivWithinAt f f' s x := hf
      have h₃ : HasDerivWithinAt (fun y : 𝕜 => -g y) (-g') s x := h_neg_g
      -- Apply the addition rule for derivatives
      have h₄ : HasDerivWithinAt (fun y : 𝕜 => f y + (-g y)) (f' + (-g')) s x := HasDerivWithinAt.add h₂ h₃
      exact h₄
    exact h₁
  
  have h_main : HasDerivWithinAt (fun y => f y - g y) (f' - g') s x := by
    have h1 : (fun y : 𝕜 => f y - g y) = (fun y : 𝕜 => f y + (-g y)) := by
      funext y
      ring
    have h2 : f' - g' = f' + (-g') := by
      ring
    rw [h1] at *
    convert h_sum using 1
    <;> simp_all [h2]
    <;> ring_nf
    <;> norm_num
    <;> simp_all [sub_eq_add_neg]
    <;> ring_nf
    <;> norm_num
  
  exact h_main