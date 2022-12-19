Open Newsletter email to print
Download webpage complete

# In the console

# Remove the print function, and the Chrome Extensions ones
# Remove the top header with logo and email container
# Remove the subject container
# Remove email header (2 commands)
# Remove the horizontal lines
# Update Mindee's logo file name
# Update social media Twitter account src
# Update social media LinkedIn account src
# Replace all images src with the right paths
document.querySelectorAll("script").forEach(script => { script.remove(); });
document.querySelector("[class='bodycontainer'").querySelector(":scope > table").remove();
document.querySelector("[class='maincontent'").querySelector(":scope > table").remove();
document.evaluate("//b[contains(., 'Mindee Devrel Team')]", document, null, XPathResult.ANY_TYPE, null).iterateNext().parentNode.parentNode.parentNode.remove();
document.evaluate("//tr[contains(., 'Reply-To:')]", document, null, XPathResult.ANY_TYPE, null).iterateNext().remove();
document.querySelectorAll("hr").forEach(hr => { hr.remove(); });
document.querySelector(":scope img").src="images/logo.png";
document.querySelector("[title='Twitter'").querySelector("[title='Twitter'").src="images/twitter.png";
document.querySelector("[title='LinkedIn'").querySelector("[title='LinkedIn'").src="images/linkedin.png";
document.querySelectorAll("img").forEach(img => { img.src = 'images'+ img.src.slice(img.src.lastIndexOf('/')); });

# In command line
# Set the version Number
# Rename the HTML file
# Rename the folder
NEWSLETTER=
find . -maxdepth 1 -type f -name "Mindee Mail - Mindee.*html" -exec mv "{}" Newsletter-09.html ';'
find . -maxdepth 1 -type d -name "Mindee Mail - Mindee.*" -exec mv "{}" images ';'
code Newsletter-09.html

# Manually remove not needed images

# Manually rename the images to random name & change them in the HTML file
