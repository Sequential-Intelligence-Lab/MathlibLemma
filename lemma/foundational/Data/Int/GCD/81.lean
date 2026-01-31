import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Int.exists_gcdB_eq_one_of_coprime (x y : ℤ) (h : Int.gcd x y = 1) :
    ∃ b, x * Int.gcdA x y + y * b = 1 := by
  have h_main : x * Int.gcdA x y + y * Int.gcdB x y = 1 := by
    have h₁ : x * Int.gcdA x y + y * Int.gcdB x y = Int.gcd x y := by
      -- Use the property of gcdA and gcdB to get the Bézout's identity
      have h₂ := Int.gcd_eq_gcd_ab x y
      linarith
    -- Substitute the given gcd condition into the identity
    rw [h₁]
    <;> simp [h]
    <;> norm_num
  
  have h_final : ∃ b, x * Int.gcdA x y + y * b = 1 := by
    refine' ⟨Int.gcdB x y, _⟩
    -- Use the main result to directly get the required equation
    linarith
  
  exact h_final