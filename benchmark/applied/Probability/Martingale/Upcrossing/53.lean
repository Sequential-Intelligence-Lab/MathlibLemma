import Mathlib

-- Lemmas about upcrossings (∞-valued)

lemma upcrossings_le_upcrossingsBefore_succ
    {Ω : Type _} {a b : ℝ} {f : ℕ → Ω → ℝ} (ω : Ω) :
    MeasureTheory.upcrossings a b f ω ≤
      iSup (fun N : ℕ => (MeasureTheory.upcrossingsBefore a b f (N + 1) ω : ENNReal)) := by
  sorry