import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure BlockDesignExistencePackage where
  design : Type u
  pointSet : Type v
  blockSet : Type w
  parameters : (Nat × Nat × Nat × Nat)  -- (v, b, r, k)
  incidence : pointSet → blockSet → Prop
  balancedCondition : Prop
  existenceConditions : Prop
  fisherInequality : Prop

structure BlockDesignExistenceEvidence (B : BlockDesignExistencePackage) where
  parametersConsistent : B.parameters.1 > 0 ∧ B.parameters.2 > 0 ∧ B.parameters.3 > 0 ∧ B.parameters.4 > 0
  incidenceConsistent : ∀ (p : B.pointSet), (∃ (b : B.blockSet), B.incidence p b)
  balancedConditionClosed : B.balancedCondition
  existenceConditionsClosed : B.existenceConditions
  fisherInequalityClosed : B.fisherInequality

def BlockDesignExistenceClosed (B : BlockDesignExistencePackage) : Prop :=
  B.balancedCondition ∧ B.existenceConditions ∧ B.fisherInequality

theorem block_design_existence_closed_from_evidence
    (B : BlockDesignExistencePackage) (E : BlockDesignExistenceEvidence B) :
    BlockDesignExistenceClosed B := by
  exact And.intro E.balancedConditionClosed
    (And.intro E.existenceConditionsClosed E.fisherInequalityClosed)

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse