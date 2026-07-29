import canonicalLaneMathlib.AdmissibleClass

/-!
# Brauer Group Structure Package
-/

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure BrauerGroupStructurePackage (G : BrauerAdmittedObject) where
  tensorProductClosure : Prop
  oppositeAlgebraInverse : Prop
  exactSequenceSplit : Prop

structure BrauerGroupStructureEvidence
    (G : BrauerAdmittedObject) (B : BrauerGroupStructurePackage G) where
  tensorProductClosureClosed : B.tensorProductClosure
  oppositeAlgebraInverseClosed : B.oppositeAlgebraInverse
  exactSequenceSplitClosed : B.exactSequenceSplit

def BrauerGroupStructureClosed (G : BrauerAdmittedObject)
    (B : BrauerGroupStructurePackage G) : Prop :=
  B.tensorProductClosure ∧ B.oppositeAlgebraInverse ∧ B.exactSequenceSplit

theorem brauer_group_structure_closed_from_evidence
    (G : BrauerAdmittedObject) (B : BrauerGroupStructurePackage G)
    (E : BrauerGroupStructureEvidence G B) :
    BrauerGroupStructureClosed G B := by
  exact And.intro E.tensorProductClosureClosed
    (And.intro E.oppositeAlgebraInverseClosed E.exactSequenceSplitClosed)

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse