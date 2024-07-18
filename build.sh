# #!/bin/bash

# # Install Composer dependencies
# composer install

# # Run any other build steps you need here

#!/bin/bash

# Install Composer dependencies
curl -sS https://getcomposer.org/installer | php
php composer.phar install
