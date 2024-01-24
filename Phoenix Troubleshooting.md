
#### Issue 1
```
GET[https://strategic-partners-staging.settld.care/assets/app.css][HTTP/2 404 202ms]  

GET[https://strategic-partners-staging.settld.care/assets/app.js][HTTP/2 404 202ms]  

Layout was forced before the page was fully loaded. If stylesheets are not yet loaded this may cause a flash of unstyled content.  

Loading failed for the <script> with source “[https://strategic-partners-staging.settld.care/assets/app.js](https://strategic-partners-staging.settld.care/assets/app.js "https://strategic-partners-staging.settld.care/assets/app.js")”.
```
q. how we are deploying and what tools are being used to deploy. (containers?)
A. see docker build file, look for d/f profiles under config as for tailwind and esbuild
- fix 1
```
"assets.setup": ["tailwind.install --if-missing", "esbuild.install --if-missing"]
"assets.build": ["tailwind default", "esbuild default"],
"assets.deploy": ["tailwind default --minify", "esbuild default --minify", "phx.digest"]
```

- fix 2( verified and non verified routes)
```
 <link phx-track-static rel="stylesheet" href={unverified_path(@conn, StrategicPartnersWeb , "/assets/app.css")} />

	<script defer phx-track-static type="text/javascript" src={unverified_path(@conn, StrategicPartnersWeb , "/assets/app.js")}>
    
    <% IO.inspect(unverified_path(@conn, StrategicPartnersWeb , "/assets/app.css")) %>
    
	 <% IO.inspect(~p"/assets/app.css") %>
```

- fix 
  Two d/f deployment approach use,
   - node to deploy from assets using scirpts
   -   use elixir tailwindcss and esbuild deps
   - there are d/f profiles according to which we can call umbrella apps for d/f profiles
    ```
     "assets.deploy": ["esbuild strategic_partners --minify",
		"tailwind strategic_partners --minify"]
	```   
   -   https://elixirforum.com/t/tailwind-esbuild-for-umbrela-applications/49242/3
   