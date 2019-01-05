const file = 'lang/LANG3.SRC';
const lineReader = require('readline')
    .createInterface({
        input: require('fs').createReadStream(file)
    });

const messages = {
    JP: [],
    ES: [],
    EN: [],
};


let array;

lineReader
    .on('line', line => {
        line = line.trim();
        // console.log(line);
        if (line.endsWith('_J') || line.endsWith('J:')) {
            array = messages.JP;
        }
        if (line.endsWith('_U') || line.endsWith('U:')) {
            array = messages.EN;
        }
        if (line.endsWith('_S') || line.endsWith('S:')) {
            array = messages.ES;
        }
        if (line.startsWith('DC.B')) {
            array.push(line.split('\t')[1].split(',0FFH')[0].replace(/'/g,''));
        }
    })
    .on('close', () => {
        for(let i=0;i<messages.EN.length;i++) {
            console.log(messages.EN[i]);
        }
    })

;