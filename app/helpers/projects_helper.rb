module ProjectsHelper

  def get_main_image(project)
    if picture = project.pictures.find_by(title: 'Main')
      picture.image.url(:medium)
    else
      '/images/missing_medium.png'
    end
  end
end
