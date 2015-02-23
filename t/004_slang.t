use Test;
use Grammar::EBNF;
ebnf-grammar A::B {
  TOP = "42";
};
ok(A::B.^can('parse'), "It can parse");
ok(A::B.^can('TOP'), "The syntax rule becomes a method");
ok(A::B.TOP(), "Can invoke the rule");
ok(A::B.parse("42"), "Parse succeeds");
ok(!A::B.parse("43"), "Parse fails when it doesn't match");
done();
