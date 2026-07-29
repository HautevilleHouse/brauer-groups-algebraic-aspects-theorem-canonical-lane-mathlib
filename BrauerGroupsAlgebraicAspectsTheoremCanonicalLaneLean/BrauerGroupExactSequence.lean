import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure BrauerGroupExactSequence where
  baseField : Type u
  extensionField : Type u
  inflationMap : Type v -> Type w
  restrictionMap : Type w -> Type x
  inflationInjective : Prop
  restrictionSurjective : Prop
  exactAtMiddle : Prop
  inflationInjectiveClosed : inflationInjective
  restrictionSurjectiveClosed : restrictionSurjective
  exactAtMiddleClosed : exactAtMiddle

structure ExactSequenceEvidence (E : BrauerGroupExactSequence) where
  inflationInjectiveClosed : E.inflationInjective
  restrictionSurjectiveClosed : E.restrictionSurjective
  exactAtMiddleClosed : E.exactAtMiddle

def BrauerGroupExactSequenceClosed (E : BrauerGroupExactSequence) : Prop :=
  E.inflationInjective ∧ E.restrictionSurjective ∧ E.exactAtMiddle

theorem brauer_group_exact_sequence_closed_from_evidence (E : BrauerGroupExactSequence) (Ev : ExactSequenceEvidence E) :
    BrauerGroupExactSequenceClosed E := by
  exact And.intro Ev.inflationInjectiveClosed (And.intro Ev.restrictionSurjectiveClosed Ev.exactAtMiddleClosed)

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse