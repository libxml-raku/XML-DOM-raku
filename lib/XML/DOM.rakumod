use W3C::DOM;
use XML::DOM::Document;
use XML::DOM::DocumentType;

unit class XML::DOM
    does W3C::DOM::Implementation;

sub nyi { die X::NYI.new }
method createDocument(Str $filename? is copy, Str $name?, XML::DOM::DocumentType $dtd?) {
    my %doctype;
    if $dtd.defined {
        %doctype<type> = $dtd.name;
        with $dtd.publicId {
            %doctype<value> = qq<< PUBLIC "$_">>;
            %doctype<value> ~= qq<< "$_">>
                 with $dtd.systemId;
        }
        else {
            %doctype<value> = qq<< SYSTEM "{$dtd.systemId}">>;            
        }
    }

    my XML::DOM::Element  $root .= new: :$name;
    my XML::DOM::Document $this .= new: :$root, :%doctype, :$filename;
    $root.parent = $this;
    $this;
}
method createDocumentType(Str:D $name, Str $publicId, Str $systemId) {
    XML::DOM::DocumentType.new: :$name, :$publicId, :$systemId;
}

method hasFeature(|) {...}
