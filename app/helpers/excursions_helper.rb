module ExcursionsHelper
  def excursion_thumb_for(excursion, size)
    excursion_thumb_for(excursion)
  end

  def excursion_thumb_for(excursion)
    return image_tag("/assets/icons/draft.jpg") if excursion.draft
    image_tag (excursion.thumbnail_url || "/assets/logos/original/excursion-00.png")
  end

  def excursion_raw_thumbail(excursion)
    return "/assets/icons/draft.jpg" if excursion.draft
    excursion.thumbnail_url || "/assets/logos/original/excursion-00.png"
  end

  def num_slides(excursion)
    excursion.slide_count.to_s
  end

  def starts
    # TODO: really take the top 10 excursions
    value=1 + (10)
  end

end
