const { execSync } = require('child_process');

const setupRemotes = [
    'rcline',
] ;

const run = () => {
    const remotes = execSync('git remote').toString().trim().split('\n');
    let originName = '';

    if (remotes.includes('origin')) {
        originName = 'origin';
    } else if (remotes.includes('upstream')) {
        originName = 'upstream';
    } else if (remotes.lenght > 0) {
        originName = remotes[0];
    } else {
        throw "No remote found.";
    }

    const originUrl = execSync(`git remote get-url ${originName}`).toString().trim();
    const githubUrl = originUrl.split(':')[0];
    const orgRep = originUrl.split(':')[1];
    const repo = orgRep.split('/')[1];

    // Delete all remotes
    try {
        remotes.forEach((remoteName) => {
            execSync(`git remote rm ${remoteName}`);
        });
    } catch (e) {
        // continue on
    }


    execSync(`git remote add upstream ${originUrl}`);
    execSync('git fetch upstream');
    execSync('git checkout master');
    execSync('git branch --set-upstream-to upstream/master');

    // Setup other remotes
    setupRemotes.forEach((remoteName) => {
        execSync(`git remote add ${remoteName} ${githubUrl}:${remoteName}/${repo}`);
        try {
            execSync(`git fetch ${remoteName}`);
        } catch (e) {
            // continue on
        }
    });

    console.log('');
    console.log('Succesful setup:');
    const info = execSync('git remote -v').toString().trim();
    console.log(info);
}

run();
