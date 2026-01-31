import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy where
  X : Type

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.secondCountable_of_LightProfinite
    (X : CompHausLike (fun X =>
      TotallyDisconnectedSpace X ∧ SecondCountableTopology X)) :
    SecondCountableTopology (X.1 : TopCat) := by
  sorry