import Mathlib

variable {α β : Type*}

namespace Graph

variable (G : Graph α β)

lemma card_incidenceSet_le_edgeSet (x : α)
    [Fintype G.edgeSet] [Fintype (G.incidenceSet x)] :
    Fintype.card (G.incidenceSet x) ≤ Fintype.card G.edgeSet := by
  sorry

end Graph