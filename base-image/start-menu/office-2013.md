# Office 2013 and 2016

Its possible to have a LayoutModification.xml contain both Office 2013 and 2016 tiles, and have it dynamically populated depending on which version is installed.

You can simply make some edits in your LayoutModification.xml to include both links for Office 2013 and Office 2016.  In this case, the first entry that is located takes the position of the tile.  This means that if Office 2013 is installed, and then Access 2016 is installed, all the tiles except Access will point to the 2013 versions since they come second in the XML.

\(To view this image properly, right click and open image in new tab\)

![](/assets/LayoutModification Office Complete.png)

---

So now we have a since LayoutModification.xml that is good Office 2013 and Office 2016

![](/assets/Office Layout Complete 2013.png)

