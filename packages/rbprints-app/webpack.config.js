const path = require('path');

const commonConfig = {
	module: {
		rules: [
			{
				test: /\.(ts|tsx)$/,
				use: 'ts-loader',
				exclude: /node_modules/,
			},
			{
				test: /\.s[ac]ss$/i,
				use: [
					// Creates `style` nodes from JS strings
					"style-loader",
					// Translates CSS into CommonJS
					"css-loader",
					// Compiles Sass to CSS
					"sass-loader",
				],
			},
		],
	},
	resolve: {
		extensions: ['.ts', '.tsx', '.js'],
	},
};

const mainConfig = {
	entry: './src/index.ts',
	target: 'electron-main',
	output: {
		filename: 'main.js',
		path: path.resolve(__dirname, 'dist'),
		publicPath: './dist/',
	},
	...commonConfig,
};

const preloadConfig = {
	entry: './src/preload.ts',
	target: 'electron-preload',
	output: {
		filename: 'preload.js',
		path: path.resolve(__dirname, 'dist'),
		publicPath: './dist/',
	},
	...commonConfig,
};

const rendererConfig = {
	entry: './src/renderer.ts',
	target: 'electron-renderer',
	output: {
		filename: 'renderer.js',
		path: path.resolve(__dirname, 'dist'),
		publicPath: './dist/',
	},
	...commonConfig,
};

module.exports = [mainConfig, preloadConfig, rendererConfig];
