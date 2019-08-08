include_controls 'canonical-ubuntu-16.04-lts-stig-baseline' do
  control 'V-75393' do
    title "The Ubuntu operating system must display the Standard Mandatory CMS
    Notice and Consent Banner before granting local or remote access to the system
    via a graphical user logon."
    desc "Display of a standardized and approved use notification before
    granting access to the Ubuntu operating system ensures privacy and security
    notification verbiage used is consistent with applicable federal laws,
    Executive Orders, directives, policies, regulations, standards, and guidance.
    
    System use notifications are required only for access via logon interfaces
    with human users and are not required when such human interfaces do not exist.
    
    The banner must be formatted in accordance with applicable CMS policy. Use
    the following verbiage for Ubuntu operating systems that can accommodate
    banners of 1300 characters:
    
    * This warning banner provides privacy and security notices consistent with applicable federal laws, directives, and other federal guidance for accessing this Government system, which includes (1) this computer network, (2) all computers connected to this network, and (3) all devices and storage media attached to this network or to a computer on this network.
    * This system is provided for Government authorized use only.
    * Unauthorized or improper use of this system is prohibited and may result in disciplinary action and/or civil and criminal penalties.
    * Personal use of social media and networking sites on this system is limited as to not interfere with official work duties and is subject to monitoring.
    * By using this system, you understand and consent to the following:
    - The Government may monitor, record, and audit your system usage, including usage of personal devices and email systems for official duties or to conduct HHS business. Therefore, you have no reasonable expectation of privacy regarding any communication or data transiting or stored on this system. At any time, and for any lawful Government purpose, the government may monitor, intercept, and search and seize any communication or data transiting or stored on this system.
    - Any communication or data transiting or stored on this system may be disclosed or used for any lawful Government purpose'
    
    Use the following verbiage for Ubuntu operating systems that have severe
    limitations on the number of characters that can be displayed in the banner:
    
    I've read and consent to terms in IS user agreem't."
    desc "fix", "Configure the Ubuntu operating system to display the Standard
    Mandatory CMS Notice and Consent Banner before granting access to the system.
    
    Create a database that will contain the system wide graphical user logon
    settings (if it does not already exist) with the following command:
    
    # sudo touch /etc/dconf/db/local.d/01-banner-message
    
    Add the following line to the \"[org/gnome/login-screen]\" section of the
    \"/etc/dconf/db/local.d/01-banner-message\" file:
    
    [org/gnome/login-screen]
    banner-message-enable=true"
  end
  control 'V-75435' do
    title "The Ubuntu operating system must display the Standard Mandatory CMS
    Notice and Consent Banner before granting local or remote access to the system
    via a command line user logon."
    desc "Display of a standardized and approved use notification before
    granting access to the Ubuntu operating system ensures privacy and security
    notification verbiage used is consistent with applicable federal laws,
    Executive Orders, directives, policies, regulations, standards, and guidance.
    
    System use notifications are required only for access via logon interfaces
    with human users and are not required when such human interfaces do not exist.
    
    The banner must be formatted in accordance with applicable CMS policy. Use
    the following verbiage for Ubuntu operating systems that can accommodate
    banners of 1300 characters:
    
    * This warning banner provides privacy and security notices consistent with applicable federal laws, directives, and other federal guidance for accessing this Government system, which includes (1) this computer network, (2) all computers connected to this network, and (3) all devices and storage media attached to this network or to a computer on this network.
    * This system is provided for Government authorized use only.
    * Unauthorized or improper use of this system is prohibited and may result in disciplinary action and/or civil and criminal penalties.
    * Personal use of social media and networking sites on this system is limited as to not interfere with official work duties and is subject to monitoring.
    * By using this system, you understand and consent to the following:
    - The Government may monitor, record, and audit your system usage, including usage of personal devices and email systems for official duties or to conduct HHS business. Therefore, you have no reasonable expectation of privacy regarding any communication or data transiting or stored on this system. At any time, and for any lawful Government purpose, the government may monitor, intercept, and search and seize any communication or data transiting or stored on this system.
    - Any communication or data transiting or stored on this system may be disclosed or used for any lawful Government purpose'
    
    Use the following verbiage for Ubuntu operating systems that have severe
    limitations on the number of characters that can be displayed in the banner:
    
    I've read and consent to terms in IS user agreem't."
    desc "check", "Verify the Ubuntu operating system displays the Standard
    Mandatory CMS Notice and Consent Banner before granting access to the Ubuntu
    operating system via a command line user logon.
    
    Check that the Ubuntu operating system displays a banner at the command line
    login screen with the following command:
    
    # cat /etc/issue
    
    If the banner is set correctly it will return the following text:
    
    * This warning banner provides privacy and security notices consistent with applicable federal laws, directives, and other federal guidance for accessing this Government system, which includes (1) this computer network, (2) all computers connected to this network, and (3) all devices and storage media attached to this network or to a computer on this network.
    * This system is provided for Government authorized use only.
    * Unauthorized or improper use of this system is prohibited and may result in disciplinary action and/or civil and criminal penalties.
    * Personal use of social media and networking sites on this system is limited as to not interfere with official work duties and is subject to monitoring.
    * By using this system, you understand and consent to the following:
    - The Government may monitor, record, and audit your system usage, including usage of personal devices and email systems for official duties or to conduct HHS business. Therefore, you have no reasonable expectation of privacy regarding any communication or data transiting or stored on this system. At any time, and for any lawful Government purpose, the government may monitor, intercept, and search and seize any communication or data transiting or stored on this system.
    - Any communication or data transiting or stored on this system may be disclosed or used for any lawful Government purpose
    
    If the banner text does not match the Standard Mandatory CMS Notice and Consent
    Banner exactly, this is a finding."
    desc "fix", "Configure the Ubuntu operating system to display the Standard
    Mandatory CMS Notice and Consent Banner before granting access to the system
    via command line logon.
    
    Edit the \"/etc/issue\" file to replace the default text with the Standard
    Mandatory CMS Notice and Consent Banner. The CMS required text is:
    * This warning banner provides privacy and security notices consistent with applicable federal laws, directives, and other federal guidance for accessing this Government system, which includes (1) this computer network, (2) all computers connected to this network, and (3) all devices and storage media attached to this network or to a computer on this network.
    * This system is provided for Government authorized use only.
    * Unauthorized or improper use of this system is prohibited and may result in disciplinary action and/or civil and criminal penalties.
    * Personal use of social media and networking sites on this system is limited as to not interfere with official work duties and is subject to monitoring.
    * By using this system, you understand and consent to the following:
    - The Government may monitor, record, and audit your system usage, including usage of personal devices and email systems for official duties or to conduct HHS business. Therefore, you have no reasonable expectation of privacy regarding any communication or data transiting or stored on this system. At any time, and for any lawful Government purpose, the government may monitor, intercept, and search and seize any communication or data transiting or stored on this system.
    - Any communication or data transiting or stored on this system may be disclosed or used for any lawful Government purpose"
  end
  control 'V-75443' do
    title "The Ubuntu operating system must limit the number of concurrent
    sessions to ten for all accounts and/or account types."
    desc "check", "Verify that the Ubuntu operating system limits the number of
    concurrent sessions to \"10\" for all accounts and/or account types by running
    the following command:
    
    # grep maxlogins /etc/security/limits.conf
    
    The result must contain the following line:
    
    * hard maxlogins 10
    
    If the \"maxlogins\" item is missing or the value is not set to \"10\",
    or is commented out,  this is a finding."
    desc "fix", "Configure the Ubuntu operating system to limit the number of
    concurrent sessions to ten for all accounts and/or account types.
    
    Add the following line to the top of the /etc/security/limits.conf:
    
    * hard maxlogins 10"
  end
  control 'V-75445' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75457' do
    title "The Ubuntu operating system must require the change of at least 6
    characters when passwords are changed."
    desc "If the Ubuntu operating system allows the user to consecutively reuse
    extensive portions of passwords, this increases the chances of password
    compromise by increasing the window of opportunity for attempts at guessing and
    brute-force attacks.
    
        The number of changed characters refers to the number of changes required
    with respect to the total number of positions in the current password. In other
    words, characters may be the same within the two passwords; however, the
    positions of the like characters must be different.
    
        If the password length is an odd number then number of changed characters
    must be rounded up. For example, a password length of 15 characters must
    require the change of at least 6 characters."
    desc "check", "Verify the Ubuntu operating system requires the change of at
    least \"6\" characters when passwords are changed.
    
    Determine if the field \"difok\" is set in the \"/etc/security/pwquality.conf\"
    file with the following command:
    
    # grep -i \"difok\" /etc/security/pwquality.conf
    difok=6
    
    If the \"difok\" parameter is less than \"6\", or is commented out, this is a
    finding."
    desc "fix", "Configure the Ubuntu operating system to require the change of at
    least \"6\" characters when passwords are changed.
    
    Add or update the following line in the \"/etc/security/pwquality.conf\" file
    to include the \"difok=6\" parameter:
    
    difok=6"
  end
  control 'V-75459' do
    desc "Passwords need to be protected at all times, and encryption is the
    standard method for protecting passwords. If passwords are not encrypted, they
    can be plainly read (i.e., clear text) and easily compromised.
    
        Unapproved mechanisms that are used for authentication to the cryptographic
    module are not verified and therefore cannot be relied upon to provide
    confidentiality or integrity, and CMS data may be compromised.
    
        FIPS 140-2 is the current standard for validating that mechanisms used to
    access cryptographic modules utilize authentication that meets CMS requirements."
  end
  control 'V-75465' do
    desc "Unapproved mechanisms that are used for authentication to the
    cryptographic module are not verified and therefore cannot be relied upon to
    provide confidentiality or integrity, and CMS data may be compromised.
    
        Ubuntu operating systems utilizing encryption are required to use
    FIPS-compliant mechanisms for authenticating to cryptographic modules.
    
        FIPS 140-2 is the current standard for validating that mechanisms used to
    access cryptographic modules utilize authentication that meets CMS
    requirements. This allows for Security Levels 1, 2, 3, or 4 for use on a
    general purpose computing system."
    desc "fix", "Configure the Ubuntu operating system to use a FIPS 140-2
    approved cryptographic hashing algorithm for system authentication.
    
    Edit/modify the following line in the file \"/etc/pam.d/common-password\" file
    to include the sha512 option for pam_unix.so:
    
    password        [success=1 default=ignore]      pam_unix.so obscure sha512
    shadow remember=12"
  end
  control 'V-75469' do
    title "Emergency administrator accounts must be provisioned with an expiration time of
    24 hours or less."
    desc "If emergency administrator accounts remain active when no longer needed or for an excessive period, these accounts may be used to gain unauthorized access. To mitigate this risk, automated termination of all emergency accounts must be set upon account creation.

    If emergency accounts are used, the Ubuntu operating system must be configured to automatically terminate these types of accounts after a CMS-defined time period of 24 hours."
    desc "check", "Verify that emergency accounts have been provisioned with an
    expiration date for 24 hours.
    
    For every existing emergency account, run the following command to obtain its
    account expiration information.
    
    # sudo chage -l system_account_name
    
    Verify each of these accounts has an expiration date set within 24 hours.
    If any emergency accounts have no expiration date set or do not expire within
    24 hours, this is a finding."
    desc "fix", "If an emergency account must be created configure the system to
    terminate the account after a 24 hour time period with the following command to set an expiration date on it. Substitute \"system_account_name\" with the account to be created.
    
    # sudo chage -E `date -d \"+1 days\" +%Y-%m-%d` system_account_name"
  end
  control 'V-75475' do
    title "Passwords must be prohibited from reuse for a minimum of six
    generations."
    desc "check", "Verify that the Ubuntu operating system prevents passwords from
    being reused for a minimum of six generations by running the following command:
    
    # grep -i remember /etc/pam.d/common-password
    
    password [success=1 default=ignore]      pam_unix.so obscure sha512 remember=6
    rounds=5000
    
    If the \"remember\" parameter value is not greater than or equal to \"6\", is
    commented out, or is not set at all this is a finding."
    desc "fix", "Configure the Ubuntu operating system prevents passwords from
    being reused for a minimum of six generations.
    
    Add or modify the \"remember\" parameter value to the following line in
    \"/etc/pam.d/common-password\" file:
    
    password [success=1 default=ignore]      pam_unix.so obscure sha512 remember=6
    rounds=5000"
  end
  control 'V-75485' do
    title "Account identifiers (individuals, groups, roles, and devices) must
    disabled after 60 days of inactivity."
    desc "Inactive identifiers pose a risk to systems and applications because
    attackers may exploit an inactive identifier and potentially obtain undetected
    access to the system. Owners of inactive accounts will not notice if
    unauthorized access to their user account has been obtained.
    
        Ubuntu operating systems need to track periods of inactivity and disable
    application identifiers after 60 days of inactivity."
    desc "check", "Verify the account identifiers (individuals, groups, roles, and
    devices) are disabled after \"60\" days of inactivity with the following
    command:
    
    Check the account inactivity value by performing the following command:
    
    # sudo grep -i inactive /etc/default/useradd
    
    INACTIVE=60
    
    If \"INACTIVE\" is not set to a value \"0<[VALUE]<=60\", or is commented out,
    this is a finding."
    desc "fix", "Configure the Ubuntu operating system to disable account
    identifiers after 60 days of inactivity after the password expiration.
    
    Run the following command to change the configuration for useradd:
    
    # sudo useradd -D -f 60
    
    CMS recommendation is 60 days, but a lower value is acceptable. The value
    \"-1\" will disable this feature, and \"0\" will disable the account
    immediately after the password expires."
  end
  control 'V-75487' do
    desc "check", "Verify the Ubuntu operating system automatically locks an
    account until the account lock is released by an administrator or after 1 hour when five
    unsuccessful logon attempts are made.
    
    Check that the Ubuntu operating system automatically locks an account after
    five unsuccessful attempts with the following command:
    
    # grep pam_tally /etc/pam.d/common-auth
    
    auth required pam_tally2.so onerr=fail deny=5 unlock_time=7200
    
    If \"onerr=fail deny=5 unlock_time=7200\" is not used in \"/etc/pam.d/common-auth\" this is a finding."
    desc "fix", "Configure the Ubuntu operating system to automatically lock an
    account until the locked account is released by an administrator or after 1 hour when five
    unsuccessful logon attempts are made by appending the following line to the
    \"/etc/pam.d/common-auth file\":
    
    \"auth required pam_tally2.so onerr=fail deny=5 unlock_time=7200\""
  end
  control 'V-75489' do
    tag "nist": ["AC-6 (10)", "Rev_4"]
  end
  control 'V-75491' do
    title "Temporary user accounts must be provisioned with an expiration time of
    60 days or less."
    desc "If temporary user accounts remain active when no longer needed or for
    an excessive period, these accounts may be used to gain unauthorized access. To
    mitigate this risk, automated termination of all temporary accounts must be set
    upon account creation.
    
        Temporary accounts are established as part of normal account activation
    procedures when there is a need for short-term accounts without the demand for
    immediacy in account activation.
    
        If temporary accounts are used, the Ubuntu operating system must be
    configured to automatically terminate these types of accounts after a
    CMS-defined time period of 60 days.
    
        To address access requirements, many Ubuntu operating systems may be
    integrated with enterprise-level authentication/access mechanisms that meet or
    exceed access control policy requirements."
    desc "check", "Verify that temporary accounts have been provisioned with an
    expiration date for 60 days.
    
    For every existing temporary account, run the following command to obtain its
    account expiration information.
    
    # sudo chage -l system_account_name
    
    Verify each of these accounts has an expiration date set within 60 days.
    If any temporary accounts have no expiration date set or do not expire within
    60 days, this is a finding."
    desc "fix", "If a temporary account must be created configure the system to
    terminate the account after a 60 day time period with the following command to
    set an expiration date on it. Substitute \"system_account_name\" with the
    account to be created.
    
    # sudo chage -E `date -d \"+60 days\" +%Y-%m-%d` system_account_name"
  end
  control 'V-75505' do
    desc "To mitigate the risk of unauthorized access to sensitive information
    by entities that have been issued certificates by CMS-approved PKIs, all CMS
    systems (e.g., web servers and web portals) must be properly configured to
    incorporate access control methods that do not rely solely on the possession of
    a certificate for access. Successful authentication must not automatically give
    an entity access to an asset or security boundary. Authorization procedures and
    controls must be implemented to ensure each authenticated entity also has a
    validated and current authorization. Authorization is the process of
    determining whether an entity, once authenticated, is permitted to access a
    specific asset. Information systems use access control policies and enforcement
    mechanisms to implement this requirement.
    
        Access control policies include: identity-based policies, role-based
    policies, and attribute-based policies. Access enforcement mechanisms include:
    access control lists, access control matrices, and cryptography. These policies
    and mechanisms must be employed by the application to control access between
    users (or processes acting on behalf of users) and objects (e.g., devices,
    files, records, processes, programs, and domains) in the information system."
  end
  control 'V-75507' do
    desc "To mitigate the risk of unauthorized access to sensitive information
    by entities that have been issued certificates by CMS-approved PKIs, all CMS
    systems (e.g., web servers and web portals) must be properly configured to
    incorporate access control methods that do not rely solely on the possession of
    a certificate for access. Successful authentication must not automatically give
    an entity access to an asset or security boundary. Authorization procedures and
    controls must be implemented to ensure each authenticated entity also has a
    validated and current authorization. Authorization is the process of
    determining whether an entity, once authenticated, is permitted to access a
    specific asset. Information systems use access control policies and enforcement
    mechanisms to implement this requirement.
    
        Access control policies include: identity-based policies, role-based
    policies, and attribute-based policies. Access enforcement mechanisms include:
    access control lists, access control matrices, and cryptography. These policies
    and mechanisms must be employed by the application to control access between
    users (or processes acting on behalf of users) and objects (e.g., devices,
    files, records, processes, programs, and domains) in the information system."
  end
  control 'V-75511' do
    desc "Preventing unauthorized information transfers mitigates the risk of
    information, including encrypted representations of information, produced by
    the actions of prior users/roles (or the actions of processes acting on behalf
    of prior users/roles) from being available to any current users/roles (or
    current processes) that obtain access to shared system resources (e.g.,
    registers, main memory, hard disks) after those resources have been released
    back to information systems. The control of information in shared resources is
    also commonly referred to as object reuse and residual information protection.
    
        This requirement generally applies to the design of an information
    technology product, but it can also apply to the configuration of particular
    information system components that are, or use, such products. This can be
    verified by acceptance/validation processes in CMS or other government agencies.
    
        There may be shared resources with configurable protections (e.g., files in
    storage) that may be assessed on specific information system components."
  end
  control 'V-75515' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not applied to this system categorization in CMS ARS 3.1'
  end
  control 'V-75517' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not applied to this system categorization in CMS ARS 3.1'
  end
  control 'V-75523' do
    impact 0
    tag "nist": ["SI-6 d", "CM-3 (5)", "Rev_4"]
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not applied to this system categorization in CMS ARS 3.1'
  end
  control 'V-75525' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not applied to this system categorization in CMS ARS 3.1'
  end
  control 'V-75527' do
    desc "Changes to any software components can have significant effects on the
    overall security of the Ubuntu operating system. This requirement ensures the
    software has not been tampered with and that it has been provided by a trusted
    vendor.
    
        Accordingly, patches, service packs, device drivers, or Ubuntu operating
    system components must be signed with a certificate recognized and approved by
    the organization.
    
        Verifying the authenticity of the software prior to installation validates
    the integrity of the patch or upgrade received from a vendor. Setting the
    \"Verify-Peer\" Boolean will determine whether or not the server's host
    certificate should be verified against trusted certificates. This ensures the
    software has not been tampered with and that it has been provided by a trusted
    vendor. Self-signed certificates are disallowed by this requirement. The Ubuntu
    operating system should not have to verify the software again. This requirement
    does not mandate CMS certificates for this purpose; however, the certificate
    used to verify the software must be from an approved CA."
  end
  control 'V-75529' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75535' do
    tag "nist": ["AC-6 (10)", "AC-3 (4)", "Rev_4"]
  end
  control 'V-75553' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75555' do
    tag "nist": ["AC-3", "Rev_4"]
  end
  control 'V-75557' do
    tag "nist": ["AC-3", "Rev_4"]
  end
  control 'V-75605' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75607' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75609' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75611' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75613' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75615' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75623' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not applied to this system categorization in CMS ARS 3.1'
  end
  control 'V-75631' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75633' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75659' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75689' do
    tag "nist": ["AC-6 (9)", "AC-6 (8)", "Rev_4"]
  end
  control 'V-75709' do
    desc "Without the capability to generate audit records, it would be
    difficult to establish, correlate, and investigate the events relating to an
    incident or identify those responsible for one.
    
        Audit records can be generated from various components within the
    information system (e.g., module or policy filter).
    
        The list of audited events is the set of events for which audits are to be
    generated. This set of events is typically a subset of the list of all events
    for which the system is capable of generating audit records.
    
        CMS has defined the list of events for which the Ubuntu operating system
    will provide an audit record generation capability as the following:
    
        1) Successful and unsuccessful attempts to access, modify, or delete
    privileges, security objects, security levels, or categories of information
    (e.g., classification levels);
    
        2) Access actions, such as successful and unsuccessful logon attempts,
    privileged activities or other system-level access, starting and ending time
    for user access to the system, concurrent logons from different workstations,
    successful and unsuccessful accesses to objects, all program initiations, and
    all direct access to the information system;
    
        3) All account creations, modifications, disabling, and terminations; and
    
        4) All kernel module load, unload, and restart actions."
  end
  control 'V-75711' do
    desc "Without the capability to generate audit records, it would be
    difficult to establish, correlate, and investigate the events relating to an
    incident or identify those responsible for one.
    
        Audit records can be generated from various components within the
    information system (e.g., module or policy filter).
    
        The list of audited events is the set of events for which audits are to be
    generated. This set of events is typically a subset of the list of all events
    for which the system is capable of generating audit records.
    
        CMS has defined the list of events for which the Ubuntu operating system
    will provide an audit record generation capability as the following:
    
        1) Successful and unsuccessful attempts to access, modify, or delete
    privileges, security objects, security levels, or categories of information
    (e.g., classification levels);
    
        2) Access actions, such as successful and unsuccessful logon attempts,
    privileged activities or other system-level access, starting and ending time
    for user access to the system, concurrent logons from different workstations,
    successful and unsuccessful accesses to objects, all program initiations, and
    all direct access to the information system;
    
        3) All account creations, modifications, disabling, and terminations; and
    
        4) All kernel module load, unload, and restart actions."
  end
  control 'V-75713' do
    desc "Without the capability to generate audit records, it would be
    difficult to establish, correlate, and investigate the events relating to an
    incident or identify those responsible for one.
    
        Audit records can be generated from various components within the
    information system (e.g., module or policy filter).
    
        The list of audited events is the set of events for which audits are to be
    generated. This set of events is typically a subset of the list of all events
    for which the system is capable of generating audit records.
    
        CMS has defined the list of events for which the Ubuntu operating system
    will provide an audit record generation capability as the following:
    
        1) Successful and unsuccessful attempts to access, modify, or delete
    privileges, security objects, security levels, or categories of information
    (e.g., classification levels);
    
        2) Access actions, such as successful and unsuccessful logon attempts,
    privileged activities or other system-level access, starting and ending time
    for user access to the system, concurrent logons from different workstations,
    successful and unsuccessful accesses to objects, all program initiations, and
    all direct access to the information system;
    
        3) All account creations, modifications, disabling, and terminations; and
    
        4) All kernel module load, unload, and restart actions."
  end
  control 'V-75715' do
    desc "Without the capability to generate audit records, it would be
    difficult to establish, correlate, and investigate the events relating to an
    incident or identify those responsible for one.
    
        Audit records can be generated from various components within the
    information system (e.g., module or policy filter).
    
        The list of audited events is the set of events for which audits are to be
    generated. This set of events is typically a subset of the list of all events
    for which the system is capable of generating audit records.
    
        CMS has defined the list of events for which the Ubuntu operating system
    will provide an audit record generation capability as the following:
    
        1) Successful and unsuccessful attempts to access, modify, or delete
    privileges, security objects, security levels, or categories of information
    (e.g., classification levels);
    
        2) Access actions, such as successful and unsuccessful logon attempts,
    privileged activities or other system-level access, starting and ending time
    for user access to the system, concurrent logons from different workstations,
    successful and unsuccessful accesses to objects, all program initiations, and
    all direct access to the information system;
    
        3) All account creations, modifications, disabling, and terminations; and
    
        4) All kernel module load, unload, and restart actions."
  end
  control 'V-75717' do
    desc "Without the capability to generate audit records, it would be
    difficult to establish, correlate, and investigate the events relating to an
    incident or identify those responsible for one.
    
        Audit records can be generated from various components within the
    information system (e.g., module or policy filter).
    
        The list of audited events is the set of events for which audits are to be
    generated. This set of events is typically a subset of the list of all events
    for which the system is capable of generating audit records.
    
        CMS has defined the list of events for which the Ubuntu operating system
    will provide an audit record generation capability as the following:
    
        1) Successful and unsuccessful attempts to access, modify, or delete
    privileges, security objects, security levels, or categories of information
    (e.g., classification levels);
    
        2) Access actions, such as successful and unsuccessful logon attempts,
    privileged activities or other system-level access, starting and ending time
    for user access to the system, concurrent logons from different workstations,
    successful and unsuccessful accesses to objects, all program initiations, and
    all direct access to the information system;
    
        3) All account creations, modifications, disabling, and terminations; and
    
        4) All kernel module load, unload, and restart actions."
  end
  control 'V-75719' do
    desc "Without the capability to generate audit records, it would be
    difficult to establish, correlate, and investigate the events relating to an
    incident or identify those responsible for one.
    
        Audit records can be generated from various components within the
    information system (e.g., module or policy filter).
    
        The list of audited events is the set of events for which audits are to be
    generated. This set of events is typically a subset of the list of all events
    for which the system is capable of generating audit records.
    
        CMS has defined the list of events for which the Ubuntu operating system
    will provide an audit record generation capability as the following:
    
        1) Successful and unsuccessful attempts to access, modify, or delete
    privileges, security objects, security levels, or categories of information
    (e.g., classification levels);
    
        2) Access actions, such as successful and unsuccessful logon attempts,
    privileged activities or other system-level access, starting and ending time
    for user access to the system, concurrent logons from different workstations,
    successful and unsuccessful accesses to objects, all program initiations, and
    all direct access to the information system;
    
        3) All account creations, modifications, disabling, and terminations; and
    
        4) All kernel module load, unload, and restart actions."
  end
  control 'V-75721' do
    desc "Without the capability to generate audit records, it would be
    difficult to establish, correlate, and investigate the events relating to an
    incident or identify those responsible for one.
    
        Audit records can be generated from various components within the
    information system (e.g., module or policy filter).
    
        The list of audited events is the set of events for which audits are to be
    generated. This set of events is typically a subset of the list of all events
    for which the system is capable of generating audit records.
    
        CMS has defined the list of events for which the Ubuntu operating system
    will provide an audit record generation capability as the following:
    
        1) Successful and unsuccessful attempts to access, modify, or delete
    privileges, security objects, security levels, or categories of information
    (e.g., classification levels);
    
        2) Access actions, such as successful and unsuccessful logon attempts,
    privileged activities or other system-level access, starting and ending time
    for user access to the system, concurrent logons from different workstations,
    successful and unsuccessful accesses to objects, all program initiations, and
    all direct access to the information system;
    
        3) All account creations, modifications, disabling, and terminations; and
    
        4) All kernel module load, unload, and restart actions."
  end
  control 'V-75723' do
    desc "Without the capability to generate audit records, it would be
    difficult to establish, correlate, and investigate the events relating to an
    incident or identify those responsible for one.
    
        Audit records can be generated from various components within the
    information system (e.g., module or policy filter).
    
        The list of audited events is the set of events for which audits are to be
    generated. This set of events is typically a subset of the list of all events
    for which the system is capable of generating audit records.
    
        CMS has defined the list of events for which the Ubuntu operating system
    will provide an audit record generation capability as the following:
    
        1) Successful and unsuccessful attempts to access, modify, or delete
    privileges, security objects, security levels, or categories of information
    (e.g., classification levels);
    
        2) Access actions, such as successful and unsuccessful logon attempts,
    privileged activities or other system-level access, starting and ending time
    for user access to the system, concurrent logons from different workstations,
    successful and unsuccessful accesses to objects, all program initiations, and
    all direct access to the information system;
    
        3) All account creations, modifications, disabling, and terminations; and
    
        4) All kernel module load, unload, and restart actions."
  end
  control 'V-75725' do
    desc "Without the capability to generate audit records, it would be
    difficult to establish, correlate, and investigate the events relating to an
    incident or identify those responsible for one.
    
        Audit records can be generated from various components within the
    information system (e.g., module or policy filter).
    
        The list of audited events is the set of events for which audits are to be
    generated. This set of events is typically a subset of the list of all events
    for which the system is capable of generating audit records.
    
        CMS has defined the list of events for which the Ubuntu operating system
    will provide an audit record generation capability as the following:
    
        1) Successful and unsuccessful attempts to access, modify, or delete
    privileges, security objects, security levels, or categories of information
    (e.g., classification levels);
    
        2) Access actions, such as successful and unsuccessful logon attempts,
    privileged activities or other system-level access, starting and ending time
    for user access to the system, concurrent logons from different workstations,
    successful and unsuccessful accesses to objects, all program initiations, and
    all direct access to the information system;
    
        3) All account creations, modifications, disabling, and terminations; and
    
        4) All kernel module load, unload, and restart actions."
  end
  control 'V-75727' do
    desc "Without the capability to generate audit records, it would be
    difficult to establish, correlate, and investigate the events relating to an
    incident or identify those responsible for one.
    
        Audit records can be generated from various components within the
    information system (e.g., module or policy filter).
    
        The list of audited events is the set of events for which audits are to be
    generated. This set of events is typically a subset of the list of all events
    for which the system is capable of generating audit records.
    
        CMS has defined the list of events for which the Ubuntu operating system
    will provide an audit record generation capability as the following:
    
        1) Successful and unsuccessful attempts to access, modify, or delete
    privileges, security objects, security levels, or categories of information
    (e.g., classification levels);
    
        2) Access actions, such as successful and unsuccessful logon attempts,
    privileged activities or other system-level access, starting and ending time
    for user access to the system, concurrent logons from different workstations,
    successful and unsuccessful accesses to objects, all program initiations, and
    all direct access to the information system;
    
        3) All account creations, modifications, disabling, and terminations; and
    
        4) All kernel module load, unload, and restart actions."
  end
  control 'V-75803' do
    desc "Uncomplicated Firewall provides a easy and effective way to
    block/limit remote access to the system, via ports, services and protocols.
    
        Remote access services, such as those providing remote access to network
    devices and information systems, which lack automated control capabilities,
    increase risk and make remote user access management difficult at best.
    
        Remote access is access to CMS nonpublic information systems by an
    authorized user (or an information system) communicating through an external,
    non-organization-controlled network. Remote access methods include, for
    example, dial-up, broadband, and wireless.
    
        Ubuntu operating system functionality (e.g., RDP) must be capable of taking
    enforcement action if the audit reveals unauthorized activity. Automated
    control of remote access sessions allows organizations to ensure ongoing
    compliance with remote access policies by enforcing connection rules of remote
    access applications on a variety of information system components (e.g.,
    servers, workstations, notebook computers, smartphones, and tablets)."
  end
  control 'V-75807' do
    desc "Failure to restrict network connectivity only to authorized systems
    permits inbound connections from malicious systems. It also permits outbound
    connections that may facilitate exfiltration of CMS data."
  end
  control 'V-75811' do
    desc "Preventing unauthorized information transfers mitigates the risk of
    information, including encrypted representations of information, produced by
    the actions of prior users/roles (or the actions of processes acting on behalf
    of prior users/roles) from being available to any current users/roles (or
    current processes) that obtain access to shared system resources (e.g.,
    registers, main memory, hard disks) after those resources have been released
    back to information systems. The control of information in shared resources is
    also commonly referred to as object reuse and residual information protection.
    
        This requirement generally applies to the design of an information
    technology product, but it can also apply to the configuration of particular
    information system components that are, or use, such products. This can be
    verified by acceptance/validation processes in CMS or other government agencies.
    
        There may be shared resources with configurable protections (e.g., files in
    storage) that may be assessed on specific information system components."
  end
  control 'V-75813' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not applied to this system categorization in CMS ARS 3.1'
  end
  control 'V-75825' do
    title "The Ubuntu operating system must display the Standard Mandatory CMS
    Notice and Consent Banner before granting local or remote access to the system
    via a ssh logon and the user must acknowledge the usage conditions and take
    explicit actions to log on for further access."
    desc "Display of a standardized and approved use notification before
    granting access to the Ubuntu operating system ensures privacy and security
    notification verbiage used is consistent with applicable federal laws,
    Executive Orders, directives, policies, regulations, standards, and guidance.
    
        System use notifications are required only for access via logon interfaces
    with human users and are not required when such human interfaces do not exist.
    
        The banner must be formatted in accordance with applicable CMS policy. Use
    the following verbiage for Ubuntu operating systems that can accommodate
    banners of 1300 characters:
    
    * This warning banner provides privacy and security notices consistent with applicable federal laws, directives, and other federal guidance for accessing this Government system, which includes (1) this computer network, (2) all computers connected to this network, and (3) all devices and storage media attached to this network or to a computer on this network.
    * This system is provided for Government authorized use only.
    * Unauthorized or improper use of this system is prohibited and may result in disciplinary action and/or civil and criminal penalties.
    * Personal use of social media and networking sites on this system is limited as to not interfere with official work duties and is subject to monitoring.
    * By using this system, you understand and consent to the following:
    - The Government may monitor, record, and audit your system usage, including usage of personal devices and email systems for official duties or to conduct HHS business. Therefore, you have no reasonable expectation of privacy regarding any communication or data transiting or stored on this system. At any time, and for any lawful Government purpose, the government may monitor, intercept, and search and seize any communication or data transiting or stored on this system.
    - Any communication or data transiting or stored on this system may be disclosed or used for any lawful Government purpose
    
        Use the following verbiage for Ubuntu operating systems that have severe
    limitations on the number of characters that can be displayed in the banner:
    
        \"I\'ve read and consent to terms in IS user agreem\'t.\""
    desc "check", "Verify the Ubuntu operating system displays the Standard
    Mandatory CMS Notice and Consent Banner before granting access to the Ubuntu
    operating system via a ssh logon.
    
    Check that the Ubuntu operating system displays the Standard Mandatory CMS
    Notice and Consent Banner before granting access to the Ubuntu operating system
    via a ssh logon with the following command:
    
    # grep -i banner /etc/ssh/sshd_config
    
    Banner=/etc/issue.net
    
    The command will return the banner option along with the name of the file that
    contains the ssh banner. If the line is commented out this is a finding.
    
    Check the specified banner file to check that it matches the Standard Mandatory
    CMS Notice and Consent Banner exactly:
    
    \"* This warning banner provides privacy and security notices consistent with applicable federal laws, directives, and other federal guidance for accessing this Government system, which includes (1) this computer network, (2) all computers connected to this network, and (3) all devices and storage media attached to this network or to a computer on this network.
    * This system is provided for Government authorized use only.
    * Unauthorized or improper use of this system is prohibited and may result in disciplinary action and/or civil and criminal penalties.
    * Personal use of social media and networking sites on this system is limited as to not interfere with official work duties and is subject to monitoring.
    * By using this system, you understand and consent to the following:
    - The Government may monitor, record, and audit your system usage, including usage of personal devices and email systems for official duties or to conduct HHS business. Therefore, you have no reasonable expectation of privacy regarding any communication or data transiting or stored on this system. At any time, and for any lawful Government purpose, the government may monitor, intercept, and search and seize any communication or data transiting or stored on this system.
    - Any communication or data transiting or stored on this system may be disclosed or used for any lawful Government purpose'\"
    
    If the banner text does not match the Standard Mandatory CMS Notice and Consent
    Banner exactly, this is a finding."
    desc "fix", "Configure the Ubuntu operating system to display the Standard
    Mandatory CMS Notice and Consent Banner before granting access to the system
    via SSH logon.
    
    Edit the SSH daemon configuration \"/etc/ssh/sshd_config\" file. Uncomment the
    banner keyword and configure it to point to the file that contains the correct
    banner. An example of this configure is below:
    
    Banner=/etc/issue.net
    
    Either create the file containing the banner, or replace the text in the file
    with the Standard Mandatory CMS Notice and Consent Banner. The CMS required
    text is:
    
    \"* This warning banner provides privacy and security notices consistent with applicable federal laws, directives, and other federal guidance for accessing this Government system, which includes (1) this computer network, (2) all computers connected to this network, and (3) all devices and storage media attached to this network or to a computer on this network.
    * This system is provided for Government authorized use only.
    * Unauthorized or improper use of this system is prohibited and may result in disciplinary action and/or civil and criminal penalties.
    * Personal use of social media and networking sites on this system is limited as to not interfere with official work duties and is subject to monitoring.
    * By using this system, you understand and consent to the following:
    - The Government may monitor, record, and audit your system usage, including usage of personal devices and email systems for official duties or to conduct HHS business. Therefore, you have no reasonable expectation of privacy regarding any communication or data transiting or stored on this system. At any time, and for any lawful Government purpose, the government may monitor, intercept, and search and seize any communication or data transiting or stored on this system.
    - Any communication or data transiting or stored on this system may be disclosed or used for any lawful Government purpose'\"
    
    The SSH daemon must be restarted for the changes to take effect. To restart the
    SSH daemon, run the following command:
    
    # sudo systemctl restart sshd.service"
  end
  control 'V-75829' do
    title "The Ubuntu operating system must implement CMS-approved encryption to
    protect the confidentiality of SSH connections."
    desc "Without confidentiality protection mechanisms, unauthorized
    individuals may gain access to sensitive information via a remote access
    session.
    
        Remote access is access to CMS nonpublic information systems by an
    authorized user (or an information system) communicating through an external,
    non-organization-controlled network. Remote access methods include, for
    example, dial-up, broadband, and wireless.
    
        Encryption provides a means to secure the remote connection to prevent
    unauthorized access to the data traversing the remote access connection (e.g.,
    RDP), thereby providing a degree of confidentiality. The encryption strength of
    a mechanism is selected based on the security categorization of the information."
    desc "check", "Verify the SSH daemon is configured to only implement
    CMS-approved encryption.
    
    Check the SSH daemon's current configured ciphers by running the following
    command:
    
    # sudo grep -i ciphers /etc/ssh/sshd_config | grep -v \'^#\'
    
    Ciphers aes128-ctr aes192-ctr, aes256-ctr
    
    If any ciphers other than \"aes128-ctr\", \"aes192-ctr\", or \"aes256-ctr\" are
    listed, the \"Ciphers\" keyword is missing, or the retuned line is commented
    out, this is a finding."
    desc "fix", "Configure the Ubuntu operating system to allow the SSH daemon to
    only implement CMS-approved encryption.
    
    Edit the SSH daemon configuration \"/etc/ssh/sshd_config\" and remove any
    ciphers not starting with \"aes\" and remove any ciphers ending with \"cbc\".
    If necessary, append the \"Ciphers\" line to the \"/etc/ssh/sshd_config\"
    document.
    
    Ciphers aes128-ctr,aes192-ctr,aes256-ctr
    
    The SSH daemon must be restarted for the changes to take effect. To restart the
    SSH daemon, run the following command:
    
    # sudo systemctl restart sshd.service"
  end
  control 'V-75831' do
    desc "Without cryptographic integrity protections, information can be
    altered by unauthorized users without detection.
    
        Remote access (e.g., RDP) is access to CMS nonpublic information systems by
    an authorized user (or an information system) communicating through an
    external, non-organization-controlled network. Remote access methods include,
    for example, dial-up, broadband, and wireless.
    
        Cryptographic mechanisms used for protecting the integrity of information
    include, for example, signed hash functions using asymmetric cryptography
    enabling distribution of the public key to verify the hash information while
    maintaining the confidentiality of the secret key used to generate the hash."
  end
  control 'V-75837' do
    title "The Ubuntu operating system for all network connections associated
    with SSH traffic must immediately terminate at the end of the session or after
    30 minutes of inactivity."
    desc "check", "Verify that all network connections associated with SSH traffic
    are automatically terminated at the end of the session or after \"30\" minutes
    of inactivity.
    
    Check that the \"ClientAliveInterval\" variable is set to a value of \"1800\" or
    less by performing the following command:
    
    # sudo grep -i clientalive /etc/ssh/sshd_config
    
    ClientAliveInterval 1800
    
    ClientAliveCountMax  0
    
    If \"ClientAliveInterval\" or \"ClientAliveCountMax\" does not exist,
    \"ClientAliveInterval\" is not set to a value of \"1800\" or less and
    \"ClientAliveCountMax\" is not set to a value of \"0\" in
    \"/etc/ssh/sshd_config\", or either line is commented out, this is a finding."
    desc "fix", "Configure the Ubuntu operating system to automatically terminate
    all network connections associated with SSH traffic at the end of a session or
    after a \"30\" minute period of inactivity.
    
    Modify or append the following lines in the \"/etc/ssh/sshd_config\" file
    replacing \"[Interval]\" with a value of \"1800\" or less and \"[CountMax] with
    a value of \"0\":
    
    ClientAliveInterval 1800
    
    ClientAliveCountMax  0
    
    In order for the changes to take effect, the SSH daemon must be restarted.
    
    # sudo systemctl restart sshd.service"
  end
  control 'V-75859' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75863' do
    desc "Remote access services, such as those providing remote access to
    network devices and information systems, which lack automated monitoring
    capabilities, increase risk and make remote user access management difficult at
    best.
    
        Remote access is access to CMS nonpublic information systems by an
    authorized user (or an information system) communicating through an external,
    non-organization-controlled network. Remote access methods include, for
    example, dial-up, broadband, and wireless.
    
        Automated monitoring of remote access sessions allows organizations to
    detect cyber attacks and also ensure ongoing compliance with remote access
    policies by auditing connection activities of remote access capabilities, such
    as Remote Desktop Protocol (RDP), on a variety of information system components
    (e.g., servers, workstations, notebook computers, smartphones, and tablets)."
  end
  control 'V-75867' do
    desc "Without protection of communications with wireless peripherals,
    confidentiality and integrity may be compromised because unprotected
    communications can be intercepted and either read, altered, or used to
    compromise the Ubuntu operating system.
    
        This requirement applies to wireless peripheral technologies (e.g.,
    wireless mice, keyboards, displays, etc.) used with an Ubuntu operating system.
    Wireless peripherals (e.g., Wi-Fi/Bluetooth/IR Keyboards, Mice, and Pointing
    Devices and Near Field Communications [NFC]) present a unique challenge by
    creating an open, unsecured port on a computer. Wireless peripherals must meet
    CMS requirements for wireless data transmission and be approved for use by the
    AO. Even though some wireless peripherals, such as mice and pointing devices,
    do not ordinarily carry information that need to be protected, modification of
    communications with these wireless peripherals may be used to compromise the
    Ubuntu operating system. Communication paths outside the physical protection of
    a controlled boundary are exposed to the possibility of interception and
    modification.
    
        Protecting the confidentiality and integrity of communications with
    wireless peripherals can be accomplished by physical means (e.g., employing
    physical barriers to wireless radio frequencies) or by logical means (e.g.,
    employing cryptographic techniques). If physical means of protection are
    employed, then logical means (cryptography) do not have to be employed, and
    vice versa. If the wireless peripheral is only passing telemetry data,
    encryption of the data may not be required."
  end
  control 'V-75869' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
  control 'V-75903' do
    desc "Using an authentication device, such as a CAC or token that is
    separate from the information system, ensures that even if the information
    system is compromised, that compromise will not affect credentials stored on
    the authentication device.
    
        Multifactor solutions that require devices separate from information
    systems gaining access include, for example, hardware tokens providing
    time-based or challenge-response authenticators and smart cards such as the
    U.S. Government Personal Identity Verification card and the CMS Common Access
    Card.
    
        A privileged account is defined as an information system account with
    authorizations of a privileged user.
    
        Remote access is access to CMS nonpublic information systems by an
    authorized user (or an information system) communicating through an external,
    non-organization-controlled network. Remote access methods include, for
    example, dial-up, broadband, and wireless.
    
        This requirement only applies to components where this is specific to the
    function of the device or has the concept of an organizational user (e.g., VPN,
    proxy capability). This does not apply to authentication for the purpose of
    configuring the device itself (management).
    
        Requires further clarification from NIST."
  end
  control 'V-75905' do
    desc "The use of PIV credentials facilitates standardization and reduces the
    risk of unauthorized access.
    
    CMS has mandated the use of the CAC to support identity management and
    personal authentication for systems covered under Homeland Security
    Presidential Directive (HSPD) 12, as well as making the CAC a primary component
    of layered protection for national security systems."
  end
  control 'V-75907' do
    desc "Using an authentication device, such as a CAC or token that is
    separate from the information system, ensures that even if the information
    system is compromised, that compromise will not affect credentials stored on
    the authentication device.
    
        Multifactor solutions that require devices separate from information
    systems gaining access include, for example, hardware tokens providing
    time-based or challenge-response authenticators and smart cards such as the
    U.S. Government Personal Identity Verification card and the CMS Common Access
    Card.
    
        A privileged account is defined as an information system account with
    authorizations of a privileged user.
    
        Remote access is access to CMS nonpublic information systems by an
    authorized user (or an information system) communicating through an external,
    non-organization-controlled network. Remote access methods include, for
    example, dial-up, broadband, and wireless.
    
        This requirement only applies to components where this is specific to the
    function of the device or has the concept of an organizational user (e.g., VPN,
    proxy capability). This does not apply to authentication for the purpose of
    configuring the device itself (management).
    
        Requires further clarification from NIST."
  end
  control 'V-75911' do
    desc "Using an authentication device, such as a CAC or token that is
    separate from the information system, ensures that even if the information
    system is compromised, that compromise will not affect credentials stored on
    the authentication device.
    
        Multifactor solutions that require devices separate from information
    systems gaining access include, for example, hardware tokens providing
    time-based or challenge-response authenticators and smart cards such as the
    U.S. Government Personal Identity Verification card and the CMS Common Access
    Card.
    
        Remote access is access to CMS nonpublic information systems by an
    authorized user (or an information system) communicating through an external,
    non-organization-controlled network. Remote access methods include, for
    example, dial-up, broadband, and wireless.
    
        This requirement only applies to components where this is specific to the
    function of the device or has the concept of an organizational user (e.g., VPN,
    proxy capability). This does not apply to authentication for the purpose of
    configuring the device itself (management).
    
        Requires further clarification from NIST."
  end
  control 'V-78005' do
    title "The system must use a CMS-approved virus scan program."
    desc "check", "Verify the system is using a CMS-approved virus scan program.


    Check for the presence of \"McAfee VirusScan Enterprise for Linux\" with the
    following command:
    
    
    # systemctl status nails
    
    nails - service for McAfee VirusScan Enterprise for Linux
    
    > Loaded: loaded
    /opt/NAI/package/McAfeeVSEForLinux/McAfeeVSEForLinux-2.0.2.<build_number>;
    enabled)
    
    > Active: active (running) since Mon 2015-09-27 04:11:22 UTC;21 min ago
    
    
    If the \"nails\" service is not active, check for the presence of \"clamav\" on
    the system with the following command:
    
    
    # systemctl status clamav-daemon.socket
    
    systemctl status clamav-daemon.socket
    
    clamav-daemon.socket - Socket for Clam AntiVirus userspace daemon
    
    Loaded: loaded (/lib/systemd/system/clamav-daemon.socket; enabled)
    
    Active: active (running) since Mon 2015-01-12 09:32:59 UTC; 7min ago
    
    
    If neither of these applications are loaded and active, ask the System
    Administrator if there is an antivirus package installed and active on the
    system.
    
    
    If no antivirus scan program is active on the system, this is a finding."
    desc "fix", "Install an approved CMS antivirus solution on the system."
  end
  control 'V-78007' do
    title "The system must update the CMS-approved virus scan program every seven
    days or more frequently."
    desc "check", "Verify the system is using a CMS-approved virus scan program
    and the virus definition file is less than seven days old.
    
    Check for the presence of \"McAfee VirusScan Enterprise for Linux\" with the
    following command:
    
    # systemctl status nails
    
    nails - service for McAfee VirusScan Enterprise for Linux
    
    > Loaded: loaded
    /opt/NAI/package/McAfeeVSEForLinux/McAfeeVSEForLinux-2.0.2.<build_number>;
    enabled)
    
    > Active: active (running) since Mon 2015-09-27 04:11:22 UTC;21 min ago
    
    If the \"nails\" service is not active, check for the presence of \"clamav\" on
    the system with the following command:
    
    # systemctl status clamav-daemon.socket
    
    systemctl status clamav-daemon.socket
    
    clamav-daemon.socket - Socket for Clam AntiVirus userspace daemon
    
    Loaded: loaded (/lib/systemd/system/clamav-daemon.socket; enabled)
    
    Active: active (running) since Mon 2015-01-12 09:32:59 UTC; 7min ago
    
    If \"McAfee VirusScan Enterprise for Linux\" is active on the system, check the
    dates of the virus definition files with the following command:
    
    # ls -al /opt/NAI/LinuxShield/engine/dat/*.dat
    
    -rwxr-xr-x 1 root root 243217 Mar 5 2017 avvclean.dat
    -rwxr-xr-x 1 root root 16995 Mar 5 2017 avvnames.dat
    -rwxr-xr-x 1 root root 4713245 Mar 5 2017 avvscan.dat
    
    If the virus definition files have dates older than seven days from the current
    date, this is a finding.
    
    If \"clamav\" is active on the system, check the dates of the virus database
    with the following commands:
    
    # grep -I databasedirectory /etc/clamav.conf
    
    DatabaseDirectory /var/lib/clamav
    
    # ls -al /var/lib/clamav/*.cvd
    
    -rwxr-xr-x 1 root root 149156 Mar 5 2011 daily.cvd
    
    If the database file has a date older than seven days from the current date,
    this is a finding.
    "
    desc "fix", "Update the approved CMS virus scan software and virus definition
    files."
  end
  control 'V-80959' do
    desc "Configuring the Ubuntu operating system to implement organization-wide
    security implementation guides and security checklists ensures compliance with
    federal standards and establishes a common security baseline across CMS that
    reflects the most restrictive security posture consistent with operational
    requirements.
    
        Configuration settings are the set of parameters that can be changed in
    hardware, software, or firmware components of the system that affect the
    security posture and/or functionality of the system. Security-related
    parameters are those parameters impacting the security state of the system,
    including the parameters required to satisfy other security control
    requirements. Security-related parameters include, for example: registry
    settings; account, file, directory permission settings; and settings for
    functions, ports, protocols, services, and remote connections."
  end
  control 'V-80961' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not applied to this system categorization in CMS ARS 3.1'
  end
  control 'V-80965' do
    impact 0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related                                                      
         security control is not included in CMS ARS 3.1'
  end
end