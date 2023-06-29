def group_raptors(array)
  yield array
end

group_raptors(%w(raven finch hawk eagle)) { |_, _, raptors| p raptors }