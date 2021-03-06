# rustici_software_cloud_v2

RusticiSoftwareCloudV2 - the Ruby gem for the SCORM Cloud Rest API

REST API used for SCORM Cloud integrations.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0 beta
- Package version: 1.0.0-beta
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build rustici_software_cloud_v2.gemspec
```

Then either install the gem locally:

```shell
gem install ./rustici_software_cloud_v2-1.0.0-beta.gem
```
(for development, run `gem install --dev ./rustici_software_cloud_v2-1.0.0-beta.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'rustici_software_cloud_v2', '~> 1.0.0-beta'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'rustici_software_cloud_v2', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'rustici_software_cloud_v2'

# Setup authorization
RusticiSoftwareCloudV2.configure do |config|
  # Configure HTTP basic authorization: APP_NORMAL
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAUTH
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RusticiSoftwareCloudV2::ApplicationManagementApi.new

application_name = 'application_name_example' # String | 


begin
  #Create a new application
  result = api_instance.create_application(application_name)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling ApplicationManagementApi->create_application: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://cloud.scorm.com/api/v2/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*RusticiSoftwareCloudV2::ApplicationManagementApi* | [**create_application**](docs/ApplicationManagementApi.md#create_application) | **PUT** /appManagement/applications/{applicationName} | Create a new application
