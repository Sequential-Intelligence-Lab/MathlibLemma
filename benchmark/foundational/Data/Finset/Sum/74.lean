import Mathlib

lemma toLeft_biUnion {α β γ}
    [DecidableEq α] [DecidableEq β] [DecidableEq γ] [DecidableEq (α ⊕ β)]
    (s : Finset γ) (f : γ → Finset (α ⊕ β)) :
    (s.biUnion f).toLeft = s.biUnion (fun i => (f i).toLeft) := by
  sorry