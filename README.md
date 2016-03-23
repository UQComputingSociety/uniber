# uniber
uniber helps you find and make friends who share the same travel route as you. Reducing the boring-ness and cost of travel while meeting new people.

## Contributing
If you would like to contribute get in touch with us on Slack!
### Finding us on Slack
You can find us on the UQCS Slack channel `#uniber` which you can join at [slack.uqcs.org.au](https://slack.uqcs.org.au/).
### Pull Requests and Branching
The project is split into the following branch structure:

```
master
	/develop
		/features
```

`master` is used for releases whilst any code and features being developed should be under `/develop` with sub branches for features.

**Note: Please do not submit Pull Requests straight to master as they will not be accepted.**

### Directory Structure
```
/bin                - MEAN Entry point
/database           -  Database files (Exports + patches)
/lib                - All other server files
/public             - All publicly accessible files
    /css            - CSS
    /js             - Javascript
        /components - Angular components
        /core       - Boot level angular components
    /lib            - Third party client side files
    /templates      - All HTML templates for angular
/routes             - All webservices
    /api            - API only routes
    index.js        - All web page routes
/views              - Templates to be rendered (.ejs only currently)
    /shared         - All shared view components
```    
### Running A Local Copy
First clone the repository
```
git clone https://github.com/UQComputingSociety/uniber
cd uniber
```

Now you will need to install all the Node packages
```
npm install
```

Once this is finished simply run
```
npm start
```

And then access your [localhost:3000](http://localhost:3000).

## Copyright and Licensing
The project is currently licensed under the GNU GPL V3. The full license can be found under LICENSE.