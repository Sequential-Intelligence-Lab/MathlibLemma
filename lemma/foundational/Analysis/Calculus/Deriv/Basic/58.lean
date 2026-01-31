import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivAt.sub'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {x : 𝕜}
    {f g : 𝕜 → 𝕜} {f' g' : 𝕜}
    (hf : HasDerivAt f f' x)
    (hg : HasDerivAt g g' x) :
    HasDerivAt (fun y => f y - g y) (f' - g') x := by
  have h_neg_g : HasDerivAt (fun y => -g y) (-g') x := by
    -- Step 1: Derivative of -g is -g'
    have h1 : HasDerivAt (fun y => -g y) (-g') x := by
      -- Use the property of the derivative of a scalar multiple (here, scalar = -1)
      convert HasDerivAt.neg hg using 1 <;> simp [neg_mul]
    exact h1
  
  have h_sum : HasDerivAt (fun y => f y + (-g y)) (f' + (-g')) x := by
    -- Step 2: Derivative of f + (-g) is f' + (-g')
    have h2 : HasDerivAt (fun y => f y + (-g y)) (f' + (-g')) x := by
      -- Use the property of the derivative of the sum of two functions
      convert hf.add h_neg_g using 1 <;> simp [add_assoc]
    exact h2
  
  have h_main : HasDerivAt (fun y => f y - g y) (f' - g') x := by
    -- Step 3: Rewrite f + (-g) as f - g and f' + (-g') as f' - g'
    have h3 : (fun y => f y + (-g y)) = (fun y => f y - g y) := by
      funext y
      simp [sub_eq_add_neg]
    have h4 : (f' + (-g')) = (f' - g') := by
      simp [sub_eq_add_neg]
    -- Use the fact that the functions are equal to conclude the proof
    convert h_sum using 1
    · rw [h3]
    · rw [h4]
  
  exact h_main