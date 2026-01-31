import Mathlib

open MeasureTheory

/-
NOTE:
The lemma below, as written in the question,

  lemma Measure.map_const (μ : Measure Ω) (x : Ω') :
    Measure.map (fun _ : Ω => x) μ = Measure.dirac x

is NOT true in general, unless μ is a probability measure (μ univ = 1).
The correct general statement in `mathlib` is

  Measure.map (fun _ : Ω => x) μ = μ Set.univ • Measure.dirac x.

That lemma already exists in `mathlib` as `Measure.map_const`.

Below, we use that existing lemma to prove the probability-measure version
requested in the second lemma.
-/

/-- If a measure has total mass `1`, then the `map` of that measure under a
constant function is the Dirac measure at that constant. This is the
mathematically correct version of the first lemma once you assume `μ univ = 1`. -/
lemma Measure.map_const_of_univ_one
    {Ω Ω' : Type*}
    [MeasurableSpace Ω] [MeasurableSpace Ω']
    (μ : Measure Ω)
    (x : Ω')
    (hμ : μ Set.univ = 1) :
    Measure.map (fun _ : Ω => x) μ = Measure.dirac x := by
  classical
  -- Use the general `mathlib` lemma:
  --   Measure.map (fun _ => x) μ = μ Set.univ • Measure.dirac x
  -- then rewrite μ Set.univ to 1 using hμ.
  simpa [hμ] using (Measure.map_const (c := x) (μ := μ))

/-- The `map` of a probability measure under a constant function is the Dirac
measure at that constant. -/
lemma ProbabilityMeasure.map_const
    {Ω Ω' : Type*}
    [MeasurableSpace Ω] [MeasurableSpace Ω']
    (μ : ProbabilityMeasure Ω)
    (x : Ω') :
    Measure.map (fun _ : Ω => x) μ.toMeasure = Measure.dirac x := by
  classical
  -- Start from the general lemma for measures:
  --   Measure.map (fun _ => x) μ.toMeasure =
  --     μ.toMeasure Set.univ • Measure.dirac x
  -- For a probability measure, total mass is 1, and `simp` knows this.
  -- Hence the scalar simplifies to `1 • dirac x = dirac x`.
  simpa using
    (Measure.map_const (c := x) (μ := μ.toMeasure))