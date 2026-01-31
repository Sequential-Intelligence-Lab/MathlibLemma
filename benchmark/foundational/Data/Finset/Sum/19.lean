import Mathlib

lemma disjSum_biUnion_right {α β γ} [DecidableEq (α ⊕ β)]
    (g : γ → Finset β) (s : Finset α) (t : Finset γ) :
    (t.biUnion fun i => s.disjSum (g i)) =
      s.map .inl ∪ (t.biUnion fun i => (g i).map .inr) := by
  sorry
