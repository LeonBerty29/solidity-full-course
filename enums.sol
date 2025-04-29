// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Enum {
    // Enum representing shipping status

    enum ShippingStatus {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Whenever you define Enums, the default value is first element listed
    // In this case the default value is Pending

        // Pending - 0
        // Shipped - 1
        // Accepted - 2
        // Rejected - 3
        // Canceled - 4



    ShippingStatus public status;

    function get() public view returns(ShippingStatus) {
        return status;
    }

    // Update status by passing uint into input

    function set(ShippingStatus _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status = ShippingStatus.Canceled;
    }

    // delete resets the enum to it's first value, 0

    function reset() public {
        delete status;
    }
}