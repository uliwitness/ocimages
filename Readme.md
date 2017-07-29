# OCIMAGES

A little tool that generates constants for the names of all the images
in a folder or AssetCatalog, suitable for passing to UIImage(named:).

## Syntax

	ocimages [--language {swift|objective-c}] [--class-prefix <prefixString>] <assetCatalogOrFolder>

If you do not specify a language, it will default to Swift.

If you provide a prefix string, the generated class name and generated file name(s) will
have this string stuck on their front. This is useful for Objective-C, where your asset
catalog might have an un-prefixed name like "Assets" so you can turn it into ULIAssets
for the constants.

## Why?

When you write

	let myImage = UIImage(named: "GraceHopper")

or

	UIImage * myImage = [UIImage imageNamed: @"GraceHopper"]

it is easy to mistype the image name and the compiler can't tell you.
ocimages will auto-generate constants from the actual file names that
let you write

	let myImage = UIImage(named: Assets.GraceHopper)

resp.

	UIImage * myImage = [UIImage imageNamed: ULIAssetsGraceHopper]

for the same level of readability, but now the compiler knows what the
image names that exist are, and it can tell you if you mis-type, and
even autocomplete.


## License

	Copyright 2017 by Uli Kusterer.

	This software is provided 'as-is', without any express or implied
	warranty. In no event will the authors be held liable for any damages
	arising from the use of this software.

	Permission is granted to anyone to use this software for any purpose,
	including commercial applications, and to alter it and redistribute it
	freely, subject to the following restrictions:

	1. The origin of this software must not be misrepresented; you must not
	claim that you wrote the original software. If you use this software
	in a product, an acknowledgment in the product documentation would be
	appreciated but is not required.

	2. Altered source versions must be plainly marked as such, and must not be
	misrepresented as being the original software.

	3. This notice may not be removed or altered from any source
	distribution.
