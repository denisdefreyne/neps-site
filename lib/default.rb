include Nanoc::Helpers::Rendering

def root_item
  @items.detect { |i| i.identifier == '/' }
end

def neps
  @items.select { |i| i.identifier =~ %r{^/neps/.+} }.sort_by { |i| i[:number] }
end

def link_to_nep(nep)
  %[<a href="#{nep.path}" class="#{nep[:status]}">NEP-#{nep[:number]}: #{nep[:title]}</a>]
end