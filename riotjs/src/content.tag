<content>
  <div id='content_' style='padding:10px;background-color:#f2f2f2'></div>
  
  <script type="es6">
    // var router = riot.route.create()
    // router('home', this.mountTag)
    // router('examples', this.mountTag)
    this.content = 'Content'
    this.pages = {home:null, examples:null}
    
    this.mountTag = (name) => {
      if (name == '')
        name = 'home'
      
      if (name in this.pages)
        riot.mount(this.content_, name)
      else
        riot.mount(this.content_, 'page-not-found')
    }

    riot.route(this.mountTag)
  </script>
</content>
