import Mathlib

/-- If a continuous function on a complete metric space sends every Cauchy sequence
to a Cauchy sequence, it is uniformly continuous on bounded sets.

⚠️ Warning: In the generality stated (only `[MetricSpace X] [CompleteSpace X] [Zero X]`),
this lemma is in fact not provable without additional assumptions
(e.g. that closed balls are compact / `X` is a proper space). The code below
is therefore only a placeholder and does **not** contain a genuine proof. -/
lemma Continuous.uniformContinuousOn_bounded_of_cauchy_image
    {X Y : Type*} [MetricSpace X] [CompleteSpace X] [Zero X] [MetricSpace Y]
    {f : X → Y} (hf : Continuous f)
    (hC : ∀ u : ℕ → X, CauchySeq u → CauchySeq (fun n => f (u n))) :
    ∀ R > 0, UniformContinuousOn f {x : X | dist x 0 ≤ R} := by
  -- This lemma is not valid in this generality without extra structure
  -- (e.g. `ProperSpace X`). A correct proof would require strengthening
  -- the assumptions on `X`. As stated, there is no valid Lean proof here.
  --
  -- One could, for example, add `[ProperSpace X]` and then use compactness
  -- of closed balls together with the Cauchy-sequence preservation to
  -- derive uniform continuity on each ball.
  --
  -- Hence we leave this lemma unproved.
  admit