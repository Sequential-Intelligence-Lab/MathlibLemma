import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Int.exists_gcdA_eq_one_of_coprime (x y : ℤ) (h : Int.gcd x y = 1) :
    ∃ a, x * a + y * Int.gcdB x y = 1 := by
  have h_main : x * Int.gcdA x y + y * Int.gcdB x y = 1 := by
    have h₁ : x * Int.gcdA x y + y * Int.gcdB x y = Int.gcd x y := by
      rw [← Int.gcd_eq_gcd_ab x y]
    rw [h₁]
    <;> simp [h]
  
  have h_final : ∃ a, x * a + y * Int.gcdB x y = 1 := by
    refine' ⟨Int.gcdA x y, _⟩
    -- Use the previously derived equation to directly get the result
    linarith
  
  exact h_final