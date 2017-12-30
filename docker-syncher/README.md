# docker-syncher\

Maintainer [chentex](https://github.com/chentex)

Since companies depend (possibly) on docker images to release our artifacts
or applications, assuring that those images are always available is part of
our daily work.

Depending on core maintainers to always support a specific version forever
is a wrong assumption.

With that need in mind is the premise for this tools.

## syncher.sh

Keeping a copy of the github repository is a good practice, since cloning it
from the same network will improve speed on builds.

By executing this tool, you will take a github repository and clone it.

Then change the remote origin for that repository, this will allow to push to the
company's git repository.

```bash
git remote set-url origin https://github.com/YOURCOMPANY/REPOSITORY.git
```

> Note:
Be sure that the user using this has push permissions and can be able to force push.

### TL;DR

Takes a github repository and syncs it to the company's git service.

## builder.sh

Building docker images should be easy and seamless, this tool takes on standard*
docker images code repositories, then builds and tags each image on that repository.

This tool will cycle through all folders, then build the image and tag it with
the folder name.

After images have been build and tagged, it will try to upload it to the company's
docker hub.

> Note:
The user doing this should have hub's permissions to push images.

### TL;DR

Takes a git repository and builds all the images in there and the pushes them
to the company's docker hub.

## Pro-Tip

You could combine this tools too sync and build the images in the same job.
