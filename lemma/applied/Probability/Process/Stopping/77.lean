import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma stoppedProcess_nat_zero
  {Ω β : Type*}
  (u : ℕ → Ω → β) (τ : Ω → ℕ∞) :
  MeasureTheory.stoppedProcess u τ 0 = u 0 := by
  have h_main : ∀ (ω : Ω), MeasureTheory.stoppedProcess u τ 0 ω = u 0 ω := by
    intro ω
    have h : (0 : ℕ∞) ≤ τ ω := by
      -- Prove that (0 : ℕ∞) ≤ τ ω for any ω
      exact bot_le
    -- Use the definition of stoppedProcess to simplify the expression
    simp [MeasureTheory.stoppedProcess, h]
    <;> aesop
  
  have h_final : MeasureTheory.stoppedProcess u τ 0 = u 0 := by
    funext ω
    apply h_main
  
  exact h_final