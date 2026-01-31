import Mathlib

lemma Filter.mem_atBot_sets_iff_int {s : Set ℤ} :
    s ∈ (Filter.atBot : Filter ℤ) ↔ ∃ N, ∀ n ≤ N, n ∈ s := by
  simpa using (Filter.mem_atBot_sets_iff (s := s) : 
    s ∈ (Filter.atBot : Filter ℤ) ↔ ∃ N, ∀ n ≤ N, n ∈ s)