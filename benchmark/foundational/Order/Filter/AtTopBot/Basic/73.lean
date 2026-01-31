import Mathlib

lemma Filter.tendsto_atTop_sub_const_nat {f : ℕ → ℕ} {c : ℕ} {l : Filter ℕ} :
    Filter.Tendsto (fun n => f (n - c)) Filter.atTop l ↔
      Filter.Tendsto f Filter.atTop l := by
  sorry
