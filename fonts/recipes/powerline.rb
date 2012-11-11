# https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts

inconsolata = %w[ Inconsolata-dz-Powerline.otf ]
veramono    = %w[ VeraMono-Powerline.ttf ]
dejavusans  = %w[ DejaVuSansMono-Bold-Powerline.ttf DejaVuSansMono-BoldOblique-Powerline.ttf DejaVuSansMono-Oblique-Powerline.ttf DejaVuSansMono-Powerline.ttf ]
droidsans   = %w[ DroidSansMono-Powerline.ttf DroidSansMonoDotted-Powerline.ttf DroidSansMonoSlashed-Powerline.ttf ]
ubuntumono  = %w[ UbuntuMono-B-Powerline.otf UbuntuMono-BI-Powerline.otf UbuntuMono-R-Powerline.otf UbuntuMono-RI-Powerline.otf ]
sourcecode  = %w[ SourceCodePro-Black-Powerline.otf SourceCodePro-Bold-Powerline.otf SourceCodePro-ExtraLight-Powerline.otf SourceCodePro-Light-Powerline.otf SourceCodePro-Regular-Powerline.otf SourceCodePro-Semibold-Powerline.otf ]

[ inconsolata, veramono, dejavusans, droidsans, ubuntumono, sourcecode ].flatten.each do |filename|
  cookbook_file "#{node[:fonts][:path]}/#{filename}" do
    mode 0444
    owner node[:fonts][:user]
    group "staff"
  end
end
