module ProjectsHelper

  def get_main_image(project, size)
    if picture = project.pictures.find_by(title: 'Main')
      picture.image.url(size)
    else
      '/images/missing_medium.png'
    end
  end
end
