import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulAction.fixedPoints_nonempty_iff [Group G] [MulAction G α] :
    (MulAction.fixedPoints G α).Nonempty ↔
      ∃ a : α, ∀ g : G, g • a = a := by
  constructor
  -- Forward direction: If the set of fixed points is non-empty, then there exists an element a in α that is fixed by all group actions.
  intro h
  obtain ⟨a, ha⟩ := h
  refine' ⟨a, fun g => _⟩
  -- By the definition of fixed points, a is fixed by all group actions.
  simpa [ha] using ha g
  -- Reverse direction: If there exists an element a in α that is fixed by all group actions, then the set of fixed points is non-empty.
  intro h
  obtain ⟨a, ha⟩ := h
  -- Since a is fixed by all group actions, it belongs to the set of fixed points.
  refine' ⟨a, fun g => _⟩
  simpa [ha] using ha g