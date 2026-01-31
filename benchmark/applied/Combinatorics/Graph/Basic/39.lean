import Mathlib

variable {α β γ : Type*} {x y z u v w : α} {e f g : β}

open Set

-- We avoid assuming any particular field like `V` on `Graph`.
lemma Graph.vertex_nonempty_of_exists_isLink {G : Graph α β}
    (h : ∃ e x y, G.IsLink e x y) : ∃ x : α, True := by
  sorry