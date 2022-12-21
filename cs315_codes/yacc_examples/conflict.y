%%
e: e '+' e
 | e '*' e
 | id;
id: 'x' | 'y' | 'z';
