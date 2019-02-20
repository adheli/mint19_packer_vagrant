# mint19_packer_vagrant
Linux Mint 19 Configuration for Python project with Packer and Vagrant

# Usage

You need to have installed on your machine: Virtual Box, Packer and Vagrant.

Please edit only script/dev.sh file to add any new packages you need to install before packing the box to Vagrant.

If you need to update keyboard, timezone and language configurations, please check and edit the hhtp/mint-XX.seed file.

For Vagrant pre-configured options, check and edit tpl/vagrant-mint-cinnamon-XX.tpl file.

# Troubleshooting

I had problems using `packer build -var-file=mint-cinnamon-19.0.json core_template.json` command, so any different images, you can create a new-image-version.json file for packer, but copy and paste the values to the variables section on core_template.json and then run `packer build core_template.json`. This will build your box.
