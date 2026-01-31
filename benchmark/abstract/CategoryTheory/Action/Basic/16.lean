import Mathlib

open CategoryTheory

lemma Action.ρAut_surjective_of_faithful
    {V : Type*} [CategoryTheory.Category V]
    {G : Type*} [Group G]
    (A : Action V G)
    (h : Function.Surjective (fun g : G => (A.ρAut g : Aut A.V))) :
    Function.Surjective A.ρAut := by
  sorry