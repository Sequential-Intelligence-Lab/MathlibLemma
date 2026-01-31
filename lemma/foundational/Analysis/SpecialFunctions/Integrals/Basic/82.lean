import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_polynomial (a b : ℝ) (p : Polynomial ℝ) :
    ∃ F : ℝ → ℝ, (∫ x in a..b, p.eval x) = F b - F a := by
  have h_main : ∃ (F : ℝ → ℝ), (∫ x in a..b, p.eval x) = F b - F a := by
    use fun x => ∫ t in a..x, p.eval t
    have h₁ : (∫ x in a..b, p.eval x) = (∫ t in a..b, p.eval t) := rfl
    have h₂ : (∫ t in a..a, p.eval t) = 0 := by
      simp
    calc
      (∫ x in a..b, p.eval x) = (∫ t in a..b, p.eval t) := rfl
      _ = (∫ t in a..b, p.eval t) - (∫ t in a..a, p.eval t) := by
        rw [h₂]
        <;> ring
      _ = (∫ t in a..b, p.eval t) - 0 := by rw [h₂]
      _ = (∫ t in a..b, p.eval t) := by ring
      _ = (∫ t in a..b, p.eval t) := rfl
      _ = (∫ x in a..b, p.eval x) := rfl
      _ = (fun x => ∫ t in a..x, p.eval t) b - (fun x => ∫ t in a..x, p.eval t) a := by
        simp [h₂]
        <;>
        (try norm_num) <;>
        (try ring_nf) <;>
        (try simp_all [intervalIntegral.integral_same]) <;>
        (try linarith)
  
  exact h_main