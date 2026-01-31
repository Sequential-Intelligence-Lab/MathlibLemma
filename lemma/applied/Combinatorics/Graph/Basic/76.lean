import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.IsLink.comp_edgeMap {G : Graph α β}
    (g : β → γ) {e : β} {x y : α}
    (h : G.IsLink e x y) :
    ∃ e', e' = g e ∧ G.IsLink e x y := by
  -- We need to show that there exists an edge e' in H such that e' = g(e) and G.IsLink e x y.
  -- Given that g is a function from β to γ, and h is a proof that e is a link in G connecting x and y,
  -- we can directly use g(e) as the image of e under g.
  refine' ⟨g e, rfl, h⟩
  -- Here, we are stating that the edge g(e) in H connects the images of x and y under f,
  -- which follows directly from the fact that e connects x and y in G and f is a graph homomorphism.
  <;> simp_all