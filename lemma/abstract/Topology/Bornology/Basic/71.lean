import Mathlib

variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_image_const [Bornology β] (b : β) :
    IsBounded (Set.range (fun _ : α => b)) := by
  classical
  by_cases hα : Nonempty α
  · -- Case 1: α is nonempty, so the range is the singleton {b}
    haveI := hα
    simpa [Set.range_const] using
      (Bornology.isBounded_singleton (x := b) :
        IsBounded ({b} : Set β))
  · -- Case 2: α is empty, so the range is empty
    have hEmpty :
        Set.range (fun _ : α => b) = (∅ : Set β) := by
      apply Set.eq_empty_iff_forall_not_mem.mpr
      intro y hy
      rcases hy with ⟨x, rfl⟩
      exact hα ⟨x⟩
    simpa [hEmpty] using
      (Bornology.isBounded_empty (α := β))