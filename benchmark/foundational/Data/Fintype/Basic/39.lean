import Mathlib

lemma Finset.image_univ_eq_range (f : ℕ → ℕ) (n : ℕ)
    (hf : ∀ i < n, f i < n) (hinj : Set.InjOn f {i | i < n}) :
    (Finset.univ : Finset (Fin n)).image (fun i : Fin n => Fin.mk (f i) (hf i i.2)) =
      Finset.univ := by
  sorry
