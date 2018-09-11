# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Added
- config.yml file to hold all project deploy and develop configuration files instead of using .env

## [0.8.0] - 2018-09-05
### Changed
- Moved to mysql v 5.6

## [0.7.1] - 2018-09-04
### Fixed
- spaces to tabs for Makefile.sample

## [0.7.0] - 2018-09-04
### Changed
- Increased max_allowed_packet to 500M for mysql

## [0.6.0] - 2018-08-31
### Added
- mysql 5.6 compatibility
- added get-wp script link to Makefile
- added install magento script

## [0.5.1] - 2018-08-21
### Changed
- php.ini post_max_size for wp importer

## [0.5.0] - 2018-08-21
### Changed
- Updated deploy scripts
- mysqli support for wp integration

### Added
- Added wordpress integration script

## [0.4.0] - 2018-08-09
### Changed
- Swapped capistrano for capistrano m2

## [0.3.0] - 2018-07-26
### Added
- db shell script
- Script to ssh into db container
- User option for ssh into magento container script
- Added db-shell task to readme
- Added domain name update to the db import script

### Changed
- Updated git repo url in readme

## [0.2.2] - 2018-07-25
### Added
- Renamed conf dir

## [0.2.1] - 2018-07-25
### Added
- build script

## [0.2.0] - 2018-07-25
### Changed
- Moved magento container build into own dir
- Updated xdebug conf

## [0.1.1] - 2018-07-25
### Fixed
- Removed unwanted variables in makefile sample

## 0.1.0 - 2018-07-25
### Added
- Initial changelog input
- MIT License

### Changed
- Updated init script to include dev tag version + master for dev purposes

[Unreleased]: https://github.com//brandography/m2-dev/compare/0.8.0...HEAD
[0.8.0]: https://github.com//brandography/m2-dev/compare/0.7.1...0.8.0
[0.7.1]: https://github.com//brandography/m2-dev/compare/0.7.0...0.7.1
[0.7.0]: https://github.com//brandography/m2-dev/compare/0.6.0...0.7.0
[0.6.0]: https://github.com//brandography/m2-dev/compare/0.5.1...0.6.0
[0.5.1]: https://github.com//brandography/m2-dev/compare/0.5.0...0.5.1
[0.5.0]: https://github.com//brandography/m2-dev/compare/0.4.0...0.5.0
[0.4.0]: https://github.com//brandography/m2-dev/compare/0.3.0...0.4.0
[0.3.0]: https://github.com//brandography/m2-dev/compare/0.2.2...0.3.0
[0.2.2]: https://github.com//brandography/m2-dev/compare/0.2.1...0.2.2
[0.2.1]: https://github.com//brandography/m2-dev/compare/0.2.0...0.2.1
[0.2.0]: https://github.com//brandography/m2-dev/compare/0.1.1...0.2.0
[0.1.1]: https://github.com//brandography/m2-dev/compare/0.1.0...0.1.1
