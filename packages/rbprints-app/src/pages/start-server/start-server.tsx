import React from 'react';
import { defaultPort } from '../../config';

import styles from './start-server.module.scss';

function StartServerPage() {
	const startServerClicked = () => {
		let win: any = window; // Gotta disable type checking because tsc would love to complain about window.api not being a real function.

		win.api.send('server', 'start');
	}

	return (
		<div className={styles.pageContainer}>
			<main>
				<input id='portInput' type='text' placeholder={defaultPort.toString()}></input>
				<button onClick={startServerClicked}>Start server</button>
			</main>
		</div>
	);
}

export default StartServerPage;
