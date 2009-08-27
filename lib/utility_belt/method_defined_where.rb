#For something more in depth, use http://github.com/spicycode/the-inspector/tree/master/spec/unit/inspector_spec.rb
def Object.method_defined_where(method)
  self.ancestors.detect do |a|
    a.methods(false).any? {|m| m == method.to_s or m == method.to_sym}
  end
end