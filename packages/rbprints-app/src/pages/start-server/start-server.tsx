import React from 'react';
import { defaultPort } from '../../config';

import styles from './start-server.module.scss';

function StartServerPage() {
	return (
		<div className={styles.pageContainer}>
			<main>
				<input id='portInput' type='text' placeholder={defaultPort.toString()}></input>
				<button>Start server</button>
			</main>
		</div>
	);
}

export default StartServerPage;
