// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ConsentManager {

    struct Consent {
        address user;
        string[] dataTypes;
        string purpose;
        uint256 startDate;
        uint256 endDate;
        address provider;
        bool active;
    }

    mapping(uint256 => Consent) public consents;
    mapping(address => uint256[]) public userConsents;
    uint256 public nextConsentId;

    event ConsentGranted(uint256 indexed consentId, address indexed user, address indexed provider);
    event ConsentRevoked(uint256 indexed consentId, address indexed user);
    event ConsentReactivated(uint256 indexed consentId, address indexed user);

    function grantConsent(
        string[] calldata dataTypes,
        string calldata purpose,
        uint256 startDate,
        uint256 endDate,
        address provider
    ) external returns (uint256) {
        require(provider != address(0), "Invalid provider address");
        require(startDate < endDate, "Start date must be before end date");

        consents[nextConsentId] = Consent({
            user: msg.sender,
            dataTypes: dataTypes,
            purpose: purpose,
            startDate: startDate,
            endDate: endDate,
            provider: provider,
            active: true
        });

        userConsents[msg.sender].push(nextConsentId);

        emit ConsentGranted(nextConsentId, msg.sender, provider);

        nextConsentId++;
        return nextConsentId - 1;
    }

    function revokeConsent(uint256 consentId) external {
        Consent storage consent = consents[consentId];
        require(consent.user == msg.sender, "Only the user can revoke");
        require(consent.active, "Consent already inactive");

        consent.active = false;
        emit ConsentRevoked(consentId, msg.sender);
    }

    function reactivateConsent(uint256 consentId) external {
        Consent storage consent = consents[consentId];
        require(consent.user == msg.sender, "Only the user can reactivate");
        require(!consent.active, "Consent already active");

        consent.active = true;
        emit ConsentReactivated(consentId, msg.sender);
    }

    function getUserConsents(address user) external view returns (uint256[] memory) {
        return userConsents[user];
    }

    function getConsentDetails(uint256 consentId) external view returns (
        address user,
        string[] memory dataTypes,
        string memory purpose,
        uint256 startDate,
        uint256 endDate,
        address provider,
        bool active
    ) {
        Consent memory c = consents[consentId];
        return (c.user, c.dataTypes, c.purpose, c.startDate, c.endDate, c.provider, c.active);
    }
}
