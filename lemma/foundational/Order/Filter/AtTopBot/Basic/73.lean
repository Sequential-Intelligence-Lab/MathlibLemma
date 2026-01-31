import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem Filter.tendsto_atTop_sub_const_nat {f : ℕ → ℕ} {c : ℕ} {l : Filter ℕ} :
    Filter.Tendsto (fun n => f (n - c)) Filter.atTop l ↔
      Filter.Tendsto f Filter.atTop l := by
  have h1 : (fun n : ℕ => f (n - c)) = f ∘ (fun n : ℕ => n - c) := by
    funext n
    simp
  rw [h1]
  constructor
  · -- Assume Tendsto (f ∘ (fun n => n - c)) atTop l, prove Tendsto f atTop l
    intro h
    have h3 : Filter.Tendsto (fun n : ℕ => (f ∘ (fun n : ℕ => n - c)) (n + c)) Filter.atTop l := by
      have h3 : Filter.Tendsto (fun n : ℕ => n + c) Filter.atTop Filter.atTop := by
        apply Filter.tendsto_atTop_atTop.mpr
        intro b
        use b
        intro n hn
        omega
      apply Filter.Tendsto.comp h
      exact h3
    have h5 : (fun n : ℕ => (f ∘ (fun n : ℕ => n - c)) (n + c)) = f := by
      funext n
      simp
      all_goals omega
    rw [h5] at h3
    exact h3
  · -- Assume Tendsto f atTop l, prove Tendsto (f ∘ (fun n => n - c)) atTop l
    intro h
    have h2 : Filter.Tendsto (fun n : ℕ => n - c) Filter.atTop Filter.atTop := by
      apply Filter.tendsto_atTop_atTop.mpr
      intro b
      use b + c
      intro n hn
      omega
    apply Filter.Tendsto.comp
    · exact h
    · exact h2