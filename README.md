# GroupDocs Comparison
===================

GroupDocs Comparison plugin for Pligg CMS
With GroupDocs Comparison plugin you can work with [Sign documents online] (http://groupdocs.com/apps/Comparison) directly from within your Pligg CMS.


###Plugin Manual Installation Instructions:

1. Download archive and place admin_groupdocsComparison (which contain module files) folder in site/modiles
2. By default Pligg CMS doesn't come with TinyMCE, but If you have TinyMCE installed you have to exchange file called tiny_mce.js in "modules/tynimce/js" with the one in module "admin_groupdocsComparison/tiny_mce.js". Or add "+iframe[src|style|width|height|scrolling|marginwidth|marginheight|frameborder]" with double quotes instead of 0(zero) in extended_valid_elements:0, in that file.
3. Go to admin and under Modules -> Uninstalled Modules install GroupDocs
4. If plugin doesn't work with tinyMCE please copy tiny_MCE.js file from plugin directory to modules/tinymce/js with rewrite

License
-------

	Copyright 2012 GroupDocs.

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

	   http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.

###ChangeLog
2012-12-05
1.  Client CMS name tracking was added(referer parameter in the URL).

###[Sign, Manage, Annotate, Assemble, Compare and Convert Documents with GroupDocs](http://groupdocs.com)
* [Sign documents online](http://groupdocs.com/apps/Comparison)
* [Comparison in your Pligg CMS website](http://forums.pligg.com/free-modules)
* [Sign with GroupDocs Comparison](http://groupdocs.com/apps/Comparison)


###Created by [GroupDocs Marketplace Team](http://groupdocs.com/marketplace/).