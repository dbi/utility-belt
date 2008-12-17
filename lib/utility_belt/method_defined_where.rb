#For something more in depth, use http://github.com/spicycode/the-inspector/tree/master/spec/unit/inspector_spec.rb
def Object.method_defined_where(method)
  self.ancestors.detect { |a| a.methods(false).include?(method.to_s) }
end