*RusticiSoftwareCloudV2::ApplicationManagementApi* | [**create_credential**](docs/ApplicationManagementApi.md#create_credential) | **POST** /appManagement/{childAppId}/credentials | Create credential
*RusticiSoftwareCloudV2::ApplicationManagementApi* | [**create_token**](docs/ApplicationManagementApi.md#create_token) | **POST** /appManagement/token | Create token
*RusticiSoftwareCloudV2::ApplicationManagementApi* | [**delete_application**](docs/ApplicationManagementApi.md#delete_application) | **DELETE** /appManagement/applications/{childAppId} | Delete an application.  If the application contains content, it must first be manually removed before calling this method, else an error will be thrown.
*RusticiSoftwareCloudV2::ApplicationManagementApi* | [**delete_credential**](docs/ApplicationManagementApi.md#delete_credential) | **DELETE** /appManagement/{childAppId}/credentials/{credentialId} | Removes `credentialId` credentials
*RusticiSoftwareCloudV2::ApplicationManagementApi* | [**get_application_configuration**](docs/ApplicationManagementApi.md#get_application_configuration) | **GET** /appManagement/configuration | Returns all configuration settings for this level
*RusticiSoftwareCloudV2::ApplicationManagementApi* | [**get_application_list**](docs/ApplicationManagementApi.md#get_application_list) | **GET** /appManagement/applications | Get list of all applications in this realm.
*RusticiSoftwareCloudV2::ApplicationManagementApi* | [**get_credentials**](docs/ApplicationManagementApi.md#get_credentials) | **GET** /appManagement/{childAppId}/credentials | List of credentials
*RusticiSoftwareCloudV2::ApplicationManagementApi* | [**set_application_configuration**](docs/ApplicationManagementApi.md#set_application_configuration) | **POST** /appManagement/configuration | Set configuration settings for this level.
*RusticiSoftwareCloudV2::ApplicationManagementApi* | [**update_credential**](docs/ApplicationManagementApi.md#update_credential) | **PUT** /appManagement/{childAppId}/credentials/{credentialId} | Update the name or status associated with `credentialId`
*RusticiSoftwareCloudV2::AuthenticationApi* | [**get_app_token**](docs/AuthenticationApi.md#get_app_token) | **POST** /oauth/authenticate/application/token | Authenticates for a oauth token
*RusticiSoftwareCloudV2::CourseApi* | [**build_course_preview_launch_link**](docs/CourseApi.md#build_course_preview_launch_link) | **POST** /courses/{courseId}/preview | Returns the launch link to use to preview this course
*RusticiSoftwareCloudV2::CourseApi* | [**build_course_preview_launch_link_with_version**](docs/CourseApi.md#build_course_preview_launch_link_with_version) | **POST** /courses/{courseId}/versions/{versionId}/preview | Returns the link to use to preview this course
*RusticiSoftwareCloudV2::CourseApi* | [**create_fetch_and_import_course_job**](docs/CourseApi.md#create_fetch_and_import_course_job) | **POST** /courses/importJobs | Start a job to fetch and import a course.
*RusticiSoftwareCloudV2::CourseApi* | [**create_upload_and_import_course_job**](docs/CourseApi.md#create_upload_and_import_course_job) | **POST** /courses/importJobs/upload | Upload a course and start an import job for it.
*RusticiSoftwareCloudV2::CourseApi* | [**delete_course**](docs/CourseApi.md#delete_course) | **DELETE** /courses/{courseId} | Delete `courseId`
*RusticiSoftwareCloudV2::CourseApi* | [**delete_course_configuration_setting**](docs/CourseApi.md#delete_course_configuration_setting) | **DELETE** /courses/{courseId}/configuration/{settingId} | Clears the `settingId` value for this course
*RusticiSoftwareCloudV2::CourseApi* | [**delete_course_tags**](docs/CourseApi.md#delete_course_tags) | **DELETE** /courses/{courseId}/tags | Delete tags for this course
*RusticiSoftwareCloudV2::CourseApi* | [**delete_course_version**](docs/CourseApi.md#delete_course_version) | **DELETE** /courses/{courseId}/versions/{versionId} | Delete version `versionId` of `courseId`
*RusticiSoftwareCloudV2::CourseApi* | [**delete_course_version_configuration_setting**](docs/CourseApi.md#delete_course_version_configuration_setting) | **DELETE** /courses/{courseId}/versions/{versionId}/configuration/{settingId} | Clears the `settingId` value for this course and version.
*RusticiSoftwareCloudV2::CourseApi* | [**get_course**](docs/CourseApi.md#get_course) | **GET** /courses/{courseId} | Get information about `courseId`
*RusticiSoftwareCloudV2::CourseApi* | [**get_course_configuration**](docs/CourseApi.md#get_course_configuration) | **GET** /courses/{courseId}/configuration | Returns all configuration settings for this course
*RusticiSoftwareCloudV2::CourseApi* | [**get_course_statements**](docs/CourseApi.md#get_course_statements) | **GET** /courses/{courseId}/xAPIStatements | Get xAPI statements for `courseId`
*RusticiSoftwareCloudV2::CourseApi* | [**get_course_tags**](docs/CourseApi.md#get_course_tags) | **GET** /courses/{courseId}/tags | Get the tags for this course
*RusticiSoftwareCloudV2::CourseApi* | [**get_course_version_configuration**](docs/CourseApi.md#get_course_version_configuration) | **GET** /courses/{courseId}/versions/{versionId}/configuration | Returns all configuration settings for this course and version.
*RusticiSoftwareCloudV2::CourseApi* | [**get_course_version_info**](docs/CourseApi.md#get_course_version_info) | **GET** /courses/{courseId}/versions/{versionId} | Get version `versionId` of `courseId`
*RusticiSoftwareCloudV2::CourseApi* | [**get_course_version_statements**](docs/CourseApi.md#get_course_version_statements) | **GET** /courses/{courseId}/versions/{versionId}/xAPIStatements | Get xAPI statements for version `versionId` of `courseId`
*RusticiSoftwareCloudV2::CourseApi* | [**get_course_versions**](docs/CourseApi.md#get_course_versions) | **GET** /courses/{courseId}/versions | Get all versions of `courseId`
*RusticiSoftwareCloudV2::CourseApi* | [**get_courses**](docs/CourseApi.md#get_courses) | **GET** /courses | Get all courses for `appId`
*RusticiSoftwareCloudV2::CourseApi* | [**get_import_job_status**](docs/CourseApi.md#get_import_job_status) | **GET** /courses/importJobs/{importJobId} | Check the status of an import job.
*RusticiSoftwareCloudV2::CourseApi* | [**put_course_tags**](docs/CourseApi.md#put_course_tags) | **PUT** /courses/{courseId}/tags | Set the tags for this course
*RusticiSoftwareCloudV2::CourseApi* | [**put_course_tags_batch**](docs/CourseApi.md#put_course_tags_batch) | **PUT** /courses/tags | Sets all of the provided tags on all of the provided courses
*RusticiSoftwareCloudV2::CourseApi* | [**set_course_configuration**](docs/CourseApi.md#set_course_configuration) | **POST** /courses/{courseId}/configuration | Set configuration settings for this course.
*RusticiSoftwareCloudV2::CourseApi* | [**set_course_title**](docs/CourseApi.md#set_course_title) | **PUT** /courses/{courseId}/title | Sets the course title for `courseId`
*RusticiSoftwareCloudV2::CourseApi* | [**set_course_version_configuration**](docs/CourseApi.md#set_course_version_configuration) | **POST** /courses/{courseId}/versions/{versionId}/configuration | Set configuration settings for this course and version.
*RusticiSoftwareCloudV2::PingApi* | [**ping_app_id**](docs/PingApi.md#ping_app_id) | **GET** /ping | Get back a message indicating that the API is working.
*RusticiSoftwareCloudV2::RegistrationApi* | [**create_new_registration_instance**](docs/RegistrationApi.md#create_new_registration_instance) | **POST** /registrations/{registrationId}/instances | Create a new instance for this registration specified by the registration ID
*RusticiSoftwareCloudV2::RegistrationApi* | [**create_registration**](docs/RegistrationApi.md#create_registration) | **POST** /registrations | Create a registration.
*RusticiSoftwareCloudV2::RegistrationApi* | [**delete_registration**](docs/RegistrationApi.md#delete_registration) | **DELETE** /registrations/{registrationId} | Delete `registrationId`
*RusticiSoftwareCloudV2::RegistrationApi* | [**delete_registration_configuration_setting**](docs/RegistrationApi.md#delete_registration_configuration_setting) | **DELETE** /registrations/{registrationId}/configuration/{settingId} | Clears the `settingId` value for this registration
*RusticiSoftwareCloudV2::RegistrationApi* | [**delete_registration_instance_configuration_setting**](docs/RegistrationApi.md#delete_registration_instance_configuration_setting) | **DELETE** /registrations/{registrationId}/instances/{instanceId}/configuration/{settingId} | Clears the `settingId` value for this registration instance
*RusticiSoftwareCloudV2::RegistrationApi* | [**delete_registration_progress**](docs/RegistrationApi.md#delete_registration_progress) | **DELETE** /registrations/{registrationId}/progress | Delete registration progress (clear registration)
*RusticiSoftwareCloudV2::RegistrationApi* | [**delete_registration_tags**](docs/RegistrationApi.md#delete_registration_tags) | **DELETE** /registrations/{registrationId}/tags | Delete tags for this registration
*RusticiSoftwareCloudV2::RegistrationApi* | [**delete_registrations_global_data**](docs/RegistrationApi.md#delete_registrations_global_data) | **DELETE** /registrations/{registrationId}/globalData | Delete global data associated with `registrationId`
*RusticiSoftwareCloudV2::RegistrationApi* | [**get_registration_configuration**](docs/RegistrationApi.md#get_registration_configuration) | **GET** /registrations/{registrationId}/configuration | Returns all configuration settings for this registration
*RusticiSoftwareCloudV2::RegistrationApi* | [**get_registration_instance_configuration**](docs/RegistrationApi.md#get_registration_instance_configuration) | **GET** /registrations/{registrationId}/instances/{instanceId}/configuration | Returns all configuration settings for this registration instance
*RusticiSoftwareCloudV2::RegistrationApi* | [**get_registration_instance_launch_history**](docs/RegistrationApi.md#get_registration_instance_launch_history) | **GET** /registrations/{registrationId}/instances/{instanceId}/launchHistory | Returns history of this registration's launches
*RusticiSoftwareCloudV2::RegistrationApi* | [**get_registration_instance_progress**](docs/RegistrationApi.md#get_registration_instance_progress) | **GET** /registrations/{registrationId}/instances/{instanceId} | Get registration progress for instance `instanceId` of `registrationId`
*RusticiSoftwareCloudV2::RegistrationApi* | [**get_registration_instance_statements**](docs/RegistrationApi.md#get_registration_instance_statements) | **GET** /registrations/{registrationId}/instances/{instanceId}/xAPIStatements | Get xAPI statements for instance `instanceId` of `registrationId`
*RusticiSoftwareCloudV2::RegistrationApi* | [**get_registration_instances**](docs/RegistrationApi.md#get_registration_instances) | **GET** /registrations/{registrationId}/instances | Get all the instances of this the registration specified by the registration ID
*RusticiSoftwareCloudV2::RegistrationApi* | [**get_registration_launch_history**](docs/RegistrationApi.md#get_registration_launch_history) | **GET** /registrations/{registrationId}/launchHistory | Returns history of this registration's launches
*RusticiSoftwareCloudV2::RegistrationApi* | [**get_registration_launch_link**](docs/RegistrationApi.md#get_registration_launch_link) | **POST** /registrations/{registrationId}/launchLink | Returns the link to use to launch this registration
*RusticiSoftwareCloudV2::RegistrationApi* | [**get_registration_progress**](docs/RegistrationApi.md#get_registration_progress) | **GET** /registrations/{registrationId} | Get registration progress for `registrationId`
*RusticiSoftwareCloudV2::RegistrationApi* | [**get_registration_statements**](docs/RegistrationApi.md#get_registration_statements) | **GET** /registrations/{registrationId}/xAPIStatements | Get xAPI statements for `registrationId`
*RusticiSoftwareCloudV2::RegistrationApi* | [**get_registration_tags**](docs/RegistrationApi.md#get_registration_tags) | **GET** /registrations/{registrationId}/tags | Get the tags for this registration
*RusticiSoftwareCloudV2::RegistrationApi* | [**get_registrations**](docs/RegistrationApi.md#get_registrations) | **GET** /registrations | Gets a list of registrations including a summary of the status of each registration.
*RusticiSoftwareCloudV2::RegistrationApi* | [**put_registration_tags**](docs/RegistrationApi.md#put_registration_tags) | **PUT** /registrations/{registrationId}/tags | Set the tags for this registration
*RusticiSoftwareCloudV2::RegistrationApi* | [**put_registration_tags_batch**](docs/RegistrationApi.md#put_registration_tags_batch) | **PUT** /registrations/tags | Sets all of the provided tags on all of the provided registrations
*RusticiSoftwareCloudV2::RegistrationApi* | [**registration_exists**](docs/RegistrationApi.md#registration_exists) | **HEAD** /registrations/{registrationId} | Does this registration exist?
*RusticiSoftwareCloudV2::RegistrationApi* | [**set_registration_configuration**](docs/RegistrationApi.md#set_registration_configuration) | **POST** /registrations/{registrationId}/configuration | Set configuration settings for this registration.
*RusticiSoftwareCloudV2::RegistrationApi* | [**set_registration_instance_configuration**](docs/RegistrationApi.md#set_registration_instance_configuration) | **POST** /registrations/{registrationId}/instances/{instanceId}/configuration | Set configuration settings for this registration instance.


## Documentation for Models

 - [RusticiSoftwareCloudV2::ActivityResultSchema](docs/ActivityResultSchema.md)
 - [RusticiSoftwareCloudV2::ApplicationListSchema](docs/ApplicationListSchema.md)
 - [RusticiSoftwareCloudV2::ApplicationSchema](docs/ApplicationSchema.md)
 - [RusticiSoftwareCloudV2::ApplicationToken](docs/ApplicationToken.md)
 - [RusticiSoftwareCloudV2::CommentSchema](docs/CommentSchema.md)
 - [RusticiSoftwareCloudV2::CompletionAmountSchema](docs/CompletionAmountSchema.md)
 - [RusticiSoftwareCloudV2::CourseActivitySchema](docs/CourseActivitySchema.md)
 - [RusticiSoftwareCloudV2::CourseListNonPagedSchema](docs/CourseListNonPagedSchema.md)
 - [RusticiSoftwareCloudV2::CourseListSchema](docs/CourseListSchema.md)
 - [RusticiSoftwareCloudV2::CourseReferenceSchema](docs/CourseReferenceSchema.md)
 - [RusticiSoftwareCloudV2::CourseSchema](docs/CourseSchema.md)
 - [RusticiSoftwareCloudV2::CourseTagsBatchSchema](docs/CourseTagsBatchSchema.md)
 - [RusticiSoftwareCloudV2::CreateRegistrationSchema](docs/CreateRegistrationSchema.md)
 - [RusticiSoftwareCloudV2::CredentialCreatedSchema](docs/CredentialCreatedSchema.md)
 - [RusticiSoftwareCloudV2::CredentialListSchema](docs/CredentialListSchema.md)
 - [RusticiSoftwareCloudV2::CredentialRequestSchema](docs/CredentialRequestSchema.md)
 - [RusticiSoftwareCloudV2::CredentialSchema](docs/CredentialSchema.md)
 - [RusticiSoftwareCloudV2::ImportFetchRequestSchema](docs/ImportFetchRequestSchema.md)
 - [RusticiSoftwareCloudV2::ImportJobResultSchema](docs/ImportJobResultSchema.md)
 - [RusticiSoftwareCloudV2::ImportResultSchema](docs/ImportResultSchema.md)
 - [RusticiSoftwareCloudV2::IntegerResultSchema](docs/IntegerResultSchema.md)
 - [RusticiSoftwareCloudV2::ItemValuePairSchema](docs/ItemValuePairSchema.md)
 - [RusticiSoftwareCloudV2::LaunchHistoryListSchema](docs/LaunchHistoryListSchema.md)
 - [RusticiSoftwareCloudV2::LaunchHistorySchema](docs/LaunchHistorySchema.md)
 - [RusticiSoftwareCloudV2::LaunchLinkRequestSchema](docs/LaunchLinkRequestSchema.md)
 - [RusticiSoftwareCloudV2::LaunchLinkSchema](docs/LaunchLinkSchema.md)
 - [RusticiSoftwareCloudV2::LearnerPreferenceSchema](docs/LearnerPreferenceSchema.md)
 - [RusticiSoftwareCloudV2::LearnerSchema](docs/LearnerSchema.md)
 - [RusticiSoftwareCloudV2::LinkSchema](docs/LinkSchema.md)
 - [RusticiSoftwareCloudV2::MessageSchema](docs/MessageSchema.md)
 - [RusticiSoftwareCloudV2::MetadataSchema](docs/MetadataSchema.md)
 - [RusticiSoftwareCloudV2::ObjectiveSchema](docs/ObjectiveSchema.md)
 - [RusticiSoftwareCloudV2::PermissionsSchema](docs/PermissionsSchema.md)
 - [RusticiSoftwareCloudV2::PingSchema](docs/PingSchema.md)
 - [RusticiSoftwareCloudV2::PostBackSchema](docs/PostBackSchema.md)
 - [RusticiSoftwareCloudV2::RegistrationCompletion](docs/RegistrationCompletion.md)
 - [RusticiSoftwareCloudV2::RegistrationListSchema](docs/RegistrationListSchema.md)
 - [RusticiSoftwareCloudV2::RegistrationSchema](docs/RegistrationSchema.md)
 - [RusticiSoftwareCloudV2::RegistrationSuccess](docs/RegistrationSuccess.md)
 - [RusticiSoftwareCloudV2::RegistrationTagsBatchSchema](docs/RegistrationTagsBatchSchema.md)
 - [RusticiSoftwareCloudV2::ResponseError](docs/ResponseError.md)
 - [RusticiSoftwareCloudV2::RuntimeInteractionSchema](docs/RuntimeInteractionSchema.md)
 - [RusticiSoftwareCloudV2::RuntimeObjectiveSchema](docs/RuntimeObjectiveSchema.md)
 - [RusticiSoftwareCloudV2::RuntimeSchema](docs/RuntimeSchema.md)
 - [RusticiSoftwareCloudV2::ScoreSchema](docs/ScoreSchema.md)
 - [RusticiSoftwareCloudV2::SettingItem](docs/SettingItem.md)
 - [RusticiSoftwareCloudV2::SettingListSchema](docs/SettingListSchema.md)
 - [RusticiSoftwareCloudV2::SettingMetadata](docs/SettingMetadata.md)
 - [RusticiSoftwareCloudV2::SettingValidValue](docs/SettingValidValue.md)
 - [RusticiSoftwareCloudV2::SettingsIndividualSchema](docs/SettingsIndividualSchema.md)
 - [RusticiSoftwareCloudV2::SettingsPostSchema](docs/SettingsPostSchema.md)
 - [RusticiSoftwareCloudV2::SharedDataEntrySchema](docs/SharedDataEntrySchema.md)
 - [RusticiSoftwareCloudV2::StaticPropertiesSchema](docs/StaticPropertiesSchema.md)
 - [RusticiSoftwareCloudV2::StringResultSchema](docs/StringResultSchema.md)
 - [RusticiSoftwareCloudV2::TagListSchema](docs/TagListSchema.md)
 - [RusticiSoftwareCloudV2::TagPostSchema](docs/TagPostSchema.md)
 - [RusticiSoftwareCloudV2::TitleSchema](docs/TitleSchema.md)
 - [RusticiSoftwareCloudV2::TokenRequestSchema](docs/TokenRequestSchema.md)
 - [RusticiSoftwareCloudV2::XapiAccount](docs/XapiAccount.md)
 - [RusticiSoftwareCloudV2::XapiActivity](docs/XapiActivity.md)
 - [RusticiSoftwareCloudV2::XapiActivityDefinition](docs/XapiActivityDefinition.md)
 - [RusticiSoftwareCloudV2::XapiAgentGroup](docs/XapiAgentGroup.md)
 - [RusticiSoftwareCloudV2::XapiAttachment](docs/XapiAttachment.md)
 - [RusticiSoftwareCloudV2::XapiContext](docs/XapiContext.md)
 - [RusticiSoftwareCloudV2::XapiContextActivity](docs/XapiContextActivity.md)
 - [RusticiSoftwareCloudV2::XapiInteractionComponent](docs/XapiInteractionComponent.md)
 - [RusticiSoftwareCloudV2::XapiResult](docs/XapiResult.md)
 - [RusticiSoftwareCloudV2::XapiScore](docs/XapiScore.md)
 - [RusticiSoftwareCloudV2::XapiStatement](docs/XapiStatement.md)
 - [RusticiSoftwareCloudV2::XapiStatementReference](docs/XapiStatementReference.md)
 - [RusticiSoftwareCloudV2::XapiStatementResult](docs/XapiStatementResult.md)
 - [RusticiSoftwareCloudV2::XapiVerb](docs/XapiVerb.md)


## Documentation for Authorization


### APP_MANAGEMENT

- **Type**: HTTP basic authentication

### APP_NORMAL

- **Type**: HTTP basic authentication

### LAUNCH_TOKEN

- **Type**: API key
- **API key parameter name**: launchToken
- **Location**: URL query string

### OAUTH

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  - read: Grants read access
  - write: Grants write access
  - delete: Grants deletion access
  - admin: Grants read, write, and account management access
  - read:course: Grants read access to course methods
  - write:course: Grants write access to course methods
  - delete:course: Grants deletion access to course methods
  - read:dispatch: Grants read access to dispatch methods
  - write:dispatch: Grants write access to dispatch methods
  - delete:dispatch: Grants deletion access to dispatch methods
  - read:invitation: Grants read access to invitation methods
  - write:invitation: Grants write access to invitation methods
  - delete:invitation: Grants deletion access to invitation methods
  - read:ping: Grants read access to the ping method
  - read:registration: Grants read access to registration methods
  - write:registration: Grants write access to registration methods
  - delete:registration: Grants deletion access to registration methods
  - read:reporting: Grants read access to reporting methods
  - read:xapicredential: Grants read access to xapi credential methods
  - write:xapicredential: Grants write access to xapi credential methods
  - delete:xapicredential: Grants deletion access to xapi credential methods
  - read:xapipipe: Grants read access to xapi pipe methods
  - write:xapipipe: Grants write access to xapi pipe methods
  - delete:xapipipe: Grants deletion access to xapi pipe methods
  - read:appmgmt: Grants read access to app management methods
  - write:appmgmt: Grants write access to app management methods
  - delete:appmgmt: Grants deletion access to app management methods

### URL_TOKEN

- **Type**: API key
- **API key parameter name**: authtoken
- **Location**: URL query string

