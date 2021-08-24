use W3C::DOM;
use XML::Element;
use XML::DOM::Node;

unit class XML::DOM::Element
    is XML::Element
    does XML::DOM::Node
    does W3C::DOM::Element;

use Method::Also;

method getAttribute(Str $name) { %.attribs{$name} }
method setAttribute(Str $name, Str $val) { %.attribs{$name} = $val }
method removeAttribute(Str $name, Str $val) { %.attribs{$name}:delete }
method hasAttribute(Str $name) { %.attribs{$name}:exists }
method nodeName { $.name }
method nodeValue {$.nyi}
method childNodes { @.nodes; }
method attributes { %.attribs }
method appendChild(XML::DOM::Node:D $child) { $.append($child) }
method hasChildNodes { so @.nodes }
method hasAttributes { so %.attribs }
method getElementsByTagName(|) { $.nyi }

method getAttributeNode(|c) is also<setAttributeNode removeAttributeNode getAttributeNS setAttributeNS removeAttributeNS getAttributeNodeNS setAttributeNodeNS getElementsByTagNameNS hasAttributeNS> { ... }


