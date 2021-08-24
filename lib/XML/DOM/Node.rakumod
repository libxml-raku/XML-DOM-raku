use W3C::DOM;
use XML::Node;

unit role XML::DOM::Node;

use Method::Also;

method nyi { die X::NYI.new }

method parentNode { $.parent }
method childNodes { [] }
method attributes { %() }
method appendChild {$.nyi}
method hasChildNodes { False }
method hasAttributes { False }
method normalize {$.nyi}
method isSupported {$.nyi}
method namespaceURI {$.nyi}
method prefix {$.nyi}
method localName {$.nyi}
method firstChild {$.nyi}
method lastChild {$.nyi}
method previousSibling {$.nyi}
method nextSibling {$.nyi}
multi method ownerDocument(XML::DOM::Node:U:) {
    require ::('XML::DOM::Document');
}
multi method ownerDocument { $.parent.ownerDocument }
method insertBefore($) {$.nyi}
method replaceChild($) {$.nyi}
method removeChild($) {$.nyi}
method cloneNode($?) {$.nyi}

