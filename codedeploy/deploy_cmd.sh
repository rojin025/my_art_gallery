echo "make sure any changes you want are committed and pushed to github before deploying!"
aws deploy create-deployment \
 --application-name my_art_gallery \
 --deployment-config-name CodeDeployDefault.OneAtATime \
 --deployment-group-name my_art_gallery \
 --description "Demo Deployment" \
 --github-location repository=rojin025/my_art_gallery,commitId=$(git rev-parse HEAD) \
