/*
 * Auto-generated by `wayland-scanner` version 1.0.1
 * Protocol: xwayland_keyboard_grab_unstable_v1
 */

zwp_xwayland_keyboard_grab_manager_v1_interface: wl_interface;
zwp_xwayland_keyboard_grab_manager_v1 :: struct {
    #as _proxy: wl_proxy;
    _interface_ :: *zwp_xwayland_keyboard_grab_manager_v1_interface;

    set_user_data :: inline (self: *zwp_xwayland_keyboard_grab_manager_v1, user_data: *void) #c_call {
        wl_proxy_set_user_data(self, user_data);
    }

    get_user_data :: inline (self: *zwp_xwayland_keyboard_grab_manager_v1) -> *void #c_call {
        return wl_proxy_get_user_data(self);
    }

    get_version :: inline (self: *zwp_xwayland_keyboard_grab_manager_v1) -> u32 #c_call {
        return wl_proxy_get_version(self);
    }

    destroy :: inline (self: *zwp_xwayland_keyboard_grab_manager_v1) #c_call {
        wl_proxy_marshal(self, ZWP_XWAYLAND_KEYBOARD_GRAB_MANAGER_V1_DESTROY);
        wl_proxy_destroy(self);
    }

    grab_keyboard :: inline (self: *zwp_xwayland_keyboard_grab_manager_v1, surface: *wl_surface, seat: *wl_seat) -> *zwp_xwayland_keyboard_grab_v1 #c_call {
        ret: *wl_proxy = wl_proxy_marshal_constructor_versioned(
            self, ZWP_XWAYLAND_KEYBOARD_GRAB_MANAGER_V1_GRAB_KEYBOARD,
            *zwp_xwayland_keyboard_grab_v1_interface, wl_proxy_get_version(self),
            null, surface, seat);
        return cast(*zwp_xwayland_keyboard_grab_v1) ret;
    }
}

ZWP_XWAYLAND_KEYBOARD_GRAB_MANAGER_V1_DESTROY             : u32 : 0;
ZWP_XWAYLAND_KEYBOARD_GRAB_MANAGER_V1_GRAB_KEYBOARD       : u32 : 1;
ZWP_XWAYLAND_KEYBOARD_GRAB_MANAGER_V1_DESTROY_SINCE       : u32 : 1;
ZWP_XWAYLAND_KEYBOARD_GRAB_MANAGER_V1_GRAB_KEYBOARD_SINCE : u32 : 1;

zwp_xwayland_keyboard_grab_v1_interface: wl_interface;
zwp_xwayland_keyboard_grab_v1 :: struct {
    #as _proxy: wl_proxy;
    _interface_ :: *zwp_xwayland_keyboard_grab_v1_interface;

    set_user_data :: inline (self: *zwp_xwayland_keyboard_grab_v1, user_data: *void) #c_call {
        wl_proxy_set_user_data(self, user_data);
    }

    get_user_data :: inline (self: *zwp_xwayland_keyboard_grab_v1) -> *void #c_call {
        return wl_proxy_get_user_data(self);
    }

    get_version :: inline (self: *zwp_xwayland_keyboard_grab_v1) -> u32 #c_call {
        return wl_proxy_get_version(self);
    }

    destroy :: inline (self: *zwp_xwayland_keyboard_grab_v1) #c_call {
        wl_proxy_marshal(self, ZWP_XWAYLAND_KEYBOARD_GRAB_V1_DESTROY);
        wl_proxy_destroy(self);
    }
}

ZWP_XWAYLAND_KEYBOARD_GRAB_V1_DESTROY       : u32 : 0;
ZWP_XWAYLAND_KEYBOARD_GRAB_V1_DESTROY_SINCE : u32 : 1;


#scope_module
xwayland_keyboard_grab_unstable_v1_protocol_init :: () {
    xwayland_keyboard_grab_unstable_v1_types_storage = .[
        /* __DUMMY__ */
        null,  // 0
        /* REQUEST: zwp_xwayland_keyboard_grab_manager_v1::grab_keyboard */
        *zwp_xwayland_keyboard_grab_v1_interface,   // 1
        *wl_surface_interface,   // 2
        *wl_seat_interface,   // 3
    ];

    zwp_xwayland_keyboard_grab_manager_v1_requests[0] = .{"destroy", "", xwayland_keyboard_grab_unstable_v1_types_storage.data + 0};
    zwp_xwayland_keyboard_grab_manager_v1_requests[1] = .{"grab_keyboard", "noo", xwayland_keyboard_grab_unstable_v1_types_storage.data + 1};
    zwp_xwayland_keyboard_grab_manager_v1_interface = .{
        "zwp_xwayland_keyboard_grab_manager_v1", 1,
        zwp_xwayland_keyboard_grab_manager_v1_requests.count, zwp_xwayland_keyboard_grab_manager_v1_requests.data,
        0, null,
    };

    zwp_xwayland_keyboard_grab_v1_requests[0] = .{"destroy", "", xwayland_keyboard_grab_unstable_v1_types_storage.data + 0};
    zwp_xwayland_keyboard_grab_v1_interface = .{
        "zwp_xwayland_keyboard_grab_v1", 1,
        zwp_xwayland_keyboard_grab_v1_requests.count, zwp_xwayland_keyboard_grab_v1_requests.data,
        0, null,
    };
}


#scope_file
xwayland_keyboard_grab_unstable_v1_types_storage: []*wl_interface;

zwp_xwayland_keyboard_grab_manager_v1_requests: [2]wl_message;

zwp_xwayland_keyboard_grab_v1_requests: [1]wl_message;

#assert size_of(zwp_xwayland_keyboard_grab_manager_v1) == 0 "wayland-scanner bug: zwp_xwayland_keyboard_grab_manager_v1 is non-empty";
#assert size_of(zwp_xwayland_keyboard_grab_v1) == 0 "wayland-scanner bug: zwp_xwayland_keyboard_grab_v1 is non-empty";
