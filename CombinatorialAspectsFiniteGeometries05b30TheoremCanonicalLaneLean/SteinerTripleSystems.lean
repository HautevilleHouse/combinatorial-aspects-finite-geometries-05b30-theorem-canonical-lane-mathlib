import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure SteinerTripleSystemPackage where
  pointSet : Type u
  tripleSet : Type v
  incidence : pointSet → tripleSet → Prop
  orderParameter : Nat
  parameterCongruence : orderParameter % 6 = 1 ∨ orderParameter % 6 = 3
  steinerCondition : ∀ (p q : pointSet), p ≠ q → (∃! (t : tripleSet), incidence p t ∧ incidence q t)
  existenceProof : Prop
  enumeration : Prop

structure SteinerTripleSystemEvidence (S : SteinerTripleSystemPackage) where
  parameterCongruenceClosed : S.parameterCongruence
  steinerConditionClosed : S.steinerCondition
  existenceProofClosed : S.existenceProof
  enumerationClosed : S.enumeration

def SteinerTripleSystemClosed (S : SteinerTripleSystemPackage) : Prop :=
  S.parameterCongruence ∧ S.steinerCondition ∧ S.existenceProof ∧ S.enumeration

theorem steiner_triple_system_closed_from_evidence
    (S : SteinerTripleSystemPackage) (E : SteinerTripleSystemEvidence S) :
    SteinerTripleSystemClosed S := by
  exact And.intro E.parameterCongruenceClosed
    (And.intro E.steinerConditionClosed
      (And.intro E.existenceProofClosed E.enumerationClosed))

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse