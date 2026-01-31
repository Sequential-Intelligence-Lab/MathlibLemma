import Mathlib

lemma Finset.card_univ_pi {ι : Type*} [Fintype ι]
    (α : ι → Type*) [∀ i, Fintype (α i)]
    [DecidableEq ι] [∀ i, DecidableEq (α i)] :
    (Finset.univ : Finset (∀ i, α i)).card =
      ∏ i, (Finset.univ : Finset (α i)).card := by
  -- ensure there is a Fintype instance for the dependent function space
  let _ : Fintype (∀ i, α i) := by infer_instance
  sorry