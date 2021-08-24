use W3C::DOM;
use XML::Document;
use XML::DOM::Node;

unit class XML::DOM::Document
    is XML::Document
    does XML::DOM::Node
    does W3C::DOM::Document;

use XML::DOM::Element;
use Method::Also;

method implementation returns W3C::DOM::Implementation {
    require ::('XML::DOM');
}

method documentElement is also<firstChild lastChild> { $.root }
multi method ownerDocument is default { self }

method createElement(Str $name) {
    XML::DOM::Element.craft($name);
}

method createDocumentFragment(|) { $.nyi }
method createTextNode(|) { $.nyi }
method createComment(|) { $.nyi }
method createCDATASection(|) { $.nyi }
method createProcessingInstruction(|) { $.nyi }
method createAttribute(|) { $.nyi }
method createEntityReference(|) { $.nyi }
method importNode(XML::DOM::Node:D $node) {
    $.nyi;
}
method getElementsByTagName(|) { $.nyi }
method nodeName { '#document' }
method nodeValue { $.nyi }

method createElementNS(|) is also<createAttributeNS getElementsByTagNameNS> { $.nyi }
