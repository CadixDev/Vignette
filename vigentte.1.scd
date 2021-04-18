vignette(1)

# NAME

vignette - remapper for Java artefacts

# SYNOPSIS

java -jar *vignette.jar* [option]...

java -cp "*vignette.jar*" org.cadixdev.vignette.VignetteMain [option]...

# DESCRIPTION

Vignette is a tool for remapping Java artefacts using 'de-obfuscation'
mappings, built using many Cadix libraries - namely Lorenz and Atlas.

Vignette has been designed with the Minecraft modding community in mind, and
supports the commonly-used SRG mapping formats out the box (SRG, CSRG, TSRG,
XSRG).

## USING OTHER MAPPING FORMATS

It is possible to use further mapping formats, provided that a Lorenz IO module
is available for the format. The Lorenz IO module needs to be placed in the
Java classpath when running Vignette. You may then use the mapping format with
Vignette, by specifying the appropriate mapping format.

# OPTIONS

*-h, --help*
	shows help message and quits

*--version*
	shows version information and quits

*-i, --jar-in*
	the input jar file to remap

*-o, --jar-out*
	the path to write the remapped output jar

*-f, --mapping-format*
	the mapping format to use when reading mapping files

*-m, --mappings*
	the de-obfuscation mappings to remap with

*-r, --reverse*
	reverses the de-obfuscation mappings when applied

*-t, --threads*
	the number of threads to use when remapping

*-l, --library*
	the libraries to add to the Atlas classpath

# EXAMPLES

java -jar vignette.jar --jar-in input.jar --jar-out output.jar --mapping-format tsrg --mappings input.tsrg
	remaps the JAR file *input.jar* using the mappings file *input.tsrg* in the
	*tsrg* format, to be written to *output.jar*.

java -cp "vignette.jar:lorenz-io-jam.jar" org.cadixdev.vignette.VignetteMain --jar-in input.jar --jar-out output.jar --mapping-format jam --mappings input.jam
	remaps the JAR file *input.jar* using the mappings file *input.jam* in the
	*jam* format, as provided by *lorenz-io-jam.jar*, to be written to
	*output.jar*.

	the specifics of this example may differ by what operating system or
	version of Java you are running.

# COPYRIGHT

Copyright (c) 2019-2021 Jamie Mansfield <https://www.jamiemansfield.me>

Vignette is made available to you under the terms of the Mozilla Public
Licence. This means you may use, copy and distribute Vignette to others. You
are also welcome to modify the source code of Vignette as you want to meet your
needs. The Mozilla Public Licence also gives you the right to distribute your
modified versions.

# AUTHORS

Maintained by Jamie Mansfield <jmansfield@cadixdev.org>. Up-to-date sources can
be found at https://github.com/CadixDev/Vignette, issues and patches can be
submitted at the same location.
