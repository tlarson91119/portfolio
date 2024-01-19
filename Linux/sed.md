**sed** : stream filtering/transforming
Text streams can be piped into sed to perform a single-pass text transformation.
One of the most common operations is text substitution (_s/old/new/_):
<p><code>echo Hello World | sed s/World/Everyone/</code></p>
<p><code>echo Hello World | sed --expression=s/Hello/Good\ morning/</code></p>
<p><code>echo Hello World | sed -e s/World/Everyone/</code></p>

The **sed** program parses its own _script_ language, as shown above (e.g., _s/World/Everyone/_) and more information about this program can be found in its man page (**man sed**).

We can tell **sed** to read a script from a file, using the _-f <file>_ option:
<p><code>echo Hello World | sed -f sedfile.txt</code></p>
