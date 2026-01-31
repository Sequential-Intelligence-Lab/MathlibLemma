import Mathlib

lemma toRight_biUnion {α β γ} [DecidableEq γ] [DecidableEq β] [DecidableEq (α ⊕ β)]
    (s : Finset γ) (f : γ → Finset (α ⊕ β)) :
    (s.biUnion f).toRight = s.biUnion (fun i => (f i).toRight) := by
  sorry