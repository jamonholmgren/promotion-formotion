class AppDelegate < PM::Delegate
  def on_load(app, options)
    open FormScreen.new(nav_bar: true)
  end
end
