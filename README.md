# Join - Admin Frontend

### Dependencies
In order to get dependencies you will need npm and nodejs.

`sudo apt install npm`

`curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -`

##### (?) set the path to sos-ui-shared in package.json

`cd sos-ui-master`

`sudo nano package.json`

edit with your local path:

 `"@sos/sos-ui-shared": "/home/user/join/sos-ui-shared"`

Then you can retrieve dependencies:

`npm install`

you may have to set permission to make the command work.

If it starts, have a cup of tea, it may take a while.

Then manually install these dependencies:

  `cd /sos-ui-master/node_modules/`
 
  `git clone https://github.com/accursoft/caret.git`
  
  `git clone https://github.com/Pixabay/jQuery-tagEditor.git`
  
  `mv jQuery-tagEditor/ tagEditor/`
  
  And change existing @sos/sos-ui-shared/ with [this repo](https://github.com/lascuolaopensource/join-ui-shared)
  
  `rm -r @sos/`
  
  `git clone https://github.com/lascuolaopensource/join-ui-shared.git @sos/sos-ui-shared/`


### Configure

Customize your environment variables:

`sudo nano src/environments/environment.prod.ts `

Watch out for http or https


    backendUrl: 'http://your-backend-domain.xyz/api',
    rulesUrl: 'http://your-backend-domain.xyz/rules',
    auth: {
    clientId: 'user',
    redirectUri: 'auth.html',
    authUrl: 'http://your-backend-domain.xyz/oauth2/access_token',
    logoutUrl: 'http://your-backend-domain.xyz/signout'
    }

### Build

Now you can compile with

`npx ng build -prod -aot`

The newly created "Dist" folder will contain compiled files.

