import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure ExponentIndexPackage where
  exponent : ℕ
  index : ℕ
  exponentDividesIndex : exponent ∣ index
  indexSplittingField : Prop
  exponentClosed : exponent > 0
  indexClosed : index > 0

structure ExponentIndexEvidence (E : ExponentIndexPackage) where
  exponentDividesIndexClosed : E.exponentDividesIndex
  indexSplittingFieldClosed : E.indexSplittingField

def ExponentIndexClosed (E : ExponentIndexPackage) : Prop :=
  E.exponentDividesIndex ∧ E.indexSplittingField

theorem exponent_index_closed_from_evidence (E : ExponentIndexPackage) (Ev : ExponentIndexEvidence E) :
    ExponentIndexClosed E := by
  exact And.intro Ev.exponentDividesIndexClosed Ev.indexSplittingFieldClosed

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse