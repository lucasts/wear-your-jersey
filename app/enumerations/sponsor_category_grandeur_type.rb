class SponsorCategoryGrandeurType < EnumerateIt::Base
  associate_values(
    :master_sponsor => 1,
    :sponsor        => 2,
    :partner        => 3
  )

  sort_by :value
end
