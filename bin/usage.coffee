console.log """
#{pkg.name} #{pkg.version}

Usage: #{pkg.name} [options] [command]

Commands:

  server         Start the development server. Use -n to run in Nitrous
  profile        Profile actions to setup enviroment  
  app            Manage Application Livecycle
  store          Manage de Appearance of the 3VOT Profile
  salesforce     Setup and Deploy Apps to Salesforce.com

Options:

  -l,    run in debug mode, showing all console output
  -h,    output usage information
  -v,    output the version number
  -u,    Updates your 3VOT Profile

Profile Actions:
  3vot profile:create        Registers a new profile in the 3VOT Platform and creates the project structure
  
  3vot profile:setup         Creates the project folder and installs all dependencies.
                              ( Windows Note: it's posible that users will need to run npm install manually )

  3vot profile:publish       Publishes an App to the 3VOT Profile Main Page

  3vot profile:update        Updates the Profile Page to Latest Version ( only required before v: 0.3.31 )

Salesforce Actions:
  3vot salesforce:setup      Connects to Salesforce and saves the username and security key
  
  3vot salesforce:dev        Creates and Uploads a Visualforce page used for local development
  
  3vot salesforce:upload     Uploads an app to 3VOT Digital Content Cloud, creates a Visualforce Page and links both


App Actions
  3vot app:template          Downloads an Application based on a Template

  3vot app:create            Registers a new App on the Platform using current credits and creates folder structure

  3vot app:static            Registers a new Static App on the Platform using current credits and creates folder structure

  3vot app:upload            Uploads the Code of the new app and uploads the app as a demo
  
  3vot app:clone             Clones an App from the 3VOT Platform Marketplace and downloads its source code
  
  3vot app:publish           Publishes a Demo App to your 3VOT Profile
  
  3vot app:build             Builds the development version of the App ( Used in manual operation )
  
  3vot app:install           Installs the NPM and Bower Dependencies of the App ( Used in Manual Operation )
  
Store Actions
  3vot store:create          Creates a new Store in on your 3VOT Profile Page

  3vot store:list            List all Stores and Apps in your 3VOT Profile
  
  3vot store:app:add         Adds an App to the specified store referenced by store name
  
  3vot store:app:remove      Removes an App from the Store

  3vot store:destroy         Removes a Store from your 3VOT Profile
  
  3vot store:generate        Updates your 3VOT Profile APP JSON Data Store with all Apps in Stores ( this occurs automatically )

"""
