import Mathlib

lemma Finite.exists_injective_to_fin {α : Type*} [Finite α] :
    ∃ (n : ℕ) (f : α ↪ Fin n), True := by
  classical
  -- Obtain a `Fintype` instance from `[Finite α]`
  haveI := Fintype.ofFinite α
  -- Choose n as the cardinality of α, and f as the canonical embedding into Fin n
  refine ⟨Fintype.card α, (Fintype.equivFin α).toEmbedding, ?_⟩
  -- The remaining goal is just `True`
  trivial