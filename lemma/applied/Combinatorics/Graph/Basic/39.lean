import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.vertex_nonempty_of_exists_isLink {G : Graph α β}
    (h : ∃ e x y, G.IsLink e x y) : ∃ x : α, True := by
  -- Extract the existence of a link from the hypothesis
  obtain ⟨e, x, y, h⟩ := h
  -- Conclude the existence of a vertex based on the existence of the link
  exact ⟨x, trivial⟩