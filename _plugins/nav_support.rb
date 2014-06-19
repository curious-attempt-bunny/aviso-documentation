module NavSupport

  class Generator < Jekyll::Generator
    def generate(site)

      site.pages.each {|page|
        slashx = page.path.rindex "/"
        if slashx
          page.data['folder'] = page.path[0, slashx]
        end
      }
    end
  end
end
