<app>
  <style>
    app material-navbar material-tabs material-button .content .text {
      font-size:1.3vw;
    }
  </style>

  <material-navbar fixed='true' style='height:100%;'>
    <material-tabs tabs={ parent.tabs } useLine='true'>
    </material-tabs>
  </material-navbar>


  <content></content>

  <script type="es6">
    this.tabs = [{title:'home'}, {title:'examples'}]
    riot.route.base('/')
    riot.route.start(true)
    this.changeTab = (tab, id) => {riot.route(tab.title)}
    this.tags['material-navbar'].tags['material-tabs'].on('tabChanged', this.changeTab);
  </script>
</app>
