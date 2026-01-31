import Mathlib

lemma exists_seq_of_forall_finset_exists_pairwise'
    {α : Type*} (P : α → Prop) (r : α → α → Prop)
    [IsSymm α r]
    (h : ∀ s : Finset α, (∀ x ∈ s, P x) → ∃ y, P y ∧ ∀ x ∈ s, r x y) :
    ∃ f : ℕ → α, Pairwise (fun m n => r (f m) (f n)) := by
  classical
  obtain ⟨f, hfP, hf⟩ := exists_seq_of_forall_finset_exists' P r h
  sorry