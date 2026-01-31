import Mathlib

lemma SuccDiffBounded_mono_of_strictMono {C : ℕ} {u : ℕ → ℕ}
    (h : SuccDiffBounded C u) (hu : StrictMono u) :
    Monotone u := by
  exact hu.monotone