#!bin/sh
npm install -g babel webpack webpack-dev-server
npm install --save react react-dom
npm install --save-dev babel-core babel-loader babel-preset-react babel-preset-es2015 webpack webpack-dev-server
mkdir src src/components public && touch public/index.html src/components/App.js src/index.js webpack.config.js
cat webpack.config.js.default > webpack.config.js
sed -i '/"test"/ d' package.json
sed -i '7s/},/  "start": "webpack-dev-server --hot --host 0.0.0.0"\n  },/' package.json
