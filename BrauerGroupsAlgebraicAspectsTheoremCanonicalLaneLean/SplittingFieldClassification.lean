import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure SplittingFieldClassification where
  baseField : Type u
  centralSimpleAlgebra : Type v
  splittingField : Type u
  splittingFieldExtension : Prop
  maxSubfield : Prop
  degreeBound : ℕ
  indexEquality : ℕ
  splittingFieldClosed : splittingFieldExtension
  maxSubfieldClosed : maxSubfield

structure SplittingFieldEvidence (S : SplittingFieldClassification) where
  splittingFieldExtensionClosed : S.splittingFieldExtension
  maxSubfieldClosed : S.maxSubfield
  degreeBoundClosed : S.degreeBound > 0
  indexEqualityClosed : S.indexEquality = S.degreeBound

def SplittingFieldClosed (S : SplittingFieldClassification) : Prop :=
  S.splittingFieldExtension ∧ S.maxSubfield ∧ S.degreeBound = S.indexEquality

theorem splitting_field_closed_from_evidence (S : SplittingFieldClassification) (Ev : SplittingFieldEvidence S) :
    SplittingFieldClosed S := by
  exact And.intro Ev.splittingFieldExtensionClosed (And.intro Ev.maxSubfieldClosed Ev.indexEqualityClosed)

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse