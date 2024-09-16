# Used internally by the THE() function.
# Used internally by the THE() function.
zzzz-the = { GENDER($ent) ->
    *[neuter] { NUMBER($ent) ->
        *[singular] el { $ent }
         [plural] los { $ent }
    }
     [male] { NUMBER($ent) ->
        *[singular] el { $ent }
         [plural] los { $ent }
    }
     [female] { NUMBER($ent) ->
        *[singular] la { $ent }
         [plural] las { $ent }
    }
     [epicene] { NUMBER($ent) ->
        *[singular] le { $ent }
         [plural] les { $ent }
    }
}

# Used internally by the SUBJECT() function.
zzzz-subject-pronoun = { GENDER($ent) ->
    [male] él
    [female] ella
    [epicene] elle
   *[neuter] ello
   }

# Used internally by the GENDER-INDEFINITE() function.
zzzz-gender-indefinite = { GENDER($ent) ->
    [male] un
    [female] una
    [epicene] une
   *[neuter] un
   }

# Used internally by the OBJECT() function.
zzzz-object-pronoun = { GENDER($ent) ->
    [male] su
    [female] su
    [epicene] su
   *[neuter] su
   }

# Used internally by the POSS-PRONOUN() function.
zzzz-possessive-pronoun = { GENDER($ent) ->
    [male] su
    [female] su
    [epicene] su
   *[neuter] su
   }

# Used internally by the POSS-ADJ() function.
zzzz-possessive-adjective = { GENDER($ent) ->
    [male] su
    [female] su
    [epicene] su
   *[neuter] su
   }

# Used internally by the REFLEXIVE() function.
zzzz-reflexive-pronoun = { GENDER($ent) ->
    [male] él mismo
    [female] ella misma
    [epicene] elle misme
   *[neuter] ello mismo
   }

# Used internally by the CONJUGATE-BE() function.
zzzz-conjugate-be = { GENDER($ent) ->
    [epicene] son
   *[other] es
   }

# Used internally by the CONJUGATE-HAVE() function.
zzzz-conjugate-have = { GENDER($ent) ->
    [epicene] tiene
   *[other] tiene
   }

# Used internally by the CONJUGATE-BASIC() function.
zzzz-conjugate-basic = { GENDER($ent) ->
    [epicene] { $first }
   *[other] { $second }
   }
