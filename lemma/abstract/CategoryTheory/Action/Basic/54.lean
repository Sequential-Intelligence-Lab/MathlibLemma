import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open CategoryTheory

theorem Action.forget_faithful
    {V : Type*} [Category V] [MonoidalCategory V]
    {G : Type*} [Monoid G] :
    ∀ {X Y : Action V G} (f g : X ⟶ Y), (Action.forget (V := V) (G := G)).map f = (Action.forget (V := V) (G := G)).map g → f = g := by
  intros X Y f g h
  simp [Action.Hom, Action.forget] at h ⊢
  all_goals try { aesop }