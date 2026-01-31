import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Filter.Eventually.congr' {α} {p q : α → Prop} {f : Filter α}
    (h : ∀ᶠ x in f, p x ↔ q x) :
    (∀ᶠ x in f, p x) ↔ (∀ᶠ x in f, q x) := by
  constructor <;> intro h₁
  <;> filter_upwards [h, h₁] with x hx <;> simp_all
  <;> aesop