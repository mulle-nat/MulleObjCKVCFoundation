KVC is a hybrid of MulleObjC and MulleObjCStandardFoundation

It should probably move to its own library. Because it 
uses runtime information it breaks the rule, that
MulleObjCStandardFoundation shouldn't be using mulle_objc_
C calls.