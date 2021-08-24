use W3C::DOM;
use XML::DOM::Node;

unit class XML::DOM::DocumentType
    is XML::DOM::Node
    does W3C::DOM::DocumentType;

has Str $.name;
has Str $.publicId;
has Str $.systemId;

method nodeName { $.name }
method entities {$.nyi}
method notations {$.nyi}
method internalSubset {$.nyi}
method nodeValue {$.nyi}
