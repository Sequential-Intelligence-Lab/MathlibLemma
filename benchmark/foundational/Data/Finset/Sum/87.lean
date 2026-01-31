import Mathlib

namespace Sum

-- Define embeddings for inl and inr into the sum type
def inlEmbedding (α β : Type _) : α ↪ α ⊕ β where
  toFun := Sum.inl
  inj' := by
    intro a₁ a₂ h
    cases h
    rfl

def inrEmbedding (α β : Type _) : β ↪ α ⊕ β where
  toFun := Sum.inr
  inj' := by
    intro b₁ b₂ h
    cases h
    rfl

end Sum

open Sum

lemma disjSum_univ_left {α β} [Fintype α] [DecidableEq α] [DecidableEq β] [DecidableEq (α ⊕ β)]
    (t : Finset β) :
    (Finset.univ : Finset α).disjSum t =
      (Finset.univ.map (Sum.inlEmbedding α β)) ⊔ t.map (Sum.inrEmbedding α β) := by
  sorry