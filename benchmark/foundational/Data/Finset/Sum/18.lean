import Mathlib

lemma disjSum_biUnion_left {α β γ} [DecidableEq (α ⊕ β)]
    (f : γ → Finset α) (s : Finset γ) (t : Finset β) :
    (s.biUnion fun i => (f i).disjSum t) =
      (s.biUnion fun i => (f i).map .inl) ∪ t.map .inr := by
  sorry
