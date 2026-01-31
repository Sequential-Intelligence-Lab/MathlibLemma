import Mathlib

lemma Filter.mem_of_eq_univ {α} (f : Filter α) {s : Set α} (hs : s ∈ f) (hsu : s = Set.univ) :
    Set.univ ∈ f := by
  simpa [hsu] using hs