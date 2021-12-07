using System;
using System.Interop;

namespace OpenXR
{
	/* android/native_window.h */
	// public typealias ANativeWindow = int; // Not used
	/* jni.h */
	public typealias jobject = int;// @REPLACE
	/* CL/cl_gl_ext.h */
	// public typealias CGLContextObj = int; // Not used
	/* d3dcommon.h */
	public typealias D3D_FEATURE_LEVEL = int;// @REPLACE
	/* D3D11.h */
	public typealias ID3D11Device = int;// @REPLACE
	/* D3D11.h */
	public typealias ID3D11Texture2D = int;// @REPLACE
	/* D3D12.h */
	public typealias ID3D12CommandQueue = int;// @REPLACE
	/* D3D12.h */
	public typealias ID3D12Device = int;// @REPLACE
	/* D3D12.h */
	public typealias ID3D12Resource = int;// @REPLACE
	/* EGL/egl.h */
	public typealias EGLDisplay = int;// @REPLACE
	/* EGL/egl.h */
	public typealias EGLConfig = int;// @REPLACE
	/* EGL/egl.h */
	public typealias EGLContext = int;// @REPLACE
	/* EGL/egl.h */
	public typealias EGLenum = int;// @REPLACE
	/* EGL/egl.h */
	public typealias PFNEGLGETPROCADDRESSPROC = int;// @REPLACE
	/* GL/glxext.h */
	public typealias GLXFBConfig = int;// @REPLACE
	/* GL/glxext.h */
	public typealias GLXDrawable = int;// @REPLACE
	/* GL/glxext.h */
	public typealias GLXContext = int;// @REPLACE
	/* GL/wglext.h */
	public typealias HGLRC = int;// @REPLACE
	/* unknwn.h */
	public typealias IUnknown = int;// @REPLACE
	/* wayland-client.h */
	public typealias wl_display = int;// @REPLACE
	/* windows.h */
	public typealias HDC = int;// @REPLACE
	/* windows.h */
	public typealias LUID = int;// @REPLACE
	/* windows.h */
	public typealias LARGE_INTEGER = int;// @REPLACE
	/* X11/Xlib.h */
	public typealias Display = int;// @REPLACE
	/* X11/Xlib.h */
	// public typealias VisualID = int; // Not used
	/* X11/Xlib.h */
	// public typealias Window = int; // Not used
	/* xcb/glx.h */
	public typealias xcb_glx_fbconfig_t = int;// @REPLACE
	/* xcb/glx.h */
	public typealias xcb_glx_drawable_t = int;// @REPLACE
	/* xcb/glx.h */
	public typealias xcb_glx_context_t = int;// @REPLACE
	/* xcb/xcb.h */
	public typealias xcb_connection_t = int;// @REPLACE
	/* xcb/xcb.h */
	public typealias xcb_visualid_t = int;// @REPLACE
	/* xcb/xcb.h */
	// public typealias xcb_window_t = int; // Not used
	/* vulkan/vulkan.h */
	public typealias PFN_vkGetInstanceProcAddr = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkAllocationCallbacks = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkComponentSwizzle = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkDevice = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkDeviceCreateInfo = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkFilter = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkFormat = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkImage = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkInstance = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkInstanceCreateInfo = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkPhysicalDevice = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkResult = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkSamplerAddressMode = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkSamplerMipmapMode = int;// @REPLACE
	/* time.h */
	public typealias timespec = int;// @REPLACE

	public struct XrBool32 : uint32;

	public struct XrFlags64 : uint64;

	public struct XrTime : int64;

	public struct XrDuration : int64;

	public struct XrVersion : uint64;

	public struct XrPath : uint64;

	public struct XrSystemId : uint64;

	public struct XrControllerModelKeyMSFT : uint64;
	public enum XrInstanceCreateFlagBits : XrFlags64
	{
	}

	public typealias XrInstanceCreateFlags = XrInstanceCreateFlagBits;
	public enum XrSessionCreateFlagBits : XrFlags64
	{
	}

	public typealias XrSessionCreateFlags = XrSessionCreateFlagBits;
	public enum XrSwapchainCreateFlagBits : XrFlags64
	{
		/* Content will be protected from CPU access */
		XR_SWAPCHAIN_CREATE_PROTECTED_CONTENT_BIT = (1 << 0),
		/* Only one image will be acquired from this swapchain over its lifetime */
		XR_SWAPCHAIN_CREATE_STATIC_IMAGE_BIT = (1 << 1),
	}

	public typealias XrSwapchainCreateFlags = XrSwapchainCreateFlagBits;
	public enum XrSwapchainUsageFlagBits : XrFlags64
	{
		/* Specifies that the image may: be a color rendering target. */
		XR_SWAPCHAIN_USAGE_COLOR_ATTACHMENT_BIT = (1 << 0),
		/* Specifies that the image may: be a depth/stencil rendering target. */
		XR_SWAPCHAIN_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT = (1 << 1),
		/* Specifies that the image may: be accessed out of order and that access may: be via atomic operations. */
		XR_SWAPCHAIN_USAGE_UNORDERED_ACCESS_BIT = (1 << 2),
		/* Specifies that the image may: be used as the source of a transfer operation. */
		XR_SWAPCHAIN_USAGE_TRANSFER_SRC_BIT = (1 << 3),
		/* Specifies that the image may: be used as the destination of a transfer operation. */
		XR_SWAPCHAIN_USAGE_TRANSFER_DST_BIT = (1 << 4),
		/* Specifies that the image may: be sampled by a shader. */
		XR_SWAPCHAIN_USAGE_SAMPLED_BIT = (1 << 5),
		/* Specifies that the image may: be reinterpreted as another image format. */
		XR_SWAPCHAIN_USAGE_MUTABLE_FORMAT_BIT = (1 << 6),
	}

	public typealias XrSwapchainUsageFlags = XrSwapchainUsageFlagBits;
	public enum XrViewStateFlagBits : XrFlags64
	{
		/* Indicates validity of all slink:XrView orientations */
		XR_VIEW_STATE_ORIENTATION_VALID_BIT = (1 << 0),
		/* Indicates validity of all slink:XrView positions */
		XR_VIEW_STATE_POSITION_VALID_BIT = (1 << 1),
		/* Indicates whether all slink:XrView orientations are actively tracked */
		XR_VIEW_STATE_ORIENTATION_TRACKED_BIT = (1 << 2),
		/* Indicates whether all slink:XrView positions are actively tracked */
		XR_VIEW_STATE_POSITION_TRACKED_BIT = (1 << 3),
	}

	public typealias XrViewStateFlags = XrViewStateFlagBits;
	public enum XrCompositionLayerFlagBits : XrFlags64
	{
		/* Enables chromatic aberration correction when not done by default. */
		XR_COMPOSITION_LAYER_CORRECT_CHROMATIC_ABERRATION_BIT = (1 << 0),
		/* Enables the layer texture alpha channel. */
		XR_COMPOSITION_LAYER_BLEND_TEXTURE_SOURCE_ALPHA_BIT = (1 << 1),
		/* Indicates the texture color channels have not been premultiplied by the texture alpha channel. */
		XR_COMPOSITION_LAYER_UNPREMULTIPLIED_ALPHA_BIT = (1 << 2),
	}

	public typealias XrCompositionLayerFlags = XrCompositionLayerFlagBits;
	public enum XrSpaceLocationFlagBits : XrFlags64
	{
		/* Indicates that the pname:orientation member contains valid data */
		XR_SPACE_LOCATION_ORIENTATION_VALID_BIT = (1 << 0),
		/* Indicates that the pname:position member contains valid data */
		XR_SPACE_LOCATION_POSITION_VALID_BIT = (1 << 1),
		/* Indicates whether pname:pose member contains an actively tracked pname:orientation */
		XR_SPACE_LOCATION_ORIENTATION_TRACKED_BIT = (1 << 2),
		/* Indicates whether pname:pose member contains an actively tracked pname:position */
		XR_SPACE_LOCATION_POSITION_TRACKED_BIT = (1 << 3),
	}

	public typealias XrSpaceLocationFlags = XrSpaceLocationFlagBits;
	public enum XrSpaceVelocityFlagBits : XrFlags64
	{
		/* Indicates that the pname:linearVelocity member contains valid data */
		XR_SPACE_VELOCITY_LINEAR_VALID_BIT = (1 << 0),
		/* Indicates that the pname:angularVelocity member contains valid data */
		XR_SPACE_VELOCITY_ANGULAR_VALID_BIT = (1 << 1),
	}

	public typealias XrSpaceVelocityFlags = XrSpaceVelocityFlagBits;
	public enum XrInputSourceLocalizedNameFlagBits : XrFlags64
	{
		/* Asks for the part of the string which indicates the top level user path the source represents */
		XR_INPUT_SOURCE_LOCALIZED_NAME_USER_PATH_BIT = (1 << 0),
		/* Asks for the part of the string which represents the interaction profile of the source */
		XR_INPUT_SOURCE_LOCALIZED_NAME_INTERACTION_PROFILE_BIT = (1 << 1),
		/* Asks for the part of the string which represents the component on the device which needs to be interacted
		with */
		XR_INPUT_SOURCE_LOCALIZED_NAME_COMPONENT_BIT = (1 << 2),
	}

	public typealias XrInputSourceLocalizedNameFlags = XrInputSourceLocalizedNameFlagBits;
	public enum XrVulkanInstanceCreateFlagBitsKHR : XrFlags64
	{
	}

	public typealias XrVulkanInstanceCreateFlagsKHR = XrVulkanInstanceCreateFlagBitsKHR;
	public enum XrVulkanDeviceCreateFlagBitsKHR : XrFlags64
	{
	}

	public typealias XrVulkanDeviceCreateFlagsKHR = XrVulkanDeviceCreateFlagBitsKHR;
	public enum XrDebugUtilsMessageSeverityFlagBitsEXT : XrFlags64
	{
		/* Most verbose output severity, typically used for debugging. */
		XR_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT = (1 << 0),
		/* General info message */
		XR_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT = (1 << 4),
		/* Indicates the item may be the cause of issues. */
		XR_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT = (1 << 8),
		/* Indicates that the item is definitely related to erroneous behavior. */
		XR_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT = (1 << 12),
	}

	public typealias XrDebugUtilsMessageSeverityFlagsEXT = XrDebugUtilsMessageSeverityFlagBitsEXT;
	public enum XrDebugUtilsMessageTypeFlagBitsEXT : XrFlags64
	{
		/* Indicates this is a general message */
		XR_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT = (1 << 0),
		/* Indicates the message is related to a validation message */
		XR_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT = (1 << 1),
		/* Indicates the message is related to a potential performance situation */
		XR_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT = (1 << 2),
		/* Indicates the message is related to a non-conformant runtime result */
		XR_DEBUG_UTILS_MESSAGE_TYPE_CONFORMANCE_BIT_EXT = (1 << 3),
	}

	public typealias XrDebugUtilsMessageTypeFlagsEXT = XrDebugUtilsMessageTypeFlagBitsEXT;
	public enum XrOverlayMainSessionFlagBitsEXTX : XrFlags64
	{
		/* Indicates the main session enabled `XR_KHR_composition_layer_depth` */
		XR_OVERLAY_MAIN_SESSION_ENABLED_COMPOSITION_LAYER_INFO_DEPTH_BIT_EXTX = (1 << 0),
	}

	public typealias XrOverlayMainSessionFlagsEXTX = XrOverlayMainSessionFlagBitsEXTX;
	public enum XrOverlaySessionCreateFlagBitsEXTX : XrFlags64
	{
	}

	public typealias XrOverlaySessionCreateFlagsEXTX = XrOverlaySessionCreateFlagBitsEXTX;
	public enum XrAndroidSurfaceSwapchainFlagBitsFB : XrFlags64
	{
		/* Create the underlying BufferQueue in synchronous mode */
		XR_ANDROID_SURFACE_SWAPCHAIN_SYNCHRONOUS_BIT_FB = (1 << 0),
		/* Acquire most recent buffer whose presentation timestamp is not greater than display time of final composited
		frame */
		XR_ANDROID_SURFACE_SWAPCHAIN_USE_TIMESTAMPS_BIT_FB = (1 << 1),
	}

	public typealias XrAndroidSurfaceSwapchainFlagsFB = XrAndroidSurfaceSwapchainFlagBitsFB;
	public struct XrInstance : uint64;
	public struct XrSession : uint64;
	public struct XrActionSet : uint64;
	public struct XrAction : uint64;
	public struct XrSwapchain : uint64;
	public struct XrSpace : uint64;
	public struct XrDebugUtilsMessengerEXT : uint64;
	public struct XrSpatialAnchorMSFT : uint64;
	public struct XrHandTrackerEXT : uint64;

	[CRepr]
	public struct XrVector2f : this(
		float x = default,
		float y = default);

	[CRepr]
	public struct XrVector3f : this(
		float x = default,
		float y = default,
		float z = default);

	[CRepr]
	public struct XrVector4f : this(
		float x = default,
		float y = default,
		float z = default,
		float w = default);

	[CRepr]
	public struct XrColor4f : this(
		float r = default,
		float g = default,
		float b = default,
		float a = default);

	[CRepr]
	public struct XrQuaternionf : this(
		float x = default,
		float y = default,
		float z = default,
		float w = default);

	[CRepr]
	public struct XrPosef : this(
		XrQuaternionf orientation = default,
		XrVector3f position = default);

	[CRepr]
	public struct XrOffset2Df : this(
		float x = default,
		float y = default);

	[CRepr]
	public struct XrExtent2Df : this(
		float width = default,
		float height = default);

	[CRepr]
	public struct XrRect2Df : this(
		XrOffset2Df offset = default,
		XrExtent2Df extent = default);

	[CRepr]
	public struct XrOffset2Di : this(
		int32 x = default,
		int32 y = default);

	[CRepr]
	public struct XrExtent2Di : this(
		int32 width = default,
		int32 height = default);

	[CRepr]
	public struct XrRect2Di : this(
		XrOffset2Di offset = default,
		XrExtent2Di extent = default);

	[CRepr]
	public struct XrBaseInStructure : this(
		XrStructureType type = default,
		XrBaseInStructure* next = null);

	[CRepr]
	public struct XrBaseOutStructure : this(
		XrStructureType type = default,
		XrBaseOutStructure* next = null);

	[CRepr]
	public struct XrApiLayerProperties : this(
		XrStructureType type = .XR_TYPE_API_LAYER_PROPERTIES,
		void* next = null,
		c_char[OpenXR.XR_MAX_API_LAYER_NAME_SIZE] layerName = default,
		XrVersion specVersion = default,
		uint32 layerVersion = default,
		c_char[OpenXR.XR_MAX_API_LAYER_DESCRIPTION_SIZE] description = default);

	[CRepr]
	public struct XrExtensionProperties : this(
		XrStructureType type = .XR_TYPE_EXTENSION_PROPERTIES,
		void* next = null,
		c_char[OpenXR.XR_MAX_EXTENSION_NAME_SIZE] extensionName = default,
		uint32 extensionVersion = default);

	[CRepr]
	public struct XrApplicationInfo : this(
		c_char[OpenXR.XR_MAX_APPLICATION_NAME_SIZE] applicationName = default,
		uint32 applicationVersion = default,
		c_char[OpenXR.XR_MAX_ENGINE_NAME_SIZE] engineName = default,
		uint32 engineVersion = default,
		XrVersion apiVersion = default);

	[CRepr]
	public struct XrInstanceCreateInfo : this(
		XrStructureType type = .XR_TYPE_INSTANCE_CREATE_INFO,
		void* next = null,
		XrInstanceCreateFlags createFlags = default,
		XrApplicationInfo applicationInfo = default,
		uint32 enabledApiLayerCount = default,
		c_char** enabledApiLayerNames = null,
		uint32 enabledExtensionCount = default,
		c_char** enabledExtensionNames = null);

	[CRepr]
	public struct XrInstanceProperties : this(
		XrStructureType type = .XR_TYPE_INSTANCE_PROPERTIES,
		void* next = null,
		XrVersion runtimeVersion = default,
		c_char[OpenXR.XR_MAX_RUNTIME_NAME_SIZE] runtimeName = default);

	[CRepr]
	public struct XrSystemGetInfo : this(
		XrStructureType type = .XR_TYPE_SYSTEM_GET_INFO,
		void* next = null,
		XrFormFactor formFactor = default);

	[CRepr]
	public struct XrSystemProperties : this(
		XrStructureType type = .XR_TYPE_SYSTEM_PROPERTIES,
		void* next = null,
		XrSystemId systemId = default,
		uint32 vendorId = default,
		c_char[OpenXR.XR_MAX_SYSTEM_NAME_SIZE] systemName = default,
		XrSystemGraphicsProperties graphicsProperties = default,
		XrSystemTrackingProperties trackingProperties = default);

	[CRepr]
	public struct XrSystemGraphicsProperties : this(
		uint32 maxSwapchainImageHeight = default,
		uint32 maxSwapchainImageWidth = default,
		uint32 maxLayerCount = default);

	[CRepr]
	public struct XrSystemTrackingProperties : this(
		XrBool32 orientationTracking = default,
		XrBool32 positionTracking = default);

	[CRepr]
	public struct XrSessionCreateInfo : this(
		XrStructureType type = .XR_TYPE_SESSION_CREATE_INFO,
		void* next = null,
		XrSessionCreateFlags createFlags = default,
		XrSystemId systemId = default);

	[CRepr]
	public struct XrSessionBeginInfo : this(
		XrStructureType type = .XR_TYPE_SESSION_BEGIN_INFO,
		void* next = null,
		XrViewConfigurationType primaryViewConfigurationType = default);

	[CRepr]
	public struct XrSwapchainCreateInfo : this(
		XrStructureType type = .XR_TYPE_SWAPCHAIN_CREATE_INFO,
		void* next = null,
		XrSwapchainCreateFlags createFlags = default,
		XrSwapchainUsageFlags usageFlags = default,
		int64 format = default,
		uint32 sampleCount = default,
		uint32 width = default,
		uint32 height = default,
		uint32 faceCount = default,
		uint32 arraySize = default,
		uint32 mipCount = default);

	[CRepr]
	public struct XrSwapchainImageBaseHeader : this(
		XrStructureType type = default,
		void* next = null);

	[CRepr]
	public struct XrSwapchainImageAcquireInfo : this(
		XrStructureType type = .XR_TYPE_SWAPCHAIN_IMAGE_ACQUIRE_INFO,
		void* next = null);

	[CRepr]
	public struct XrSwapchainImageWaitInfo : this(
		XrStructureType type = .XR_TYPE_SWAPCHAIN_IMAGE_WAIT_INFO,
		void* next = null,
		XrDuration timeout = default);

	[CRepr]
	public struct XrSwapchainImageReleaseInfo : this(
		XrStructureType type = .XR_TYPE_SWAPCHAIN_IMAGE_RELEASE_INFO,
		void* next = null);

	[CRepr]
	public struct XrReferenceSpaceCreateInfo : this(
		XrStructureType type = .XR_TYPE_REFERENCE_SPACE_CREATE_INFO,
		void* next = null,
		XrReferenceSpaceType referenceSpaceType = default,
		XrPosef poseInReferenceSpace = default);

	[CRepr]
	public struct XrActionSpaceCreateInfo : this(
		XrStructureType type = .XR_TYPE_ACTION_SPACE_CREATE_INFO,
		void* next = null,
		XrAction action = default,
		XrPath subactionPath = default,
		XrPosef poseInActionSpace = default);

	[CRepr]
	public struct XrSpaceLocation : this(
		XrStructureType type = .XR_TYPE_SPACE_LOCATION,
		void* next = null,
		XrSpaceLocationFlags locationFlags = default,
		XrPosef pose = default);

	[CRepr]
	public struct XrSpaceVelocity : this(
		XrStructureType type = .XR_TYPE_SPACE_VELOCITY,
		void* next = null,
		XrSpaceVelocityFlags velocityFlags = default,
		XrVector3f linearVelocity = default,
		XrVector3f angularVelocity = default);

	[CRepr]
	public struct XrFovf : this(
		float angleLeft = default,
		float angleRight = default,
		float angleUp = default,
		float angleDown = default);

	[CRepr]
	public struct XrView : this(
		XrStructureType type = .XR_TYPE_VIEW,
		void* next = null,
		XrPosef pose = default,
		XrFovf fov = default);

	[CRepr]
	public struct XrViewLocateInfo : this(
		XrStructureType type = .XR_TYPE_VIEW_LOCATE_INFO,
		void* next = null,
		XrViewConfigurationType viewConfigurationType = default,
		XrTime displayTime = default,
		XrSpace space = default);

	[CRepr]
	public struct XrViewState : this(
		XrStructureType type = .XR_TYPE_VIEW_STATE,
		void* next = null,
		XrViewStateFlags viewStateFlags = default);

	[CRepr]
	public struct XrViewConfigurationView : this(
		XrStructureType type = .XR_TYPE_VIEW_CONFIGURATION_VIEW,
		void* next = null,
		uint32 recommendedImageRectWidth = default,
		uint32 maxImageRectWidth = default,
		uint32 recommendedImageRectHeight = default,
		uint32 maxImageRectHeight = default,
		uint32 recommendedSwapchainSampleCount = default,
		uint32 maxSwapchainSampleCount = default);

	[CRepr]
	public struct XrSwapchainSubImage : this(
		XrSwapchain swapchain = default,
		XrRect2Di imageRect = default,
		uint32 imageArrayIndex = default);

	[CRepr]
	public struct XrCompositionLayerBaseHeader : this(
		XrStructureType type = default,
		void* next = null,
		XrCompositionLayerFlags layerFlags = default,
		XrSpace space = default);

	[CRepr]
	public struct XrCompositionLayerProjectionView : this(
		XrStructureType type = .XR_TYPE_COMPOSITION_LAYER_PROJECTION_VIEW,
		void* next = null,
		XrPosef pose = default,
		XrFovf fov = default,
		XrSwapchainSubImage subImage = default);

	[CRepr]
	public struct XrCompositionLayerProjection : this(
		XrStructureType type = .XR_TYPE_COMPOSITION_LAYER_PROJECTION,
		void* next = null,
		XrCompositionLayerFlags layerFlags = default,
		XrSpace space = default,
		uint32 viewCount = default,
		XrCompositionLayerProjectionView* views = null);

	[CRepr]
	public struct XrCompositionLayerQuad : this(
		XrStructureType type = .XR_TYPE_COMPOSITION_LAYER_QUAD,
		void* next = null,
		XrCompositionLayerFlags layerFlags = default,
		XrSpace space = default,
		XrEyeVisibility eyeVisibility = default,
		XrSwapchainSubImage subImage = default,
		XrPosef pose = default,
		XrExtent2Df size = default);

	[CRepr]
	public struct XrFrameBeginInfo : this(
		XrStructureType type = .XR_TYPE_FRAME_BEGIN_INFO,
		void* next = null);

	[CRepr]
	public struct XrFrameEndInfo : this(
		XrStructureType type = .XR_TYPE_FRAME_END_INFO,
		void* next = null,
		XrTime displayTime = default,
		XrEnvironmentBlendMode environmentBlendMode = default,
		uint32 layerCount = default,
		XrCompositionLayerBaseHeader** layers = null);

	[CRepr]
	public struct XrFrameWaitInfo : this(
		XrStructureType type = .XR_TYPE_FRAME_WAIT_INFO,
		void* next = null);

	[CRepr]
	public struct XrFrameState : this(
		XrStructureType type = .XR_TYPE_FRAME_STATE,
		void* next = null,
		XrTime predictedDisplayTime = default,
		XrDuration predictedDisplayPeriod = default,
		XrBool32 shouldRender = default);

	[CRepr]
	public struct XrHapticBaseHeader : this(
		XrStructureType type = default,
		void* next = null);

	[CRepr]
	public struct XrHapticVibration : this(
		XrStructureType type = .XR_TYPE_HAPTIC_VIBRATION,
		void* next = null,
		XrDuration duration = default,
		float frequency = default,
		float amplitude = default);

	[CRepr]
	public struct XrEventDataBaseHeader : this(
		XrStructureType type = default,
		void* next = null);

	[CRepr]
	public struct XrEventDataBuffer : this(
		XrStructureType type = .XR_TYPE_EVENT_DATA_BUFFER,
		void* next = null,
		uint8[4000] varying = default);

	[CRepr]
	public struct XrEventDataEventsLost : this(
		XrStructureType type = .XR_TYPE_EVENT_DATA_EVENTS_LOST,
		void* next = null,
		uint32 lostEventCount = default);

	[CRepr]
	public struct XrEventDataInstanceLossPending : this(
		XrStructureType type = .XR_TYPE_EVENT_DATA_INSTANCE_LOSS_PENDING,
		void* next = null,
		XrTime lossTime = default);

	[CRepr]
	public struct XrEventDataSessionStateChanged : this(
		XrStructureType type = .XR_TYPE_EVENT_DATA_SESSION_STATE_CHANGED,
		void* next = null,
		XrSession session = default,
		XrSessionState state = default,
		XrTime time = default);

	[CRepr]
	public struct XrEventDataReferenceSpaceChangePending : this(
		XrStructureType type = .XR_TYPE_EVENT_DATA_REFERENCE_SPACE_CHANGE_PENDING,
		void* next = null,
		XrSession session = default,
		XrReferenceSpaceType referenceSpaceType = default,
		XrTime changeTime = default,
		XrBool32 poseValid = default,
		XrPosef poseInPreviousSpace = default);

	[CRepr]
	public struct XrViewConfigurationProperties : this(
		XrStructureType type = .XR_TYPE_VIEW_CONFIGURATION_PROPERTIES,
		void* next = null,
		XrViewConfigurationType viewConfigurationType = default,
		XrBool32 fovMutable = default);

	[CRepr]
	public struct XrActionStateBoolean : this(
		XrStructureType type = .XR_TYPE_ACTION_STATE_BOOLEAN,
		void* next = null,
		XrBool32 currentState = default,
		XrBool32 changedSinceLastSync = default,
		XrTime lastChangeTime = default,
		XrBool32 isActive = default);

	[CRepr]
	public struct XrActionStateFloat : this(
		XrStructureType type = .XR_TYPE_ACTION_STATE_FLOAT,
		void* next = null,
		float currentState = default,
		XrBool32 changedSinceLastSync = default,
		XrTime lastChangeTime = default,
		XrBool32 isActive = default);

	[CRepr]
	public struct XrActionStateVector2f : this(
		XrStructureType type = .XR_TYPE_ACTION_STATE_VECTOR2F,
		void* next = null,
		XrVector2f currentState = default,
		XrBool32 changedSinceLastSync = default,
		XrTime lastChangeTime = default,
		XrBool32 isActive = default);

	[CRepr]
	public struct XrActionStatePose : this(
		XrStructureType type = .XR_TYPE_ACTION_STATE_POSE,
		void* next = null,
		XrBool32 isActive = default);

	[CRepr]
	public struct XrActionStateGetInfo : this(
		XrStructureType type = .XR_TYPE_ACTION_STATE_GET_INFO,
		void* next = null,
		XrAction action = default,
		XrPath subactionPath = default);

	[CRepr]
	public struct XrHapticActionInfo : this(
		XrStructureType type = .XR_TYPE_HAPTIC_ACTION_INFO,
		void* next = null,
		XrAction action = default,
		XrPath subactionPath = default);

	[CRepr]
	public struct XrActionSetCreateInfo : this(
		XrStructureType type = .XR_TYPE_ACTION_SET_CREATE_INFO,
		void* next = null,
		c_char[OpenXR.XR_MAX_ACTION_SET_NAME_SIZE] actionSetName = default,
		c_char[OpenXR.XR_MAX_LOCALIZED_ACTION_SET_NAME_SIZE] localizedActionSetName = default,
		uint32 priority = default);

	[CRepr]
	public struct XrActionSuggestedBinding : this(
		XrAction action = default,
		XrPath binding = default);

	[CRepr]
	public struct XrInteractionProfileSuggestedBinding : this(
		XrStructureType type = .XR_TYPE_INTERACTION_PROFILE_SUGGESTED_BINDING,
		void* next = null,
		XrPath interactionProfile = default,
		uint32 countSuggestedBindings = default,
		XrActionSuggestedBinding* suggestedBindings = null);

	[CRepr]
	public struct XrActiveActionSet : this(
		XrActionSet actionSet = default,
		XrPath subactionPath = default);

	[CRepr]
	public struct XrSessionActionSetsAttachInfo : this(
		XrStructureType type = .XR_TYPE_SESSION_ACTION_SETS_ATTACH_INFO,
		void* next = null,
		uint32 countActionSets = default,
		XrActionSet* actionSets = null);

	[CRepr]
	public struct XrActionsSyncInfo : this(
		XrStructureType type = .XR_TYPE_ACTIONS_SYNC_INFO,
		void* next = null,
		uint32 countActiveActionSets = default,
		XrActiveActionSet* activeActionSets = null);

	[CRepr]
	public struct XrBoundSourcesForActionEnumerateInfo : this(
		XrStructureType type = .XR_TYPE_BOUND_SOURCES_FOR_ACTION_ENUMERATE_INFO,
		void* next = null,
		XrAction action = default);

	[CRepr]
	public struct XrInputSourceLocalizedNameGetInfo : this(
		XrStructureType type = .XR_TYPE_INPUT_SOURCE_LOCALIZED_NAME_GET_INFO,
		void* next = null,
		XrPath sourcePath = default,
		XrInputSourceLocalizedNameFlags whichComponents = default);

	[CRepr]
	public struct XrEventDataInteractionProfileChanged : this(
		XrStructureType type = .XR_TYPE_EVENT_DATA_INTERACTION_PROFILE_CHANGED,
		void* next = null,
		XrSession session = default);

	[CRepr]
	public struct XrInteractionProfileState : this(
		XrStructureType type = .XR_TYPE_INTERACTION_PROFILE_STATE,
		void* next = null,
		XrPath interactionProfile = default);

	[CRepr]
	public struct XrActionCreateInfo : this(
		XrStructureType type = .XR_TYPE_ACTION_CREATE_INFO,
		void* next = null,
		c_char[OpenXR.XR_MAX_ACTION_NAME_SIZE] actionName = default,
		XrActionType actionType = default,
		uint32 countSubactionPaths = default,
		XrPath* subactionPaths = null,
		c_char[OpenXR.XR_MAX_LOCALIZED_ACTION_NAME_SIZE] localizedActionName = default);
	public function void PFN_xrVoidFunction();
	public struct XrSceneObserverMSFT : uint64;
	public struct XrSceneMSFT : uint64;
	/* Structure type enumerant */
	public enum XrStructureType : int32
	{
		XR_TYPE_UNKNOWN = 0,
		XR_TYPE_API_LAYER_PROPERTIES = 1,
		XR_TYPE_EXTENSION_PROPERTIES = 2,
		XR_TYPE_INSTANCE_CREATE_INFO = 3,
		XR_TYPE_SYSTEM_GET_INFO = 4,
		XR_TYPE_SYSTEM_PROPERTIES = 5,
		XR_TYPE_VIEW_LOCATE_INFO = 6,
		XR_TYPE_VIEW = 7,
		XR_TYPE_SESSION_CREATE_INFO = 8,
		XR_TYPE_SWAPCHAIN_CREATE_INFO = 9,
		XR_TYPE_SESSION_BEGIN_INFO = 10,
		XR_TYPE_VIEW_STATE = 11,
		XR_TYPE_FRAME_END_INFO = 12,
		XR_TYPE_HAPTIC_VIBRATION = 13,
		XR_TYPE_EVENT_DATA_BUFFER = 16,
		XR_TYPE_EVENT_DATA_INSTANCE_LOSS_PENDING = 17,
		XR_TYPE_EVENT_DATA_SESSION_STATE_CHANGED = 18,
		XR_TYPE_ACTION_STATE_BOOLEAN = 23,
		XR_TYPE_ACTION_STATE_FLOAT = 24,
		XR_TYPE_ACTION_STATE_VECTOR2F = 25,
		XR_TYPE_ACTION_STATE_POSE = 27,
		XR_TYPE_ACTION_SET_CREATE_INFO = 28,
		XR_TYPE_ACTION_CREATE_INFO = 29,
		XR_TYPE_INSTANCE_PROPERTIES = 32,
		XR_TYPE_FRAME_WAIT_INFO = 33,
		XR_TYPE_COMPOSITION_LAYER_PROJECTION = 35,
		XR_TYPE_COMPOSITION_LAYER_QUAD = 36,
		XR_TYPE_REFERENCE_SPACE_CREATE_INFO = 37,
		XR_TYPE_ACTION_SPACE_CREATE_INFO = 38,
		XR_TYPE_EVENT_DATA_REFERENCE_SPACE_CHANGE_PENDING = 40,
		XR_TYPE_VIEW_CONFIGURATION_VIEW = 41,
		XR_TYPE_SPACE_LOCATION = 42,
		XR_TYPE_SPACE_VELOCITY = 43,
		XR_TYPE_FRAME_STATE = 44,
		XR_TYPE_VIEW_CONFIGURATION_PROPERTIES = 45,
		XR_TYPE_FRAME_BEGIN_INFO = 46,
		XR_TYPE_COMPOSITION_LAYER_PROJECTION_VIEW = 48,
		XR_TYPE_EVENT_DATA_EVENTS_LOST = 49,
		XR_TYPE_INTERACTION_PROFILE_SUGGESTED_BINDING = 51,
		XR_TYPE_EVENT_DATA_INTERACTION_PROFILE_CHANGED = 52,
		XR_TYPE_INTERACTION_PROFILE_STATE = 53,
		XR_TYPE_SWAPCHAIN_IMAGE_ACQUIRE_INFO = 55,
		XR_TYPE_SWAPCHAIN_IMAGE_WAIT_INFO = 56,
		XR_TYPE_SWAPCHAIN_IMAGE_RELEASE_INFO = 57,
		XR_TYPE_ACTION_STATE_GET_INFO = 58,
		XR_TYPE_HAPTIC_ACTION_INFO = 59,
		XR_TYPE_SESSION_ACTION_SETS_ATTACH_INFO = 60,
		XR_TYPE_ACTIONS_SYNC_INFO = 61,
		XR_TYPE_BOUND_SOURCES_FOR_ACTION_ENUMERATE_INFO = 62,
		XR_TYPE_INPUT_SOURCE_LOCALIZED_NAME_GET_INFO = 63,
	}

   /* Error and return codes */
	public enum XrResult : int32
	{
		/* Function successfully completed. */
		XR_SUCCESS = 0,
		/* The specified timeout time occurred before the operation could complete. */
		XR_TIMEOUT_EXPIRED = 1,
		/* The session will be lost soon. */
		XR_SESSION_LOSS_PENDING = 3,
		/* No event was available. */
		XR_EVENT_UNAVAILABLE = 4,
		/* The space's bounds are not known at the moment. */
		XR_SPACE_BOUNDS_UNAVAILABLE = 7,
		/* The session is not in the focused state. */
		XR_SESSION_NOT_FOCUSED = 8,
		/* A frame has been discarded from composition. */
		XR_FRAME_DISCARDED = 9,
		/* The function usage was invalid in some way. */
		XR_ERROR_VALIDATION_FAILURE = -1,
		/* The runtime failed to handle the function in an unexpected way that is not covered by another error result. 
		*/
		XR_ERROR_RUNTIME_FAILURE = -2,
		/* A memory allocation has failed. */
		XR_ERROR_OUT_OF_MEMORY = -3,
		/* The runtime does not support the requested API version. */
		XR_ERROR_API_VERSION_UNSUPPORTED = -4,
		/* Initialization of object could not be completed. */
		XR_ERROR_INITIALIZATION_FAILED = -6,
		/* The requested function was not found or is otherwise unsupported. */
		XR_ERROR_FUNCTION_UNSUPPORTED = -7,
		/* The requested feature is not supported. */
		XR_ERROR_FEATURE_UNSUPPORTED = -8,
		/* A requested extension is not supported. */
		XR_ERROR_EXTENSION_NOT_PRESENT = -9,
		/* The runtime supports no more of the requested resource. */
		XR_ERROR_LIMIT_REACHED = -10,
		/* The supplied size was smaller than required. */
		XR_ERROR_SIZE_INSUFFICIENT = -11,
		/* A supplied object handle was invalid. */
		XR_ERROR_HANDLE_INVALID = -12,
		/* The slink:XrInstance was lost or could not be found. It will need to be destroyed and optionally recreated.
		*/
		XR_ERROR_INSTANCE_LOST = -13,
		/* The session <<session_running, is already running>>. */
		XR_ERROR_SESSION_RUNNING = -14,
		/* The session <<session_not_running, is not yet running>>. */
		XR_ERROR_SESSION_NOT_RUNNING = -16,
		/* The slink:XrSession was lost. It will need to be destroyed and optionally recreated. */
		XR_ERROR_SESSION_LOST = -17,
		/* The provided basetype:XrSystemId was invalid. */
		XR_ERROR_SYSTEM_INVALID = -18,
		/* The provided basetype:XrPath was not valid. */
		XR_ERROR_PATH_INVALID = -19,
		/* The maximum number of supported semantic paths has been reached. */
		XR_ERROR_PATH_COUNT_EXCEEDED = -20,
		/* The semantic path character format is invalid. */
		XR_ERROR_PATH_FORMAT_INVALID = -21,
		/* The semantic path is unsupported. */
		XR_ERROR_PATH_UNSUPPORTED = -22,
		/* The layer was NULL or otherwise invalid. */
		XR_ERROR_LAYER_INVALID = -23,
		/* The number of specified layers is greater than the supported number. */
		XR_ERROR_LAYER_LIMIT_EXCEEDED = -24,
		/* The image rect was negatively sized or otherwise invalid. */
		XR_ERROR_SWAPCHAIN_RECT_INVALID = -25,
		/* The image format is not supported by the runtime or platform. */
		XR_ERROR_SWAPCHAIN_FORMAT_UNSUPPORTED = -26,
		/* The API used to retrieve an action's state does not match the action's type. */
		XR_ERROR_ACTION_TYPE_MISMATCH = -27,
		/* The session is not in the ready state. */
		XR_ERROR_SESSION_NOT_READY = -28,
		/* The session is not in the stopping state. */
		XR_ERROR_SESSION_NOT_STOPPING = -29,
		/* The provided basetype:XrTime was zero, negative, or out of range. */
		XR_ERROR_TIME_INVALID = -30,
		/* The specified reference space is not supported by the runtime or system. */
		XR_ERROR_REFERENCE_SPACE_UNSUPPORTED = -31,
		/* The file could not be accessed. */
		XR_ERROR_FILE_ACCESS_ERROR = -32,
		/* The file's contents were invalid. */
		XR_ERROR_FILE_CONTENTS_INVALID = -33,
		/* The specified form factor is not supported by the current runtime or platform. */
		XR_ERROR_FORM_FACTOR_UNSUPPORTED = -34,
		/* The specified form factor is supported, but the device is currently not available, e.g. not plugged in or
		powered off. */
		XR_ERROR_FORM_FACTOR_UNAVAILABLE = -35,
		/* A requested API layer is not present or could not be loaded. */
		XR_ERROR_API_LAYER_NOT_PRESENT = -36,
		/* The call was made without having made a previously required call. */
		XR_ERROR_CALL_ORDER_INVALID = -37,
		/* The given graphics device is not in a valid state. The graphics device could be lost or initialized without
		meeting graphics requirements. */
		XR_ERROR_GRAPHICS_DEVICE_INVALID = -38,
		/* The supplied pose was invalid with respect to the requirements. */
		XR_ERROR_POSE_INVALID = -39,
		/* The supplied index was outside the range of valid indices. */
		XR_ERROR_INDEX_OUT_OF_RANGE = -40,
		/* The specified view configuration type is not supported by the runtime or platform. */
		XR_ERROR_VIEW_CONFIGURATION_TYPE_UNSUPPORTED = -41,
		/* The specified environment blend mode is not supported by the runtime or platform. */
		XR_ERROR_ENVIRONMENT_BLEND_MODE_UNSUPPORTED = -42,
		/* The name provided was a duplicate of an already-existing resource. */
		XR_ERROR_NAME_DUPLICATED = -44,
		/* The name provided was invalid. */
		XR_ERROR_NAME_INVALID = -45,
		/* A referenced action set is not attached to the session. */
		XR_ERROR_ACTIONSET_NOT_ATTACHED = -46,
		/* The session already has attached action sets. */
		XR_ERROR_ACTIONSETS_ALREADY_ATTACHED = -47,
		/* The localized name provided was a duplicate of an already-existing resource. */
		XR_ERROR_LOCALIZED_NAME_DUPLICATED = -48,
		/* The localized name provided was invalid. */
		XR_ERROR_LOCALIZED_NAME_INVALID = -49,
		/* The fname:xrGetGraphicsRequirements* call was not made before calling fname:xrCreateSession. */
		XR_ERROR_GRAPHICS_REQUIREMENTS_CALL_MISSING = -50,
		/* The loader was unable to find or load a runtime. */
		XR_ERROR_RUNTIME_UNAVAILABLE = -51,
	}

	/* Enums to track objects of various types */
	public enum XrObjectType : int32
	{
		XR_OBJECT_TYPE_UNKNOWN = 0,
	   /* XrInstance */
		XR_OBJECT_TYPE_INSTANCE = 1,
	   /* XrSession */
		XR_OBJECT_TYPE_SESSION = 2,
	   /* XrSwapchain */
		XR_OBJECT_TYPE_SWAPCHAIN = 3,
	   /* XrSpace */
		XR_OBJECT_TYPE_SPACE = 4,
	   /* XrActionSet */
		XR_OBJECT_TYPE_ACTION_SET = 5,
	   /* XrAction */
		XR_OBJECT_TYPE_ACTION = 6,
	}

   /* Android Thread Types */
	public enum XrAndroidThreadTypeKHR : int32
	{
		XR_ANDROID_THREAD_TYPE_APPLICATION_MAIN_KHR = 1,
		XR_ANDROID_THREAD_TYPE_APPLICATION_WORKER_KHR = 2,
		XR_ANDROID_THREAD_TYPE_RENDERER_MAIN_KHR = 3,
		XR_ANDROID_THREAD_TYPE_RENDERER_WORKER_KHR = 4,
	}

   /* eye visibility selector */
	public enum XrEyeVisibility : int32
	{
		/* Display in both eyes. */
		XR_EYE_VISIBILITY_BOTH = 0,
		/* Display in the left eye only. */
		XR_EYE_VISIBILITY_LEFT = 1,
		/* Display in the right eye only. */
		XR_EYE_VISIBILITY_RIGHT = 2,
	}

	public enum XrActionType : int32
	{
		XR_ACTION_TYPE_BOOLEAN_INPUT = 1,
		XR_ACTION_TYPE_FLOAT_INPUT = 2,
		XR_ACTION_TYPE_VECTOR2F_INPUT = 3,
		XR_ACTION_TYPE_POSE_INPUT = 4,
		XR_ACTION_TYPE_VIBRATION_OUTPUT = 100,
	}

	public enum XrReferenceSpaceType : int32
	{
		XR_REFERENCE_SPACE_TYPE_VIEW = 1,
		XR_REFERENCE_SPACE_TYPE_LOCAL = 2,
		XR_REFERENCE_SPACE_TYPE_STAGE = 3,
	}

	public enum XrFormFactor : int32
	{
		XR_FORM_FACTOR_HEAD_MOUNTED_DISPLAY = 1,
		XR_FORM_FACTOR_HANDHELD_DISPLAY = 2,
	}

	public enum XrViewConfigurationType : int32
	{
		XR_VIEW_CONFIGURATION_TYPE_PRIMARY_MONO = 1,
		XR_VIEW_CONFIGURATION_TYPE_PRIMARY_STEREO = 2,
	}

	public enum XrEnvironmentBlendMode : int32
	{
		XR_ENVIRONMENT_BLEND_MODE_OPAQUE = 1,
		XR_ENVIRONMENT_BLEND_MODE_ADDITIVE = 2,
		XR_ENVIRONMENT_BLEND_MODE_ALPHA_BLEND = 3,
	}

	public enum XrSessionState : int32
	{
		XR_SESSION_STATE_UNKNOWN = 0,
		XR_SESSION_STATE_IDLE = 1,
		XR_SESSION_STATE_READY = 2,
		XR_SESSION_STATE_SYNCHRONIZED = 3,
		XR_SESSION_STATE_VISIBLE = 4,
		XR_SESSION_STATE_FOCUSED = 5,
		XR_SESSION_STATE_STOPPING = 6,
		XR_SESSION_STATE_LOSS_PENDING = 7,
		XR_SESSION_STATE_EXITING = 8,
	}

	public enum XrPerfSettingsLevelEXT : int32
	{
		/* Performance settings hint used by the application to indicate that it enters a non-XR
					 section (head-locked / static screen), during which power savings are to be prioritized */
		XR_PERF_SETTINGS_LEVEL_POWER_SAVINGS_EXT = 0,
		/* Performance settings hint used by the application to indicate that it enters a low
					 and stable complexity section, during which reducing power is more important than
					 occasional late rendering frames */
		XR_PERF_SETTINGS_LEVEL_SUSTAINED_LOW_EXT = 25,
		/* Performance settings hint used by the application to indicate that it enters
					 a high or dynamic complexity section, during which the XR Runtime strives for consistent
					 XR compositing and frame rendering within a thermally sustainable range */
		XR_PERF_SETTINGS_LEVEL_SUSTAINED_HIGH_EXT = 50,
		/* Performance settings hint used by the application to indicate that the application enters
					 a section with very high complexity, during which the XR Runtime is allowed to step
					 up beyond the thermally sustainable range */
		XR_PERF_SETTINGS_LEVEL_BOOST_EXT = 75,
	}

	public enum XrPerfSettingsDomainEXT : int32
	{
		/* Indicates that the performance settings or notification applies to CPU domain */
		XR_PERF_SETTINGS_DOMAIN_CPU_EXT = 1,
		/* Indicates that the performance settings or notification applies to GPU domain */
		XR_PERF_SETTINGS_DOMAIN_GPU_EXT = 2,
	}

	public enum XrPerfSettingsSubDomainEXT : int32
	{
		/* Indicates that the performance notification originates from the COMPOSITING sub-domain */
		XR_PERF_SETTINGS_SUB_DOMAIN_COMPOSITING_EXT = 1,
		/* Indicates that the performance notification originates from the RENDERING sub-domain */
		XR_PERF_SETTINGS_SUB_DOMAIN_RENDERING_EXT = 2,
		/* Indicates that the performance notification originates from the THERMAL sub-domain */
		XR_PERF_SETTINGS_SUB_DOMAIN_THERMAL_EXT = 3,
	}

	public enum XrPerfSettingsNotificationLevelEXT : int32
	{
		/* Notifies that the sub-domain has reached a level
					 where no further actions other than currently applied are necessary */
		XR_PERF_SETTINGS_NOTIF_LEVEL_NORMAL_EXT = 0,
		/* Notifies that the sub-domain has reached an early warning level
					 where the application should start proactive mitigation actions
					 with the goal to return to the ename:XR_PERF_NOTIF_LEVEL_NORMAL level */
		XR_PERF_SETTINGS_NOTIF_LEVEL_WARNING_EXT = 25,
		/* Notifies that the sub-domain has reached a critical
					 level with significant performance degradation.
					 The application should take drastic mitigation action */
		XR_PERF_SETTINGS_NOTIF_LEVEL_IMPAIRED_EXT = 75,
	}

	public enum XrVisibilityMaskTypeKHR : int32
	{
		/* exclusive mesh; indicates that which the viewer cannot see. */
		XR_VISIBILITY_MASK_TYPE_HIDDEN_TRIANGLE_MESH_KHR = 1,
		/* inclusive mesh; indicates strictly that which the viewer can see. */
		XR_VISIBILITY_MASK_TYPE_VISIBLE_TRIANGLE_MESH_KHR = 2,
		/* line loop; traces the outline of the area the viewer can see. */
		XR_VISIBILITY_MASK_TYPE_LINE_LOOP_KHR = 3,
	}

	public enum XrHandEXT : int32
	{
		XR_HAND_LEFT_EXT = 1,
		XR_HAND_RIGHT_EXT = 2,
	}

	public enum XrHandJointEXT : int32
	{
		XR_HAND_JOINT_PALM_EXT = 0,
		XR_HAND_JOINT_WRIST_EXT = 1,
		XR_HAND_JOINT_THUMB_METACARPAL_EXT = 2,
		XR_HAND_JOINT_THUMB_PROXIMAL_EXT = 3,
		XR_HAND_JOINT_THUMB_DISTAL_EXT = 4,
		XR_HAND_JOINT_THUMB_TIP_EXT = 5,
		XR_HAND_JOINT_INDEX_METACARPAL_EXT = 6,
		XR_HAND_JOINT_INDEX_PROXIMAL_EXT = 7,
		XR_HAND_JOINT_INDEX_INTERMEDIATE_EXT = 8,
		XR_HAND_JOINT_INDEX_DISTAL_EXT = 9,
		XR_HAND_JOINT_INDEX_TIP_EXT = 10,
		XR_HAND_JOINT_MIDDLE_METACARPAL_EXT = 11,
		XR_HAND_JOINT_MIDDLE_PROXIMAL_EXT = 12,
		XR_HAND_JOINT_MIDDLE_INTERMEDIATE_EXT = 13,
		XR_HAND_JOINT_MIDDLE_DISTAL_EXT = 14,
		XR_HAND_JOINT_MIDDLE_TIP_EXT = 15,
		XR_HAND_JOINT_RING_METACARPAL_EXT = 16,
		XR_HAND_JOINT_RING_PROXIMAL_EXT = 17,
		XR_HAND_JOINT_RING_INTERMEDIATE_EXT = 18,
		XR_HAND_JOINT_RING_DISTAL_EXT = 19,
		XR_HAND_JOINT_RING_TIP_EXT = 20,
		XR_HAND_JOINT_LITTLE_METACARPAL_EXT = 21,
		XR_HAND_JOINT_LITTLE_PROXIMAL_EXT = 22,
		XR_HAND_JOINT_LITTLE_INTERMEDIATE_EXT = 23,
		XR_HAND_JOINT_LITTLE_DISTAL_EXT = 24,
		XR_HAND_JOINT_LITTLE_TIP_EXT = 25,
	}

	public enum XrHandJointSetEXT : int32
	{
		XR_HAND_JOINT_SET_DEFAULT_EXT = 0,
	}

	public enum XrHandJointsMotionRangeEXT : int32
	{
		XR_HAND_JOINTS_MOTION_RANGE_UNOBSTRUCTED_EXT = 1,
		XR_HAND_JOINTS_MOTION_RANGE_CONFORMING_TO_CONTROLLER_EXT = 2,
	}

	public enum XrHandPoseTypeMSFT : int32
	{
		XR_HAND_POSE_TYPE_TRACKED_MSFT = 0,
		XR_HAND_POSE_TYPE_REFERENCE_OPEN_PALM_MSFT = 1,
	}

	public enum XrColorSpaceFB : int32
	{
		XR_COLOR_SPACE_UNMANAGED_FB = 0,
		XR_COLOR_SPACE_REC2020_FB = 1,
		XR_COLOR_SPACE_REC709_FB = 2,
		XR_COLOR_SPACE_RIFT_CV1_FB = 3,
		XR_COLOR_SPACE_RIFT_S_FB = 4,
		XR_COLOR_SPACE_QUEST_FB = 5,
		XR_COLOR_SPACE_P3_FB = 6,
		XR_COLOR_SPACE_ADOBE_RGB_FB = 7,
	}

	public enum XrReprojectionModeMSFT : int32
	{
		XR_REPROJECTION_MODE_DEPTH_MSFT = 1,
		XR_REPROJECTION_MODE_PLANAR_FROM_DEPTH_MSFT = 2,
		XR_REPROJECTION_MODE_PLANAR_MANUAL_MSFT = 3,
		XR_REPROJECTION_MODE_ORIENTATION_ONLY_MSFT = 4,
	}

	public enum XrSpatialGraphNodeTypeMSFT : int32
	{
		XR_SPATIAL_GRAPH_NODE_TYPE_STATIC_MSFT = 1,
		XR_SPATIAL_GRAPH_NODE_TYPE_DYNAMIC_MSFT = 2,
	}

	public enum XrSceneObjectTypeMSFT : int32
	{
		XR_SCENE_OBJECT_TYPE_UNCATEGORIZED_MSFT = -1,
		XR_SCENE_OBJECT_TYPE_BACKGROUND_MSFT = 1,
		XR_SCENE_OBJECT_TYPE_WALL_MSFT = 2,
		XR_SCENE_OBJECT_TYPE_FLOOR_MSFT = 3,
		XR_SCENE_OBJECT_TYPE_CEILING_MSFT = 4,
		XR_SCENE_OBJECT_TYPE_PLATFORM_MSFT = 5,
		XR_SCENE_OBJECT_TYPE_INFERRED_MSFT = 6,
	}

	public enum XrScenePlaneAlignmentTypeMSFT : int32
	{
		XR_SCENE_PLANE_ALIGNMENT_TYPE_NON_ORTHOGONAL_MSFT = 0,
		XR_SCENE_PLANE_ALIGNMENT_TYPE_HORIZONTAL_MSFT = 1,
		XR_SCENE_PLANE_ALIGNMENT_TYPE_VERTICAL_MSFT = 2,
	}

	public enum XrSceneComputeStateMSFT : int32
	{
		XR_SCENE_COMPUTE_STATE_NONE_MSFT = 0,
		XR_SCENE_COMPUTE_STATE_UPDATING_MSFT = 1,
		XR_SCENE_COMPUTE_STATE_COMPLETED_MSFT = 2,
		XR_SCENE_COMPUTE_STATE_COMPLETED_WITH_ERROR_MSFT = 3,
	}

	public enum XrSceneComponentTypeMSFT : int32
	{
		XR_SCENE_COMPONENT_TYPE_INVALID_MSFT = -1,
		XR_SCENE_COMPONENT_TYPE_OBJECT_MSFT = 1,
		XR_SCENE_COMPONENT_TYPE_PLANE_MSFT = 2,
		XR_SCENE_COMPONENT_TYPE_VISUAL_MESH_MSFT = 3,
		XR_SCENE_COMPONENT_TYPE_COLLIDER_MESH_MSFT = 4,
	}

	public enum XrSceneComputeFeatureMSFT : int32
	{
		XR_SCENE_COMPUTE_FEATURE_PLANE_MSFT = 1,
		XR_SCENE_COMPUTE_FEATURE_PLANE_MESH_MSFT = 2,
		XR_SCENE_COMPUTE_FEATURE_VISUAL_MESH_MSFT = 3,
		XR_SCENE_COMPUTE_FEATURE_COLLIDER_MESH_MSFT = 4,
	}

	public enum XrSceneComputeConsistencyMSFT : int32
	{
		XR_SCENE_COMPUTE_CONSISTENCY_SNAPSHOT_COMPLETE_MSFT = 1,
		XR_SCENE_COMPUTE_CONSISTENCY_SNAPSHOT_INCOMPLETE_FAST_MSFT = 2,
		XR_SCENE_COMPUTE_CONSISTENCY_OCCLUSION_OPTIMIZED_MSFT = 3,
	}

	public enum XrMeshComputeLodMSFT : int32
	{
		XR_MESH_COMPUTE_LOD_COARSE_MSFT = 1,
		XR_MESH_COMPUTE_LOD_MEDIUM_MSFT = 2,
		XR_MESH_COMPUTE_LOD_FINE_MSFT = 3,
		XR_MESH_COMPUTE_LOD_UNLIMITED_MSFT = 4,
	}

	public function XrResult PFN_xrGetInstanceProcAddr(XrInstance instance, c_char* name, PFN_xrVoidFunction* _function);
	public function XrResult PFN_xrEnumerateApiLayerProperties(uint32 propertyCapacityInput, uint32* propertyCountOutput, XrApiLayerProperties* properties);
	public function XrResult PFN_xrEnumerateInstanceExtensionProperties(c_char* layerName, uint32 propertyCapacityInput, uint32* propertyCountOutput, XrExtensionProperties* properties);
	public function XrResult PFN_xrCreateInstance(XrInstanceCreateInfo* createInfo, XrInstance* instance);
	public function XrResult PFN_xrDestroyInstance(XrInstance instance);
	public function XrResult PFN_xrResultToString(XrInstance instance, XrResult value, c_char[OpenXR.XR_MAX_RESULT_STRING_SIZE] buffer);
	public function XrResult PFN_xrStructureTypeToString(XrInstance instance, XrStructureType value, c_char[OpenXR.XR_MAX_STRUCTURE_NAME_SIZE] buffer);
	public function XrResult PFN_xrGetInstanceProperties(XrInstance instance, XrInstanceProperties* instanceProperties);
	public function XrResult PFN_xrGetSystem(XrInstance instance, XrSystemGetInfo* getInfo, XrSystemId* systemId);
	public function XrResult PFN_xrGetSystemProperties(XrInstance instance, XrSystemId systemId, XrSystemProperties* properties);
	public function XrResult PFN_xrCreateSession(XrInstance instance, XrSessionCreateInfo* createInfo, XrSession* session);
	public function XrResult PFN_xrDestroySession(XrSession session);
	public function XrResult PFN_xrDestroySpace(XrSpace space);
	public function XrResult PFN_xrEnumerateSwapchainFormats(XrSession session, uint32 formatCapacityInput, uint32* formatCountOutput, int64* formats);
	public function XrResult PFN_xrCreateSwapchain(XrSession session, XrSwapchainCreateInfo* createInfo, XrSwapchain* swapchain);
	public function XrResult PFN_xrDestroySwapchain(XrSwapchain swapchain);
	public function XrResult PFN_xrEnumerateSwapchainImages(XrSwapchain swapchain, uint32 imageCapacityInput, uint32* imageCountOutput, XrSwapchainImageBaseHeader* images);
	public function XrResult PFN_xrAcquireSwapchainImage(XrSwapchain swapchain, XrSwapchainImageAcquireInfo* acquireInfo, uint32* index);
	public function XrResult PFN_xrWaitSwapchainImage(XrSwapchain swapchain, XrSwapchainImageWaitInfo* waitInfo);
	public function XrResult PFN_xrReleaseSwapchainImage(XrSwapchain swapchain, XrSwapchainImageReleaseInfo* releaseInfo);
	public function XrResult PFN_xrBeginSession(XrSession session, XrSessionBeginInfo* beginInfo);
	public function XrResult PFN_xrEndSession(XrSession session);
	public function XrResult PFN_xrRequestExitSession(XrSession session);
	public function XrResult PFN_xrEnumerateReferenceSpaces(XrSession session, uint32 spaceCapacityInput, uint32* spaceCountOutput, XrReferenceSpaceType* spaces);
	public function XrResult PFN_xrCreateReferenceSpace(XrSession session, XrReferenceSpaceCreateInfo* createInfo, XrSpace* space);
	public function XrResult PFN_xrCreateActionSpace(XrSession session, XrActionSpaceCreateInfo* createInfo, XrSpace* space);
	public function XrResult PFN_xrLocateSpace(XrSpace space, XrSpace baseSpace, XrTime time, XrSpaceLocation* location);
	public function XrResult PFN_xrEnumerateViewConfigurations(XrInstance instance, XrSystemId systemId, uint32 viewConfigurationTypeCapacityInput, uint32* viewConfigurationTypeCountOutput, XrViewConfigurationType* viewConfigurationTypes);
	public function XrResult PFN_xrEnumerateEnvironmentBlendModes(XrInstance instance, XrSystemId systemId, XrViewConfigurationType viewConfigurationType, uint32 environmentBlendModeCapacityInput, uint32* environmentBlendModeCountOutput, XrEnvironmentBlendMode* environmentBlendModes);
	public function XrResult PFN_xrGetViewConfigurationProperties(XrInstance instance, XrSystemId systemId, XrViewConfigurationType viewConfigurationType, XrViewConfigurationProperties* configurationProperties);
	public function XrResult PFN_xrEnumerateViewConfigurationViews(XrInstance instance, XrSystemId systemId, XrViewConfigurationType viewConfigurationType, uint32 viewCapacityInput, uint32* viewCountOutput, XrViewConfigurationView* views);
	public function XrResult PFN_xrBeginFrame(XrSession session, XrFrameBeginInfo* frameBeginInfo);
	public function XrResult PFN_xrLocateViews(XrSession session, XrViewLocateInfo* viewLocateInfo, XrViewState* viewState, uint32 viewCapacityInput, uint32* viewCountOutput, XrView* views);
	public function XrResult PFN_xrEndFrame(XrSession session, XrFrameEndInfo* frameEndInfo);
	public function XrResult PFN_xrWaitFrame(XrSession session, XrFrameWaitInfo* frameWaitInfo, XrFrameState* frameState);
	public function XrResult PFN_xrApplyHapticFeedback(XrSession session, XrHapticActionInfo* hapticActionInfo, XrHapticBaseHeader* hapticFeedback);
	public function XrResult PFN_xrStopHapticFeedback(XrSession session, XrHapticActionInfo* hapticActionInfo);
	public function XrResult PFN_xrPollEvent(XrInstance instance, XrEventDataBuffer* eventData);
	public function XrResult PFN_xrStringToPath(XrInstance instance, c_char* pathString, XrPath* path);
	public function XrResult PFN_xrPathToString(XrInstance instance, XrPath path, uint32 bufferCapacityInput, uint32* bufferCountOutput, c_char* buffer);
	public function XrResult PFN_xrGetReferenceSpaceBoundsRect(XrSession session, XrReferenceSpaceType referenceSpaceType, XrExtent2Df* bounds);
	public function XrResult PFN_xrGetActionStateBoolean(XrSession session, XrActionStateGetInfo* getInfo, XrActionStateBoolean* state);
	public function XrResult PFN_xrGetActionStateFloat(XrSession session, XrActionStateGetInfo* getInfo, XrActionStateFloat* state);
	public function XrResult PFN_xrGetActionStateVector2f(XrSession session, XrActionStateGetInfo* getInfo, XrActionStateVector2f* state);
	public function XrResult PFN_xrGetActionStatePose(XrSession session, XrActionStateGetInfo* getInfo, XrActionStatePose* state);
	public function XrResult PFN_xrCreateActionSet(XrInstance instance, XrActionSetCreateInfo* createInfo, XrActionSet* actionSet);
	public function XrResult PFN_xrDestroyActionSet(XrActionSet actionSet);
	public function XrResult PFN_xrCreateAction(XrActionSet actionSet, XrActionCreateInfo* createInfo, XrAction* action);
	public function XrResult PFN_xrDestroyAction(XrAction action);
	public function XrResult PFN_xrSuggestInteractionProfileBindings(XrInstance instance, XrInteractionProfileSuggestedBinding* suggestedBindings);
	public function XrResult PFN_xrAttachSessionActionSets(XrSession session, XrSessionActionSetsAttachInfo* attachInfo);
	public function XrResult PFN_xrGetCurrentInteractionProfile(XrSession session, XrPath topLevelUserPath, XrInteractionProfileState* interactionProfile);
	public function XrResult PFN_xrSyncActions(XrSession session, XrActionsSyncInfo* syncInfo);
	public function XrResult PFN_xrEnumerateBoundSourcesForAction(XrSession session, XrBoundSourcesForActionEnumerateInfo* enumerateInfo, uint32 sourceCapacityInput, uint32* sourceCountOutput, XrPath* sources);
	public function XrResult PFN_xrGetInputSourceLocalizedName(XrSession session, XrInputSourceLocalizedNameGetInfo* getInfo, uint32 bufferCapacityInput, uint32* bufferCountOutput, c_char* buffer);

	public static
	{
		public static uint64 XR_MAKE_VERSION(uint16 major, uint16 minor, uint32 patch) =>

			((((uint64)major) << 48) | (((uint64)minor) << 32) | (patch));
		public static uint16 XR_VERSION_MAJOR(uint64 version) => (uint16)(((version) >> 48) & 0xffff);
		public static uint16 XR_VERSION_MINOR(uint64 version) => (uint16)(((version) >> 32) & 0xffff);
		public static uint32 XR_VERSION_PATCH(uint64 version) => (uint32)((version) & 0xffffffff);
		public const uint64 XR_CURRENT_API_VERSION = XR_MAKE_VERSION(1, 0, 17);
		public const System.Version XR_VERSION = .(1, 0, 17, 0);
		public const int XR_NULL_PATH = 0;
		public const int XR_NULL_SYSTEM_ID = 0;
		public const int XR_NO_DURATION = 0;
		public const int64 XR_INFINITE_DURATION = 0x7FFFFFFFFFFFFFFF;
		public const int XR_MIN_HAPTIC_DURATION = -1;
		public const int XR_FREQUENCY_UNSPECIFIED = 0;
		public const int XR_MAX_EVENT_DATA_SIZE = sizeof(XrEventDataBuffer);
		public const int XR_HAND_JOINT_COUNT_EXT = 26;
		public const int XR_NULL_CONTROLLER_MODEL_KEY_MSFT = 0;

		public const int XR_TRUE = 1;
		public const int XR_FALSE = 0;
		public const int XR_MAX_EXTENSION_NAME_SIZE = 128;
		public const int XR_MAX_API_LAYER_NAME_SIZE = 256;
		public const int XR_MAX_API_LAYER_DESCRIPTION_SIZE = 256;
		public const int XR_MAX_SYSTEM_NAME_SIZE = 256;
		public const int XR_MAX_APPLICATION_NAME_SIZE = 128;
		public const int XR_MAX_ENGINE_NAME_SIZE = 128;
		public const int XR_MAX_RUNTIME_NAME_SIZE = 128;
		public const int XR_MAX_PATH_LENGTH = 256;
		public const int XR_MAX_STRUCTURE_NAME_SIZE = 64;
		public const int XR_MAX_RESULT_STRING_SIZE = 64;
		public const int XR_MAX_GRAPHICS_APIS_SUPPORTED = 32;
		public const int XR_MAX_ACTION_SET_NAME_SIZE = 64;
		public const int XR_MAX_ACTION_NAME_SIZE = 64;
		public const int XR_MAX_LOCALIZED_ACTION_SET_NAME_SIZE = 128;
		public const int XR_MAX_LOCALIZED_ACTION_NAME_SIZE = 128;
		public const int XR_MIN_COMPOSITION_LAYERS_SUPPORTED = 16;

		[CLink]
		public static extern XrResult xrGetInstanceProcAddr(XrInstance instance, c_char* name, PFN_xrVoidFunction* _function);
		[CLink]
		public static extern XrResult xrEnumerateApiLayerProperties(uint32 propertyCapacityInput, uint32* propertyCountOutput, XrApiLayerProperties* properties);
		[CLink]
		public static extern XrResult xrEnumerateInstanceExtensionProperties(c_char* layerName, uint32 propertyCapacityInput, uint32* propertyCountOutput, XrExtensionProperties* properties);
		[CLink]
		public static extern XrResult xrCreateInstance(XrInstanceCreateInfo* createInfo, XrInstance* instance);
		[CLink]
		public static extern XrResult xrDestroyInstance(XrInstance instance);
		[CLink]
		public static extern XrResult xrResultToString(XrInstance instance, XrResult value, c_char[OpenXR.XR_MAX_RESULT_STRING_SIZE] buffer);
		[CLink]
		public static extern XrResult xrStructureTypeToString(XrInstance instance, XrStructureType value, c_char[OpenXR.XR_MAX_STRUCTURE_NAME_SIZE] buffer);
		[CLink]
		public static extern XrResult xrGetInstanceProperties(XrInstance instance, XrInstanceProperties* instanceProperties);
		[CLink]
		public static extern XrResult xrGetSystem(XrInstance instance, XrSystemGetInfo* getInfo, XrSystemId* systemId);
		[CLink]
		public static extern XrResult xrGetSystemProperties(XrInstance instance, XrSystemId systemId, XrSystemProperties* properties);
		[CLink]
		public static extern XrResult xrCreateSession(XrInstance instance, XrSessionCreateInfo* createInfo, XrSession* session);
		[CLink]
		public static extern XrResult xrDestroySession(XrSession session);
		[CLink]
		public static extern XrResult xrDestroySpace(XrSpace space);
		[CLink]
		public static extern XrResult xrEnumerateSwapchainFormats(XrSession session, uint32 formatCapacityInput, uint32* formatCountOutput, int64* formats);
		[CLink]
		public static extern XrResult xrCreateSwapchain(XrSession session, XrSwapchainCreateInfo* createInfo, XrSwapchain* swapchain);
		[CLink]
		public static extern XrResult xrDestroySwapchain(XrSwapchain swapchain);
		[CLink]
		public static extern XrResult xrEnumerateSwapchainImages(XrSwapchain swapchain, uint32 imageCapacityInput, uint32* imageCountOutput, XrSwapchainImageBaseHeader* images);
		[CLink]
		public static extern XrResult xrAcquireSwapchainImage(XrSwapchain swapchain, XrSwapchainImageAcquireInfo* acquireInfo, uint32* index);
		[CLink]
		public static extern XrResult xrWaitSwapchainImage(XrSwapchain swapchain, XrSwapchainImageWaitInfo* waitInfo);
		[CLink]
		public static extern XrResult xrReleaseSwapchainImage(XrSwapchain swapchain, XrSwapchainImageReleaseInfo* releaseInfo);
		[CLink]
		public static extern XrResult xrBeginSession(XrSession session, XrSessionBeginInfo* beginInfo);
		[CLink]
		public static extern XrResult xrEndSession(XrSession session);
		[CLink]
		public static extern XrResult xrRequestExitSession(XrSession session);
		[CLink]
		public static extern XrResult xrEnumerateReferenceSpaces(XrSession session, uint32 spaceCapacityInput, uint32* spaceCountOutput, XrReferenceSpaceType* spaces);
		[CLink]
		public static extern XrResult xrCreateReferenceSpace(XrSession session, XrReferenceSpaceCreateInfo* createInfo, XrSpace* space);
		[CLink]
		public static extern XrResult xrCreateActionSpace(XrSession session, XrActionSpaceCreateInfo* createInfo, XrSpace* space);
		[CLink]
		public static extern XrResult xrLocateSpace(XrSpace space, XrSpace baseSpace, XrTime time, XrSpaceLocation* location);
		[CLink]
		public static extern XrResult xrEnumerateViewConfigurations(XrInstance instance, XrSystemId systemId, uint32 viewConfigurationTypeCapacityInput, uint32* viewConfigurationTypeCountOutput, XrViewConfigurationType* viewConfigurationTypes);
		[CLink]
		public static extern XrResult xrEnumerateEnvironmentBlendModes(XrInstance instance, XrSystemId systemId, XrViewConfigurationType viewConfigurationType, uint32 environmentBlendModeCapacityInput, uint32* environmentBlendModeCountOutput, XrEnvironmentBlendMode* environmentBlendModes);
		[CLink]
		public static extern XrResult xrGetViewConfigurationProperties(XrInstance instance, XrSystemId systemId, XrViewConfigurationType viewConfigurationType, XrViewConfigurationProperties* configurationProperties);
		[CLink]
		public static extern XrResult xrEnumerateViewConfigurationViews(XrInstance instance, XrSystemId systemId, XrViewConfigurationType viewConfigurationType, uint32 viewCapacityInput, uint32* viewCountOutput, XrViewConfigurationView* views);
		[CLink]
		public static extern XrResult xrBeginFrame(XrSession session, XrFrameBeginInfo* frameBeginInfo);
		[CLink]
		public static extern XrResult xrLocateViews(XrSession session, XrViewLocateInfo* viewLocateInfo, XrViewState* viewState, uint32 viewCapacityInput, uint32* viewCountOutput, XrView* views);
		[CLink]
		public static extern XrResult xrEndFrame(XrSession session, XrFrameEndInfo* frameEndInfo);
		[CLink]
		public static extern XrResult xrWaitFrame(XrSession session, XrFrameWaitInfo* frameWaitInfo, XrFrameState* frameState);
		[CLink]
		public static extern XrResult xrApplyHapticFeedback(XrSession session, XrHapticActionInfo* hapticActionInfo, XrHapticBaseHeader* hapticFeedback);
		[CLink]
		public static extern XrResult xrStopHapticFeedback(XrSession session, XrHapticActionInfo* hapticActionInfo);
		[CLink]
		public static extern XrResult xrPollEvent(XrInstance instance, XrEventDataBuffer* eventData);
		[CLink]
		public static extern XrResult xrStringToPath(XrInstance instance, c_char* pathString, XrPath* path);
		[CLink]
		public static extern XrResult xrPathToString(XrInstance instance, XrPath path, uint32 bufferCapacityInput, uint32* bufferCountOutput, c_char* buffer);
		[CLink]
		public static extern XrResult xrGetReferenceSpaceBoundsRect(XrSession session, XrReferenceSpaceType referenceSpaceType, XrExtent2Df* bounds);
		[CLink]
		public static extern XrResult xrGetActionStateBoolean(XrSession session, XrActionStateGetInfo* getInfo, XrActionStateBoolean* state);
		[CLink]
		public static extern XrResult xrGetActionStateFloat(XrSession session, XrActionStateGetInfo* getInfo, XrActionStateFloat* state);
		[CLink]
		public static extern XrResult xrGetActionStateVector2f(XrSession session, XrActionStateGetInfo* getInfo, XrActionStateVector2f* state);
		[CLink]
		public static extern XrResult xrGetActionStatePose(XrSession session, XrActionStateGetInfo* getInfo, XrActionStatePose* state);
		[CLink]
		public static extern XrResult xrCreateActionSet(XrInstance instance, XrActionSetCreateInfo* createInfo, XrActionSet* actionSet);
		[CLink]
		public static extern XrResult xrDestroyActionSet(XrActionSet actionSet);
		[CLink]
		public static extern XrResult xrCreateAction(XrActionSet actionSet, XrActionCreateInfo* createInfo, XrAction* action);
		[CLink]
		public static extern XrResult xrDestroyAction(XrAction action);
		[CLink]
		public static extern XrResult xrSuggestInteractionProfileBindings(XrInstance instance, XrInteractionProfileSuggestedBinding* suggestedBindings);
		[CLink]
		public static extern XrResult xrAttachSessionActionSets(XrSession session, XrSessionActionSetsAttachInfo* attachInfo);
		[CLink]
		public static extern XrResult xrGetCurrentInteractionProfile(XrSession session, XrPath topLevelUserPath, XrInteractionProfileState* interactionProfile);
		[CLink]
		public static extern XrResult xrSyncActions(XrSession session, XrActionsSyncInfo* syncInfo);
		[CLink]
		public static extern XrResult xrEnumerateBoundSourcesForAction(XrSession session, XrBoundSourcesForActionEnumerateInfo* enumerateInfo, uint32 sourceCapacityInput, uint32* sourceCountOutput, XrPath* sources);
		[CLink]
		public static extern XrResult xrGetInputSourceLocalizedName(XrSession session, XrInputSourceLocalizedNameGetInfo* getInfo, uint32 bufferCapacityInput, uint32* bufferCountOutput, c_char* buffer);

	}
#if XR_KHR_android_thread_settings
	   public function XrResult PFN_xrSetAndroidApplicationThreadKHR(XrSession session, XrAndroidThreadTypeKHR threadType, uint32 threadId);
	   extension XrResult
	   {
		   case XR_ERROR_ANDROID_THREAD_SETTINGS_ID_INVALID_KHR = -1000003000;
		   case XR_ERROR_ANDROID_THREAD_SETTINGS_FAILURE_KHR = -1000003001;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrSetAndroidApplicationThreadKHR(XrSession session, XrAndroidThreadTypeKHR threadType, uint32 threadId);
		   public const int XR_KHR_android_thread_settings_SPEC_VERSION = 5;
		   public const String XR_KHR_ANDROID_THREAD_SETTINGS_EXTENSION_NAME = "XR_KHR_android_thread_settings";
	 
	   }
#endif
#if XR_KHR_android_surface_swapchain
	   public function XrResult PFN_xrCreateSwapchainAndroidSurfaceKHR(XrSession session, XrSwapchainCreateInfo* info, XrSwapchain* swapchain, jobject* surface);

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrCreateSwapchainAndroidSurfaceKHR(XrSession session, XrSwapchainCreateInfo* info, XrSwapchain* swapchain, jobject* surface);
		   public const int XR_KHR_android_surface_swapchain_SPEC_VERSION = 4;
		   public const String XR_KHR_ANDROID_SURFACE_SWAPCHAIN_EXTENSION_NAME = "XR_KHR_android_surface_swapchain";
	 
	   }
#endif
#if XR_KHR_composition_layer_cube

	   [CRepr]
	   public struct XrCompositionLayerCubeKHR : this(
		   XrStructureType type = .XR_TYPE_COMPOSITION_LAYER_CUBE_KHR,
		   void* next = null,
		   XrCompositionLayerFlags layerFlags = default,
		   XrSpace space = default,
		   XrEyeVisibility eyeVisibility = default,
		   XrSwapchain swapchain = default,
		   uint32 imageArrayIndex = default,
		   XrQuaternionf orientation = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_COMPOSITION_LAYER_CUBE_KHR = 1000006000;
	   }

	   public static 
	   {
			public const int XR_KHR_composition_layer_cube_SPEC_VERSION = 8;
		   public const String XR_KHR_COMPOSITION_LAYER_CUBE_EXTENSION_NAME = "XR_KHR_composition_layer_cube";
	 
	   }
#endif
#if XR_KHR_android_create_instance

	   [CRepr]
	   public struct XrInstanceCreateInfoAndroidKHR : this(
		   XrStructureType type = .XR_TYPE_INSTANCE_CREATE_INFO_ANDROID_KHR,
		   void* next = null,
		   void* applicationVM = null,
		   void* applicationActivity = null);
	   extension XrStructureType
	   {
		   case XR_TYPE_INSTANCE_CREATE_INFO_ANDROID_KHR = 1000008000;
	   }

	   public static 
	   {
			public const int XR_KHR_android_create_instance_SPEC_VERSION = 3;
		   public const String XR_KHR_ANDROID_CREATE_INSTANCE_EXTENSION_NAME = "XR_KHR_android_create_instance";
	 
	   }
#endif
#if XR_KHR_composition_layer_depth

	   [CRepr]
	   public struct XrCompositionLayerDepthInfoKHR : this(
		   XrStructureType type = .XR_TYPE_COMPOSITION_LAYER_DEPTH_INFO_KHR,
		   void* next = null,
		   XrSwapchainSubImage subImage = default,
		   float minDepth = default,
		   float maxDepth = default,
		   float nearZ = default,
		   float farZ = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_COMPOSITION_LAYER_DEPTH_INFO_KHR = 1000010000;
	   }

	   public static 
	   {
			public const int XR_KHR_composition_layer_depth_SPEC_VERSION = 5;
		   public const String XR_KHR_COMPOSITION_LAYER_DEPTH_EXTENSION_NAME = "XR_KHR_composition_layer_depth";
	 
	   }
#endif
#if XR_KHR_vulkan_swapchain_format_list

	   [CRepr]
	   public struct XrVulkanSwapchainFormatListCreateInfoKHR : this(
		   XrStructureType type = .XR_TYPE_VULKAN_SWAPCHAIN_FORMAT_LIST_CREATE_INFO_KHR,
		   void* next = null,
		   uint32 viewFormatCount = default,
		   VkFormat* viewFormats = null);
	   extension XrStructureType
	   {
		   case XR_TYPE_VULKAN_SWAPCHAIN_FORMAT_LIST_CREATE_INFO_KHR = 1000014000;
	   }

	   public static 
	   {
			public const int XR_KHR_vulkan_swapchain_format_list_SPEC_VERSION = 4;
		   public const String XR_KHR_VULKAN_SWAPCHAIN_FORMAT_LIST_EXTENSION_NAME = "XR_KHR_vulkan_swapchain_format_list";
	 
	   }
#endif
#if XR_EXT_performance_settings

	   [CRepr]
	   public struct XrEventDataPerfSettingsEXT : this(
		   XrStructureType type = .XR_TYPE_EVENT_DATA_PERF_SETTINGS_EXT,
		   void* next = null,
		   XrPerfSettingsDomainEXT domain = default,
		   XrPerfSettingsSubDomainEXT subDomain = default,
		   XrPerfSettingsNotificationLevelEXT fromLevel = default,
		   XrPerfSettingsNotificationLevelEXT toLevel = default);
	   public function XrResult PFN_xrPerfSettingsSetPerformanceLevelEXT(XrSession session, XrPerfSettingsDomainEXT domain, XrPerfSettingsLevelEXT level);
	   extension XrStructureType
	   {
		   case XR_TYPE_EVENT_DATA_PERF_SETTINGS_EXT = 1000015000;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrPerfSettingsSetPerformanceLevelEXT(XrSession session, XrPerfSettingsDomainEXT domain, XrPerfSettingsLevelEXT level);
		   public const int XR_EXT_performance_settings_SPEC_VERSION = 3;
		   public const String XR_EXT_PERFORMANCE_SETTINGS_EXTENSION_NAME = "XR_EXT_performance_settings";
	 
	   }
#endif
#if XR_EXT_thermal_query
	   public function XrResult PFN_xrThermalGetTemperatureTrendEXT(XrSession session, XrPerfSettingsDomainEXT domain, XrPerfSettingsNotificationLevelEXT* notificationLevel, float* tempHeadroom, float* tempSlope);

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrThermalGetTemperatureTrendEXT(XrSession session, XrPerfSettingsDomainEXT domain, XrPerfSettingsNotificationLevelEXT* notificationLevel, float* tempHeadroom, float* tempSlope);
		   public const int XR_EXT_thermal_query_SPEC_VERSION = 2;
		   public const String XR_EXT_THERMAL_QUERY_EXTENSION_NAME = "XR_EXT_thermal_query";
	 
	   }
#endif
#if XR_KHR_composition_layer_cylinder

	   [CRepr]
	   public struct XrCompositionLayerCylinderKHR : this(
		   XrStructureType type = .XR_TYPE_COMPOSITION_LAYER_CYLINDER_KHR,
		   void* next = null,
		   XrCompositionLayerFlags layerFlags = default,
		   XrSpace space = default,
		   XrEyeVisibility eyeVisibility = default,
		   XrSwapchainSubImage subImage = default,
		   XrPosef pose = default,
		   float radius = default,
		   float centralAngle = default,
		   float aspectRatio = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_COMPOSITION_LAYER_CYLINDER_KHR = 1000017000;
	   }

	   public static 
	   {
			public const int XR_KHR_composition_layer_cylinder_SPEC_VERSION = 4;
		   public const String XR_KHR_COMPOSITION_LAYER_CYLINDER_EXTENSION_NAME = "XR_KHR_composition_layer_cylinder";
	 
	   }
#endif
#if XR_KHR_composition_layer_equirect

	   [CRepr]
	   public struct XrCompositionLayerEquirectKHR : this(
		   XrStructureType type = .XR_TYPE_COMPOSITION_LAYER_EQUIRECT_KHR,
		   void* next = null,
		   XrCompositionLayerFlags layerFlags = default,
		   XrSpace space = default,
		   XrEyeVisibility eyeVisibility = default,
		   XrSwapchainSubImage subImage = default,
		   XrPosef pose = default,
		   float radius = default,
		   XrVector2f scale = default,
		   XrVector2f bias = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_COMPOSITION_LAYER_EQUIRECT_KHR = 1000018000;
	   }

	   public static 
	   {
			public const int XR_KHR_composition_layer_equirect_SPEC_VERSION = 3;
		   public const String XR_KHR_COMPOSITION_LAYER_EQUIRECT_EXTENSION_NAME = "XR_KHR_composition_layer_equirect";
	 
	   }
#endif
#if XR_EXT_debug_utils

	   [CRepr]
	   public struct XrDebugUtilsObjectNameInfoEXT : this(
		   XrStructureType type = .XR_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT,
		   void* next = null,
		   XrObjectType objectType = default,
		   uint64 objectHandle = default,
		   c_char* objectName = null);

	   [CRepr]
	   public struct XrDebugUtilsLabelEXT : this(
		   XrStructureType type = .XR_TYPE_DEBUG_UTILS_LABEL_EXT,
		   void* next = null,
		   c_char* labelName = null);

	   [CRepr]
	   public struct XrDebugUtilsMessengerCallbackDataEXT : this(
		   XrStructureType type = .XR_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT,
		   void* next = null,
		   c_char* messageId = null,
		   c_char* functionName = null,
		   c_char* message = null,
		   uint32 objectCount = default,
		   XrDebugUtilsObjectNameInfoEXT* objects = null,
		   uint32 sessionLabelCount = default,
		   XrDebugUtilsLabelEXT* sessionLabels = null);

	   [CRepr]
	   public struct XrDebugUtilsMessengerCreateInfoEXT : this(
		   XrStructureType type = .XR_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
		   void* next = null,
		   XrDebugUtilsMessageSeverityFlagsEXT messageSeverities = default,
		   XrDebugUtilsMessageTypeFlagsEXT messageTypes = default,
		   PFN_xrDebugUtilsMessengerCallbackEXT userCallback = default,
		   void* userData = null);
	   public function XrBool32 PFN_xrDebugUtilsMessengerCallbackEXT(XrDebugUtilsMessageSeverityFlagsEXT messageSeverity, XrDebugUtilsMessageTypeFlagsEXT messageTypes, XrDebugUtilsMessengerCallbackDataEXT* callbackData, void* userData);
	   public function XrResult PFN_xrSetDebugUtilsObjectNameEXT(XrInstance instance, XrDebugUtilsObjectNameInfoEXT* nameInfo);
	   public function XrResult PFN_xrCreateDebugUtilsMessengerEXT(XrInstance instance, XrDebugUtilsMessengerCreateInfoEXT* createInfo, XrDebugUtilsMessengerEXT* messenger);
	   public function XrResult PFN_xrDestroyDebugUtilsMessengerEXT(XrDebugUtilsMessengerEXT messenger);
	   public function XrResult PFN_xrSubmitDebugUtilsMessageEXT(XrInstance instance, XrDebugUtilsMessageSeverityFlagsEXT messageSeverity, XrDebugUtilsMessageTypeFlagsEXT messageTypes, XrDebugUtilsMessengerCallbackDataEXT* callbackData);
	   public function XrResult PFN_xrSessionBeginDebugUtilsLabelRegionEXT(XrSession session, XrDebugUtilsLabelEXT* labelInfo);
	   public function XrResult PFN_xrSessionEndDebugUtilsLabelRegionEXT(XrSession session);
	   public function XrResult PFN_xrSessionInsertDebugUtilsLabelEXT(XrSession session, XrDebugUtilsLabelEXT* labelInfo);
	   extension XrStructureType
	   {
		   case XR_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT = 1000019000;
		   case XR_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT = 1000019001;
		   case XR_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT = 1000019002;
		   case XR_TYPE_DEBUG_UTILS_LABEL_EXT = 1000019003;
	   }
	   extension XrObjectType
	   {
		   case XR_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT = 1000019000;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrSetDebugUtilsObjectNameEXT(XrInstance instance, XrDebugUtilsObjectNameInfoEXT* nameInfo);
	   [CLink]
	   public static extern XrResult xrCreateDebugUtilsMessengerEXT(XrInstance instance, XrDebugUtilsMessengerCreateInfoEXT* createInfo, XrDebugUtilsMessengerEXT* messenger);
	   [CLink]
	   public static extern XrResult xrDestroyDebugUtilsMessengerEXT(XrDebugUtilsMessengerEXT messenger);
	   [CLink]
	   public static extern XrResult xrSubmitDebugUtilsMessageEXT(XrInstance instance, XrDebugUtilsMessageSeverityFlagsEXT messageSeverity, XrDebugUtilsMessageTypeFlagsEXT messageTypes, XrDebugUtilsMessengerCallbackDataEXT* callbackData);
	   [CLink]
	   public static extern XrResult xrSessionBeginDebugUtilsLabelRegionEXT(XrSession session, XrDebugUtilsLabelEXT* labelInfo);
	   [CLink]
	   public static extern XrResult xrSessionEndDebugUtilsLabelRegionEXT(XrSession session);
	   [CLink]
	   public static extern XrResult xrSessionInsertDebugUtilsLabelEXT(XrSession session, XrDebugUtilsLabelEXT* labelInfo);
		   public const int XR_EXT_debug_utils_SPEC_VERSION = 4;
		   public const String XR_EXT_DEBUG_UTILS_EXTENSION_NAME = "XR_EXT_debug_utils";
	 
	   }
#endif
#if XR_KHR_opengl_enable

	   [CRepr]
	   public struct XrGraphicsBindingOpenGLWin32KHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_BINDING_OPENGL_WIN32_KHR,
		   void* next = null,
		   HDC hDC = default,
		   HGLRC hGLRC = default);

	   [CRepr]
	   public struct XrGraphicsBindingOpenGLXlibKHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_BINDING_OPENGL_XLIB_KHR,
		   void* next = null,
		   Display* xDisplay = null,
		   uint32 visualid = default,
		   GLXFBConfig glxFBConfig = default,
		   GLXDrawable glxDrawable = default,
		   GLXContext glxContext = default);

	   [CRepr]
	   public struct XrGraphicsBindingOpenGLXcbKHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_BINDING_OPENGL_XCB_KHR,
		   void* next = null,
		   xcb_connection_t* connection = null,
		   uint32 screenNumber = default,
		   xcb_glx_fbconfig_t fbconfigid = default,
		   xcb_visualid_t visualid = default,
		   xcb_glx_drawable_t glxDrawable = default,
		   xcb_glx_context_t glxContext = default);

	   [CRepr]
	   public struct XrGraphicsBindingOpenGLWaylandKHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_BINDING_OPENGL_WAYLAND_KHR,
		   void* next = null,
		   wl_display* display = null);

	   [CRepr]
	   public struct XrSwapchainImageOpenGLKHR : this(
		   XrStructureType type = .XR_TYPE_SWAPCHAIN_IMAGE_OPENGL_KHR,
		   void* next = null,
		   uint32 image = default);

	   [CRepr]
	   public struct XrGraphicsRequirementsOpenGLKHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_REQUIREMENTS_OPENGL_KHR,
		   void* next = null,
		   XrVersion minApiVersionSupported = default,
		   XrVersion maxApiVersionSupported = default);
	   public function XrResult PFN_xrGetOpenGLGraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsOpenGLKHR* graphicsRequirements);
	   extension XrStructureType
	   {
		   case XR_TYPE_GRAPHICS_BINDING_OPENGL_WIN32_KHR = 1000023000;
		   case XR_TYPE_GRAPHICS_BINDING_OPENGL_XLIB_KHR = 1000023001;
		   case XR_TYPE_GRAPHICS_BINDING_OPENGL_XCB_KHR = 1000023002;
		   case XR_TYPE_GRAPHICS_BINDING_OPENGL_WAYLAND_KHR = 1000023003;
		   case XR_TYPE_SWAPCHAIN_IMAGE_OPENGL_KHR = 1000023004;
		   case XR_TYPE_GRAPHICS_REQUIREMENTS_OPENGL_KHR = 1000023005;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrGetOpenGLGraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsOpenGLKHR* graphicsRequirements);
		   public const int XR_KHR_opengl_enable_SPEC_VERSION = 9;
		   public const String XR_KHR_OPENGL_ENABLE_EXTENSION_NAME = "XR_KHR_opengl_enable";
	 
	   }
#endif
#if XR_KHR_opengl_es_enable

	   [CRepr]
	   public struct XrGraphicsBindingOpenGLESAndroidKHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_BINDING_OPENGL_ES_ANDROID_KHR,
		   void* next = null,
		   EGLDisplay display = default,
		   EGLConfig config = default,
		   EGLContext context = default);

	   [CRepr]
	   public struct XrSwapchainImageOpenGLESKHR : this(
		   XrStructureType type = .XR_TYPE_SWAPCHAIN_IMAGE_OPENGL_ES_KHR,
		   void* next = null,
		   uint32 image = default);

	   [CRepr]
	   public struct XrGraphicsRequirementsOpenGLESKHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_REQUIREMENTS_OPENGL_ES_KHR,
		   void* next = null,
		   XrVersion minApiVersionSupported = default,
		   XrVersion maxApiVersionSupported = default);
	   public function XrResult PFN_xrGetOpenGLESGraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsOpenGLESKHR* graphicsRequirements);
	   extension XrStructureType
	   {
		   case XR_TYPE_GRAPHICS_BINDING_OPENGL_ES_ANDROID_KHR = 1000024001;
		   case XR_TYPE_SWAPCHAIN_IMAGE_OPENGL_ES_KHR = 1000024002;
		   case XR_TYPE_GRAPHICS_REQUIREMENTS_OPENGL_ES_KHR = 1000024003;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrGetOpenGLESGraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsOpenGLESKHR* graphicsRequirements);
		   public const int XR_KHR_opengl_es_enable_SPEC_VERSION = 7;
		   public const String XR_KHR_OPENGL_ES_ENABLE_EXTENSION_NAME = "XR_KHR_opengl_es_enable";
	 
	   }
#endif
#if XR_KHR_vulkan_enable

	   [CRepr]
	   public struct XrGraphicsBindingVulkanKHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_BINDING_VULKAN_KHR,
		   void* next = null,
		   VkInstance instance = default,
		   VkPhysicalDevice physicalDevice = default,
		   VkDevice device = default,
		   uint32 queueFamilyIndex = default,
		   uint32 queueIndex = default);

	   [CRepr]
	   public struct XrSwapchainImageVulkanKHR : this(
		   XrStructureType type = .XR_TYPE_SWAPCHAIN_IMAGE_VULKAN_KHR,
		   void* next = null,
		   VkImage image = default);

	   [CRepr]
	   public struct XrGraphicsRequirementsVulkanKHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_REQUIREMENTS_VULKAN_KHR,
		   void* next = null,
		   XrVersion minApiVersionSupported = default,
		   XrVersion maxApiVersionSupported = default);
	   public function XrResult PFN_xrGetVulkanInstanceExtensionsKHR(XrInstance instance, XrSystemId systemId, uint32 bufferCapacityInput, uint32* bufferCountOutput, c_char* buffer);
	   public function XrResult PFN_xrGetVulkanDeviceExtensionsKHR(XrInstance instance, XrSystemId systemId, uint32 bufferCapacityInput, uint32* bufferCountOutput, c_char* buffer);
	   public function XrResult PFN_xrGetVulkanGraphicsDeviceKHR(XrInstance instance, XrSystemId systemId, VkInstance vkInstance, VkPhysicalDevice* vkPhysicalDevice);
	   public function XrResult PFN_xrGetVulkanGraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsVulkanKHR* graphicsRequirements);
	   extension XrStructureType
	   {
		   case XR_TYPE_GRAPHICS_BINDING_VULKAN_KHR = 1000025000;
		   case XR_TYPE_SWAPCHAIN_IMAGE_VULKAN_KHR = 1000025001;
		   case XR_TYPE_GRAPHICS_REQUIREMENTS_VULKAN_KHR = 1000025002;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrGetVulkanInstanceExtensionsKHR(XrInstance instance, XrSystemId systemId, uint32 bufferCapacityInput, uint32* bufferCountOutput, c_char* buffer);
	   [CLink]
	   public static extern XrResult xrGetVulkanDeviceExtensionsKHR(XrInstance instance, XrSystemId systemId, uint32 bufferCapacityInput, uint32* bufferCountOutput, c_char* buffer);
	   [CLink]
	   public static extern XrResult xrGetVulkanGraphicsDeviceKHR(XrInstance instance, XrSystemId systemId, VkInstance vkInstance, VkPhysicalDevice* vkPhysicalDevice);
	   [CLink]
	   public static extern XrResult xrGetVulkanGraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsVulkanKHR* graphicsRequirements);
		   public const int XR_KHR_vulkan_enable_SPEC_VERSION = 8;
		   public const String XR_KHR_VULKAN_ENABLE_EXTENSION_NAME = "XR_KHR_vulkan_enable";
	 
	   }
#endif
#if XR_KHR_D3D11_enable

	   [CRepr]
	   public struct XrGraphicsBindingD3D11KHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_BINDING_D3D11_KHR,
		   void* next = null,
		   ID3D11Device* device = null);

	   [CRepr]
	   public struct XrSwapchainImageD3D11KHR : this(
		   XrStructureType type = .XR_TYPE_SWAPCHAIN_IMAGE_D3D11_KHR,
		   void* next = null,
		   ID3D11Texture2D* texture = null);

	   [CRepr]
	   public struct XrGraphicsRequirementsD3D11KHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_REQUIREMENTS_D3D11_KHR,
		   void* next = null,
		   LUID adapterLuid = default,
		   D3D_FEATURE_LEVEL minFeatureLevel = default);
	   public function XrResult PFN_xrGetD3D11GraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsD3D11KHR* graphicsRequirements);
	   extension XrStructureType
	   {
		   case XR_TYPE_GRAPHICS_BINDING_D3D11_KHR = 1000027000;
		   case XR_TYPE_SWAPCHAIN_IMAGE_D3D11_KHR = 1000027001;
		   case XR_TYPE_GRAPHICS_REQUIREMENTS_D3D11_KHR = 1000027002;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrGetD3D11GraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsD3D11KHR* graphicsRequirements);
		   public const int XR_KHR_D3D11_enable_SPEC_VERSION = 5;
		   public const String XR_KHR_D3D11_ENABLE_EXTENSION_NAME = "XR_KHR_D3D11_enable";
	 
	   }
#endif
#if XR_KHR_D3D12_enable

	   [CRepr]
	   public struct XrGraphicsBindingD3D12KHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_BINDING_D3D12_KHR,
		   void* next = null,
		   ID3D12Device* device = null,
		   ID3D12CommandQueue* queue = null);

	   [CRepr]
	   public struct XrSwapchainImageD3D12KHR : this(
		   XrStructureType type = .XR_TYPE_SWAPCHAIN_IMAGE_D3D12_KHR,
		   void* next = null,
		   ID3D12Resource* texture = null);

	   [CRepr]
	   public struct XrGraphicsRequirementsD3D12KHR : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_REQUIREMENTS_D3D12_KHR,
		   void* next = null,
		   LUID adapterLuid = default,
		   D3D_FEATURE_LEVEL minFeatureLevel = default);
	   public function XrResult PFN_xrGetD3D12GraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsD3D12KHR* graphicsRequirements);
	   extension XrStructureType
	   {
		   case XR_TYPE_GRAPHICS_BINDING_D3D12_KHR = 1000028000;
		   case XR_TYPE_SWAPCHAIN_IMAGE_D3D12_KHR = 1000028001;
		   case XR_TYPE_GRAPHICS_REQUIREMENTS_D3D12_KHR = 1000028002;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrGetD3D12GraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsD3D12KHR* graphicsRequirements);
		   public const int XR_KHR_D3D12_enable_SPEC_VERSION = 7;
		   public const String XR_KHR_D3D12_ENABLE_EXTENSION_NAME = "XR_KHR_D3D12_enable";
	 
	   }
#endif
#if XR_EXT_eye_gaze_interaction

	   [CRepr]
	   public struct XrSystemEyeGazeInteractionPropertiesEXT : this(
		   XrStructureType type = .XR_TYPE_SYSTEM_EYE_GAZE_INTERACTION_PROPERTIES_EXT,
		   void* next = null,
		   XrBool32 supportsEyeGazeInteraction = default);

	   [CRepr]
	   public struct XrEyeGazeSampleTimeEXT : this(
		   XrStructureType type = .XR_TYPE_EYE_GAZE_SAMPLE_TIME_EXT,
		   void* next = null,
		   XrTime time = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_SYSTEM_EYE_GAZE_INTERACTION_PROPERTIES_EXT = 1000030000;
		   case XR_TYPE_EYE_GAZE_SAMPLE_TIME_EXT = 1000030001;
	   }

	   public static 
	   {
			public const int XR_EXT_eye_gaze_interaction_SPEC_VERSION = 1;
		   public const String XR_EXT_EYE_GAZE_INTERACTION_EXTENSION_NAME = "XR_EXT_eye_gaze_interaction";
	 
	   }
#endif
#if XR_KHR_visibility_mask

	   [CRepr]
	   public struct XrEventDataVisibilityMaskChangedKHR : this(
		   XrStructureType type = .XR_TYPE_EVENT_DATA_VISIBILITY_MASK_CHANGED_KHR,
		   void* next = null,
		   XrSession session = default,
		   XrViewConfigurationType viewConfigurationType = default,
		   uint32 viewIndex = default);

	   [CRepr]
	   public struct XrVisibilityMaskKHR : this(
		   XrStructureType type = .XR_TYPE_VISIBILITY_MASK_KHR,
		   void* next = null,
		   uint32 vertexCapacityInput = default,
		   uint32 vertexCountOutput = default,
		   XrVector2f* vertices = null,
		   uint32 indexCapacityInput = default,
		   uint32 indexCountOutput = default,
		   uint32* indices = null);
	   public function XrResult PFN_xrGetVisibilityMaskKHR(XrSession session, XrViewConfigurationType viewConfigurationType, uint32 viewIndex, XrVisibilityMaskTypeKHR visibilityMaskType, XrVisibilityMaskKHR* visibilityMask);
	   extension XrStructureType
	   {
		   case XR_TYPE_VISIBILITY_MASK_KHR = 1000031000;
		   case XR_TYPE_EVENT_DATA_VISIBILITY_MASK_CHANGED_KHR = 1000031001;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrGetVisibilityMaskKHR(XrSession session, XrViewConfigurationType viewConfigurationType, uint32 viewIndex, XrVisibilityMaskTypeKHR visibilityMaskType, XrVisibilityMaskKHR* visibilityMask);
		   public const int XR_KHR_visibility_mask_SPEC_VERSION = 2;
		   public const String XR_KHR_VISIBILITY_MASK_EXTENSION_NAME = "XR_KHR_visibility_mask";
	 
	   }
#endif
#if XR_EXTX_overlay

	   [CRepr]
	   public struct XrSessionCreateInfoOverlayEXTX : this(
		   XrStructureType type = .XR_TYPE_SESSION_CREATE_INFO_OVERLAY_EXTX,
		   void* next = null,
		   XrOverlaySessionCreateFlagsEXTX createFlags = default,
		   uint32 sessionLayersPlacement = default);

	   [CRepr]
	   public struct XrEventDataMainSessionVisibilityChangedEXTX : this(
		   XrStructureType type = .XR_TYPE_EVENT_DATA_MAIN_SESSION_VISIBILITY_CHANGED_EXTX,
		   void* next = null,
		   XrBool32 visible = default,
		   XrOverlayMainSessionFlagsEXTX flags = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_SESSION_CREATE_INFO_OVERLAY_EXTX = 1000033000;
		   case XR_TYPE_EVENT_DATA_MAIN_SESSION_VISIBILITY_CHANGED_EXTX = 1000033003;
	   }

	   public static 
	   {
			public const int XR_EXTX_overlay_SPEC_VERSION = 5;
		   public const String XR_EXTX_OVERLAY_EXTENSION_NAME = "XR_EXTX_overlay";
	 
	   }
#endif
#if XR_KHR_composition_layer_color_scale_bias

	   [CRepr]
	   public struct XrCompositionLayerColorScaleBiasKHR : this(
		   XrStructureType type = .XR_TYPE_COMPOSITION_LAYER_COLOR_SCALE_BIAS_KHR,
		   void* next = null,
		   XrColor4f colorScale = default,
		   XrColor4f colorBias = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_COMPOSITION_LAYER_COLOR_SCALE_BIAS_KHR = 1000034000;
	   }

	   public static 
	   {
			public const int XR_KHR_composition_layer_color_scale_bias_SPEC_VERSION = 5;
		   public const String XR_KHR_COMPOSITION_LAYER_COLOR_SCALE_BIAS_EXTENSION_NAME = "XR_KHR_composition_layer_color_scale_bias";
	 
	   }
#endif
#if XR_KHR_win32_convert_performance_counter_time
	   public function XrResult PFN_xrConvertTimeToWin32PerformanceCounterKHR(XrInstance instance, XrTime time, LARGE_INTEGER* performanceCounter);
	   public function XrResult PFN_xrConvertWin32PerformanceCounterToTimeKHR(XrInstance instance, LARGE_INTEGER* performanceCounter, XrTime* time);

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrConvertTimeToWin32PerformanceCounterKHR(XrInstance instance, XrTime time, LARGE_INTEGER* performanceCounter);
	   [CLink]
	   public static extern XrResult xrConvertWin32PerformanceCounterToTimeKHR(XrInstance instance, LARGE_INTEGER* performanceCounter, XrTime* time);
		   public const int XR_KHR_win32_convert_performance_counter_time_SPEC_VERSION = 1;
		   public const String XR_KHR_WIN32_CONVERT_PERFORMANCE_COUNTER_TIME_EXTENSION_NAME = "XR_KHR_win32_convert_performance_counter_time";
	 
	   }
#endif
#if XR_KHR_convert_timespec_time
	   public function XrResult PFN_xrConvertTimeToTimespecTimeKHR(XrInstance instance, XrTime time, timespec* timespecTime);
	   public function XrResult PFN_xrConvertTimespecTimeToTimeKHR(XrInstance instance, timespec* timespecTime, XrTime* time);

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrConvertTimeToTimespecTimeKHR(XrInstance instance, XrTime time, timespec* timespecTime);
	   [CLink]
	   public static extern XrResult xrConvertTimespecTimeToTimeKHR(XrInstance instance, timespec* timespecTime, XrTime* time);
		   public const int XR_KHR_convert_timespec_time_SPEC_VERSION = 1;
		   public const String XR_KHR_CONVERT_TIMESPEC_TIME_EXTENSION_NAME = "XR_KHR_convert_timespec_time";
	 
	   }
#endif
#if XR_VARJO_quad_views
	   extension XrViewConfigurationType
	   {
		   case XR_VIEW_CONFIGURATION_TYPE_PRIMARY_QUAD_VARJO = 1000037000;
	   }

	   public static 
	   {
			public const int XR_VARJO_quad_views_SPEC_VERSION = 1;
		   public const String XR_VARJO_QUAD_VIEWS_EXTENSION_NAME = "XR_VARJO_quad_views";
	 
	   }
#endif
#if XR_MSFT_unbounded_reference_space
	   extension XrReferenceSpaceType
	   {
		   case XR_REFERENCE_SPACE_TYPE_UNBOUNDED_MSFT = 1000038000;
	   }

	   public static 
	   {
			public const int XR_MSFT_unbounded_reference_space_SPEC_VERSION = 1;
		   public const String XR_MSFT_UNBOUNDED_REFERENCE_SPACE_EXTENSION_NAME = "XR_MSFT_unbounded_reference_space";
	 
	   }
#endif
#if XR_MSFT_spatial_anchor

	   [CRepr]
	   public struct XrSpatialAnchorCreateInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SPATIAL_ANCHOR_CREATE_INFO_MSFT,
		   void* next = null,
		   XrSpace space = default,
		   XrPosef pose = default,
		   XrTime time = default);

	   [CRepr]
	   public struct XrSpatialAnchorSpaceCreateInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SPATIAL_ANCHOR_SPACE_CREATE_INFO_MSFT,
		   void* next = null,
		   XrSpatialAnchorMSFT anchor = default,
		   XrPosef poseInAnchorSpace = default);
	   public function XrResult PFN_xrCreateSpatialAnchorMSFT(XrSession session, XrSpatialAnchorCreateInfoMSFT* createInfo, XrSpatialAnchorMSFT* anchor);
	   public function XrResult PFN_xrCreateSpatialAnchorSpaceMSFT(XrSession session, XrSpatialAnchorSpaceCreateInfoMSFT* createInfo, XrSpace* space);
	   public function XrResult PFN_xrDestroySpatialAnchorMSFT(XrSpatialAnchorMSFT anchor);
	   extension XrStructureType
	   {
		   case XR_TYPE_SPATIAL_ANCHOR_CREATE_INFO_MSFT = 1000039000;
		   case XR_TYPE_SPATIAL_ANCHOR_SPACE_CREATE_INFO_MSFT = 1000039001;
	   }
	   extension XrObjectType
	   {
		   case XR_OBJECT_TYPE_SPATIAL_ANCHOR_MSFT = 1000039000;
	   }
	   extension XrResult
	   {
		   case XR_ERROR_CREATE_SPATIAL_ANCHOR_FAILED_MSFT = -1000039001;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrCreateSpatialAnchorMSFT(XrSession session, XrSpatialAnchorCreateInfoMSFT* createInfo, XrSpatialAnchorMSFT* anchor);
	   [CLink]
	   public static extern XrResult xrCreateSpatialAnchorSpaceMSFT(XrSession session, XrSpatialAnchorSpaceCreateInfoMSFT* createInfo, XrSpace* space);
	   [CLink]
	   public static extern XrResult xrDestroySpatialAnchorMSFT(XrSpatialAnchorMSFT anchor);
		   public const int XR_MSFT_spatial_anchor_SPEC_VERSION = 1;
		   public const String XR_MSFT_SPATIAL_ANCHOR_EXTENSION_NAME = "XR_MSFT_spatial_anchor";
	 
	   }
#endif
#if XR_MND_headless

	   public static 
	   {
			public const int XR_MND_headless_SPEC_VERSION = 2;
		   public const String XR_MND_HEADLESS_EXTENSION_NAME = "XR_MND_headless";
	 
	   }
#endif
#if XR_OCULUS_android_session_state_enable

	   public static 
	   {
			public const int XR_OCULUS_android_session_state_enable_SPEC_VERSION = 1;
		   public const String XR_OCULUS_ANDROID_SESSION_STATE_ENABLE_EXTENSION_NAME = "XR_OCULUS_android_session_state_enable";
	 
	   }
#endif
#if XR_EXT_view_configuration_depth_range

	   [CRepr]
	   public struct XrViewConfigurationDepthRangeEXT : this(
		   XrStructureType type = .XR_TYPE_VIEW_CONFIGURATION_DEPTH_RANGE_EXT,
		   void* next = null,
		   float recommendedNearZ = default,
		   float minNearZ = default,
		   float recommendedFarZ = default,
		   float maxFarZ = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_VIEW_CONFIGURATION_DEPTH_RANGE_EXT = 1000046000;
	   }

	   public static 
	   {
			public const int XR_EXT_view_configuration_depth_range_SPEC_VERSION = 1;
		   public const String XR_EXT_VIEW_CONFIGURATION_DEPTH_RANGE_EXTENSION_NAME = "XR_EXT_view_configuration_depth_range";
	 
	   }
#endif
#if XR_EXT_conformance_automation
	   public function XrResult PFN_xrSetInputDeviceActiveEXT(XrSession session, XrPath interactionProfile, XrPath topLevelPath, XrBool32 isActive);
	   public function XrResult PFN_xrSetInputDeviceStateBoolEXT(XrSession session, XrPath topLevelPath, XrPath inputSourcePath, XrBool32 state);
	   public function XrResult PFN_xrSetInputDeviceStateFloatEXT(XrSession session, XrPath topLevelPath, XrPath inputSourcePath, float state);
	   public function XrResult PFN_xrSetInputDeviceStateVector2fEXT(XrSession session, XrPath topLevelPath, XrPath inputSourcePath, XrVector2f state);
	   public function XrResult PFN_xrSetInputDeviceLocationEXT(XrSession session, XrPath topLevelPath, XrPath inputSourcePath, XrSpace space, XrPosef pose);

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrSetInputDeviceActiveEXT(XrSession session, XrPath interactionProfile, XrPath topLevelPath, XrBool32 isActive);
	   [CLink]
	   public static extern XrResult xrSetInputDeviceStateBoolEXT(XrSession session, XrPath topLevelPath, XrPath inputSourcePath, XrBool32 state);
	   [CLink]
	   public static extern XrResult xrSetInputDeviceStateFloatEXT(XrSession session, XrPath topLevelPath, XrPath inputSourcePath, float state);
	   [CLink]
	   public static extern XrResult xrSetInputDeviceStateVector2fEXT(XrSession session, XrPath topLevelPath, XrPath inputSourcePath, XrVector2f state);
	   [CLink]
	   public static extern XrResult xrSetInputDeviceLocationEXT(XrSession session, XrPath topLevelPath, XrPath inputSourcePath, XrSpace space, XrPosef pose);
		   public const int XR_EXT_conformance_automation_SPEC_VERSION = 3;
		   public const String XR_EXT_CONFORMANCE_AUTOMATION_EXTENSION_NAME = "XR_EXT_conformance_automation";
	 
	   }
#endif
#if XR_MNDX_egl_enable

	   [CRepr]
	   public struct XrGraphicsBindingEGLMNDX : this(
		   XrStructureType type = .XR_TYPE_GRAPHICS_BINDING_EGL_MNDX,
		   void* next = null,
		   PFNEGLGETPROCADDRESSPROC getProcAddress = default,
		   EGLDisplay display = default,
		   EGLConfig config = default,
		   EGLContext context = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_GRAPHICS_BINDING_EGL_MNDX = 1000048004;
	   }

	   public static 
	   {
			public const int XR_MNDX_egl_enable_SPEC_VERSION = 1;
		   public const String XR_MNDX_EGL_ENABLE_EXTENSION_NAME = "XR_MNDX_egl_enable";
	 
	   }
#endif
#if XR_MSFT_spatial_graph_bridge

	   [CRepr]
	   public struct XrSpatialGraphNodeSpaceCreateInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SPATIAL_GRAPH_NODE_SPACE_CREATE_INFO_MSFT,
		   void* next = null,
		   XrSpatialGraphNodeTypeMSFT nodeType = default,
		   uint8[16] nodeId = default,
		   XrPosef pose = default);
	   public function XrResult PFN_xrCreateSpatialGraphNodeSpaceMSFT(XrSession session, XrSpatialGraphNodeSpaceCreateInfoMSFT* createInfo, XrSpace* space);
	   extension XrStructureType
	   {
		   case XR_TYPE_SPATIAL_GRAPH_NODE_SPACE_CREATE_INFO_MSFT = 1000049000;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrCreateSpatialGraphNodeSpaceMSFT(XrSession session, XrSpatialGraphNodeSpaceCreateInfoMSFT* createInfo, XrSpace* space);
		   public const int XR_MSFT_spatial_graph_bridge_SPEC_VERSION = 1;
		   public const String XR_MSFT_SPATIAL_GRAPH_BRIDGE_EXTENSION_NAME = "XR_MSFT_spatial_graph_bridge";
	 
	   }
#endif
#if XR_MSFT_hand_interaction

	   public static 
	   {
			public const int XR_MSFT_hand_interaction_SPEC_VERSION = 1;
		   public const String XR_MSFT_HAND_INTERACTION_EXTENSION_NAME = "XR_MSFT_hand_interaction";
	 
	   }
#endif
#if XR_EXT_hand_tracking

	   [CRepr]
	   public struct XrSystemHandTrackingPropertiesEXT : this(
		   XrStructureType type = .XR_TYPE_SYSTEM_HAND_TRACKING_PROPERTIES_EXT,
		   void* next = null,
		   XrBool32 supportsHandTracking = default);

	   [CRepr]
	   public struct XrHandTrackerCreateInfoEXT : this(
		   XrStructureType type = .XR_TYPE_HAND_TRACKER_CREATE_INFO_EXT,
		   void* next = null,
		   XrHandEXT hand = default,
		   XrHandJointSetEXT handJointSet = default);

	   [CRepr]
	   public struct XrHandJointsLocateInfoEXT : this(
		   XrStructureType type = .XR_TYPE_HAND_JOINTS_LOCATE_INFO_EXT,
		   void* next = null,
		   XrSpace baseSpace = default,
		   XrTime time = default);

	   [CRepr]
	   public struct XrHandJointLocationEXT : this(
		   XrSpaceLocationFlags locationFlags = default,
		   XrPosef pose = default,
		   float radius = default);

	   [CRepr]
	   public struct XrHandJointVelocityEXT : this(
		   XrSpaceVelocityFlags velocityFlags = default,
		   XrVector3f linearVelocity = default,
		   XrVector3f angularVelocity = default);

	   [CRepr]
	   public struct XrHandJointLocationsEXT : this(
		   XrStructureType type = .XR_TYPE_HAND_JOINT_LOCATIONS_EXT,
		   void* next = null,
		   XrBool32 isActive = default,
		   uint32 jointCount = default,
		   XrHandJointLocationEXT* jointLocations = null);

	   [CRepr]
	   public struct XrHandJointVelocitiesEXT : this(
		   XrStructureType type = .XR_TYPE_HAND_JOINT_VELOCITIES_EXT,
		   void* next = null,
		   uint32 jointCount = default,
		   XrHandJointVelocityEXT* jointVelocities = null);
	   public function XrResult PFN_xrCreateHandTrackerEXT(XrSession session, XrHandTrackerCreateInfoEXT* createInfo, XrHandTrackerEXT* handTracker);
	   public function XrResult PFN_xrDestroyHandTrackerEXT(XrHandTrackerEXT handTracker);
	   public function XrResult PFN_xrLocateHandJointsEXT(XrHandTrackerEXT handTracker, XrHandJointsLocateInfoEXT* locateInfo, XrHandJointLocationsEXT* locations);
	   extension XrObjectType
	   {
		   case XR_OBJECT_TYPE_HAND_TRACKER_EXT = 1000051000;
	   }
	   extension XrStructureType
	   {
		   case XR_TYPE_SYSTEM_HAND_TRACKING_PROPERTIES_EXT = 1000051000;
		   case XR_TYPE_HAND_TRACKER_CREATE_INFO_EXT = 1000051001;
		   case XR_TYPE_HAND_JOINTS_LOCATE_INFO_EXT = 1000051002;
		   case XR_TYPE_HAND_JOINT_LOCATIONS_EXT = 1000051003;
		   case XR_TYPE_HAND_JOINT_VELOCITIES_EXT = 1000051004;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrCreateHandTrackerEXT(XrSession session, XrHandTrackerCreateInfoEXT* createInfo, XrHandTrackerEXT* handTracker);
	   [CLink]
	   public static extern XrResult xrDestroyHandTrackerEXT(XrHandTrackerEXT handTracker);
	   [CLink]
	   public static extern XrResult xrLocateHandJointsEXT(XrHandTrackerEXT handTracker, XrHandJointsLocateInfoEXT* locateInfo, XrHandJointLocationsEXT* locations);
		   public const int XR_EXT_hand_tracking_SPEC_VERSION = 4;
		   public const String XR_EXT_HAND_TRACKING_EXTENSION_NAME = "XR_EXT_hand_tracking";
	 
	   }
#endif
#if XR_MSFT_hand_tracking_mesh

	   [CRepr]
	   public struct XrHandMeshSpaceCreateInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_HAND_MESH_SPACE_CREATE_INFO_MSFT,
		   void* next = null,
		   XrHandPoseTypeMSFT handPoseType = default,
		   XrPosef poseInHandMeshSpace = default);

	   [CRepr]
	   public struct XrHandMeshUpdateInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_HAND_MESH_UPDATE_INFO_MSFT,
		   void* next = null,
		   XrTime time = default,
		   XrHandPoseTypeMSFT handPoseType = default);

	   [CRepr]
	   public struct XrHandMeshMSFT : this(
		   XrStructureType type = .XR_TYPE_HAND_MESH_MSFT,
		   void* next = null,
		   XrBool32 isActive = default,
		   XrBool32 indexBufferChanged = default,
		   XrBool32 vertexBufferChanged = default,
		   XrHandMeshIndexBufferMSFT indexBuffer = default,
		   XrHandMeshVertexBufferMSFT vertexBuffer = default);

	   [CRepr]
	   public struct XrHandMeshIndexBufferMSFT : this(
		   uint32 indexBufferKey = default,
		   uint32 indexCapacityInput = default,
		   uint32 indexCountOutput = default,
		   uint32* indices = null);

	   [CRepr]
	   public struct XrHandMeshVertexBufferMSFT : this(
		   XrTime vertexUpdateTime = default,
		   uint32 vertexCapacityInput = default,
		   uint32 vertexCountOutput = default,
		   XrHandMeshVertexMSFT* vertices = null);

	   [CRepr]
	   public struct XrHandMeshVertexMSFT : this(
		   XrVector3f position = default,
		   XrVector3f normal = default);

	   [CRepr]
	   public struct XrSystemHandTrackingMeshPropertiesMSFT : this(
		   XrStructureType type = .XR_TYPE_SYSTEM_HAND_TRACKING_MESH_PROPERTIES_MSFT,
		   void* next = null,
		   XrBool32 supportsHandTrackingMesh = default,
		   uint32 maxHandMeshIndexCount = default,
		   uint32 maxHandMeshVertexCount = default);

	   [CRepr]
	   public struct XrHandPoseTypeInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_HAND_POSE_TYPE_INFO_MSFT,
		   void* next = null,
		   XrHandPoseTypeMSFT handPoseType = default);
	   public function XrResult PFN_xrCreateHandMeshSpaceMSFT(XrHandTrackerEXT handTracker, XrHandMeshSpaceCreateInfoMSFT* createInfo, XrSpace* space);
	   public function XrResult PFN_xrUpdateHandMeshMSFT(XrHandTrackerEXT handTracker, XrHandMeshUpdateInfoMSFT* updateInfo, XrHandMeshMSFT* handMesh);
	   extension XrStructureType
	   {
		   case XR_TYPE_SYSTEM_HAND_TRACKING_MESH_PROPERTIES_MSFT = 1000052000;
		   case XR_TYPE_HAND_MESH_SPACE_CREATE_INFO_MSFT = 1000052001;
		   case XR_TYPE_HAND_MESH_UPDATE_INFO_MSFT = 1000052002;
		   case XR_TYPE_HAND_MESH_MSFT = 1000052003;
		   case XR_TYPE_HAND_POSE_TYPE_INFO_MSFT = 1000052004;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrCreateHandMeshSpaceMSFT(XrHandTrackerEXT handTracker, XrHandMeshSpaceCreateInfoMSFT* createInfo, XrSpace* space);
	   [CLink]
	   public static extern XrResult xrUpdateHandMeshMSFT(XrHandTrackerEXT handTracker, XrHandMeshUpdateInfoMSFT* updateInfo, XrHandMeshMSFT* handMesh);
		   public const int XR_MSFT_hand_tracking_mesh_SPEC_VERSION = 3;
		   public const String XR_MSFT_HAND_TRACKING_MESH_EXTENSION_NAME = "XR_MSFT_hand_tracking_mesh";
	 
	   }
#endif
#if XR_MSFT_secondary_view_configuration

	   [CRepr]
	   public struct XrSecondaryViewConfigurationSessionBeginInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SECONDARY_VIEW_CONFIGURATION_SESSION_BEGIN_INFO_MSFT,
		   void* next = null,
		   uint32 viewConfigurationCount = default,
		   XrViewConfigurationType* enabledViewConfigurationTypes = null);

	   [CRepr]
	   public struct XrSecondaryViewConfigurationStateMSFT : this(
		   XrStructureType type = .XR_TYPE_SECONDARY_VIEW_CONFIGURATION_STATE_MSFT,
		   void* next = null,
		   XrViewConfigurationType viewConfigurationType = default,
		   XrBool32 active = default);

	   [CRepr]
	   public struct XrSecondaryViewConfigurationFrameStateMSFT : this(
		   XrStructureType type = .XR_TYPE_SECONDARY_VIEW_CONFIGURATION_FRAME_STATE_MSFT,
		   void* next = null,
		   uint32 viewConfigurationCount = default,
		   XrSecondaryViewConfigurationStateMSFT* viewConfigurationStates = null);

	   [CRepr]
	   public struct XrSecondaryViewConfigurationFrameEndInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SECONDARY_VIEW_CONFIGURATION_FRAME_END_INFO_MSFT,
		   void* next = null,
		   uint32 viewConfigurationCount = default,
		   XrSecondaryViewConfigurationLayerInfoMSFT* viewConfigurationLayersInfo = null);

	   [CRepr]
	   public struct XrSecondaryViewConfigurationLayerInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SECONDARY_VIEW_CONFIGURATION_LAYER_INFO_MSFT,
		   void* next = null,
		   XrViewConfigurationType viewConfigurationType = default,
		   XrEnvironmentBlendMode environmentBlendMode = default,
		   uint32 layerCount = default,
		   XrCompositionLayerBaseHeader** layers = null);

	   [CRepr]
	   public struct XrSecondaryViewConfigurationSwapchainCreateInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SECONDARY_VIEW_CONFIGURATION_SWAPCHAIN_CREATE_INFO_MSFT,
		   void* next = null,
		   XrViewConfigurationType viewConfigurationType = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_SECONDARY_VIEW_CONFIGURATION_SESSION_BEGIN_INFO_MSFT = 1000053000;
		   case XR_TYPE_SECONDARY_VIEW_CONFIGURATION_STATE_MSFT = 1000053001;
		   case XR_TYPE_SECONDARY_VIEW_CONFIGURATION_FRAME_STATE_MSFT = 1000053002;
		   case XR_TYPE_SECONDARY_VIEW_CONFIGURATION_FRAME_END_INFO_MSFT = 1000053003;
		   case XR_TYPE_SECONDARY_VIEW_CONFIGURATION_LAYER_INFO_MSFT = 1000053004;
		   case XR_TYPE_SECONDARY_VIEW_CONFIGURATION_SWAPCHAIN_CREATE_INFO_MSFT = 1000053005;
	   }
	   extension XrResult
	   {
		   case XR_ERROR_SECONDARY_VIEW_CONFIGURATION_TYPE_NOT_ENABLED_MSFT = -1000053000;
	   }

	   public static 
	   {
			public const int XR_MSFT_secondary_view_configuration_SPEC_VERSION = 1;
		   public const String XR_MSFT_SECONDARY_VIEW_CONFIGURATION_EXTENSION_NAME = "XR_MSFT_secondary_view_configuration";
	 
	   }
#endif
#if XR_MSFT_first_person_observer
	   extension XrViewConfigurationType
	   {
		   case XR_VIEW_CONFIGURATION_TYPE_SECONDARY_MONO_FIRST_PERSON_OBSERVER_MSFT = 1000054000;
	   }

	   public static 
	   {
			public const int XR_MSFT_first_person_observer_SPEC_VERSION = 1;
		   public const String XR_MSFT_FIRST_PERSON_OBSERVER_EXTENSION_NAME = "XR_MSFT_first_person_observer";
	 
	   }
#endif
#if XR_MSFT_controller_model

	   [CRepr]
	   public struct XrControllerModelKeyStateMSFT : this(
		   XrStructureType type = .XR_TYPE_CONTROLLER_MODEL_KEY_STATE_MSFT,
		   void* next = null,
		   XrControllerModelKeyMSFT modelKey = default);

	   [CRepr]
	   public struct XrControllerModelNodePropertiesMSFT : this(
		   XrStructureType type = .XR_TYPE_CONTROLLER_MODEL_NODE_PROPERTIES_MSFT,
		   void* next = null,
		   c_char[OpenXR.XR_MAX_CONTROLLER_MODEL_NODE_NAME_SIZE_MSFT] parentNodeName = default,
		   c_char[OpenXR.XR_MAX_CONTROLLER_MODEL_NODE_NAME_SIZE_MSFT] nodeName = default);

	   [CRepr]
	   public struct XrControllerModelPropertiesMSFT : this(
		   XrStructureType type = .XR_TYPE_CONTROLLER_MODEL_PROPERTIES_MSFT,
		   void* next = null,
		   uint32 nodeCapacityInput = default,
		   uint32 nodeCountOutput = default,
		   XrControllerModelNodePropertiesMSFT* nodeProperties = null);

	   [CRepr]
	   public struct XrControllerModelNodeStateMSFT : this(
		   XrStructureType type = .XR_TYPE_CONTROLLER_MODEL_NODE_STATE_MSFT,
		   void* next = null,
		   XrPosef nodePose = default);

	   [CRepr]
	   public struct XrControllerModelStateMSFT : this(
		   XrStructureType type = .XR_TYPE_CONTROLLER_MODEL_STATE_MSFT,
		   void* next = null,
		   uint32 nodeCapacityInput = default,
		   uint32 nodeCountOutput = default,
		   XrControllerModelNodeStateMSFT* nodeStates = null);
	   public function XrResult PFN_xrGetControllerModelKeyMSFT(XrSession session, XrPath topLevelUserPath, XrControllerModelKeyStateMSFT* controllerModelKeyState);
	   public function XrResult PFN_xrLoadControllerModelMSFT(XrSession session, XrControllerModelKeyMSFT modelKey, uint32 bufferCapacityInput, uint32* bufferCountOutput, uint8* buffer);
	   public function XrResult PFN_xrGetControllerModelPropertiesMSFT(XrSession session, XrControllerModelKeyMSFT modelKey, XrControllerModelPropertiesMSFT* properties);
	   public function XrResult PFN_xrGetControllerModelStateMSFT(XrSession session, XrControllerModelKeyMSFT modelKey, XrControllerModelStateMSFT* state);
	   extension XrStructureType
	   {
		   case XR_TYPE_CONTROLLER_MODEL_KEY_STATE_MSFT = 1000055000;
		   case XR_TYPE_CONTROLLER_MODEL_NODE_PROPERTIES_MSFT = 1000055001;
		   case XR_TYPE_CONTROLLER_MODEL_PROPERTIES_MSFT = 1000055002;
		   case XR_TYPE_CONTROLLER_MODEL_NODE_STATE_MSFT = 1000055003;
		   case XR_TYPE_CONTROLLER_MODEL_STATE_MSFT = 1000055004;
	   }
	   extension XrResult
	   {
		   case XR_ERROR_CONTROLLER_MODEL_KEY_INVALID_MSFT = -1000055000;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrGetControllerModelKeyMSFT(XrSession session, XrPath topLevelUserPath, XrControllerModelKeyStateMSFT* controllerModelKeyState);
	   [CLink]
	   public static extern XrResult xrLoadControllerModelMSFT(XrSession session, XrControllerModelKeyMSFT modelKey, uint32 bufferCapacityInput, uint32* bufferCountOutput, uint8* buffer);
	   [CLink]
	   public static extern XrResult xrGetControllerModelPropertiesMSFT(XrSession session, XrControllerModelKeyMSFT modelKey, XrControllerModelPropertiesMSFT* properties);
	   [CLink]
	   public static extern XrResult xrGetControllerModelStateMSFT(XrSession session, XrControllerModelKeyMSFT modelKey, XrControllerModelStateMSFT* state);
		   public const int XR_MSFT_controller_model_SPEC_VERSION = 2;
		   public const String XR_MSFT_CONTROLLER_MODEL_EXTENSION_NAME = "XR_MSFT_controller_model";
		   public const int XR_MAX_CONTROLLER_MODEL_NODE_NAME_SIZE_MSFT = 64;
	 
	   }
#endif
#if XR_MSFT_perception_anchor_interop
	   public function XrResult PFN_xrCreateSpatialAnchorFromPerceptionAnchorMSFT(XrSession session, IUnknown* perceptionAnchor, XrSpatialAnchorMSFT* anchor);
	   public function XrResult PFN_xrTryGetPerceptionAnchorFromSpatialAnchorMSFT(XrSession session, XrSpatialAnchorMSFT anchor, IUnknown** perceptionAnchor);

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrCreateSpatialAnchorFromPerceptionAnchorMSFT(XrSession session, IUnknown* perceptionAnchor, XrSpatialAnchorMSFT* anchor);
	   [CLink]
	   public static extern XrResult xrTryGetPerceptionAnchorFromSpatialAnchorMSFT(XrSession session, XrSpatialAnchorMSFT anchor, IUnknown** perceptionAnchor);
		   public const int XR_MSFT_perception_anchor_interop_SPEC_VERSION = 1;
		   public const String XR_MSFT_PERCEPTION_ANCHOR_INTEROP_EXTENSION_NAME = "XR_MSFT_perception_anchor_interop";
	 
	   }
#endif
#if XR_EXT_win32_appcontainer_compatible

	   public static 
	   {
			public const int XR_EXT_win32_appcontainer_compatible_SPEC_VERSION = 1;
		   public const String XR_EXT_WIN32_APPCONTAINER_COMPATIBLE_EXTENSION_NAME = "XR_EXT_win32_appcontainer_compatible";
	 
	   }
#endif
#if XR_EPIC_view_configuration_fov

	   [CRepr]
	   public struct XrViewConfigurationViewFovEPIC : this(
		   XrStructureType type = .XR_TYPE_VIEW_CONFIGURATION_VIEW_FOV_EPIC,
		   void* next = null,
		   XrFovf recommendedFov = default,
		   XrFovf maxMutableFov = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_VIEW_CONFIGURATION_VIEW_FOV_EPIC = 1000059000;
	   }

	   public static 
	   {
			public const int XR_EPIC_view_configuration_fov_SPEC_VERSION = 2;
		   public const String XR_EPIC_VIEW_CONFIGURATION_FOV_EXTENSION_NAME = "XR_EPIC_view_configuration_fov";
	 
	   }
#endif
#if XR_MSFT_holographic_window_attachment

	   [CRepr]
	   public struct XrHolographicWindowAttachmentMSFT : this(
		   XrStructureType type = .XR_TYPE_HOLOGRAPHIC_WINDOW_ATTACHMENT_MSFT,
		   void* next = null,
		   IUnknown* holographicSpace = null,
		   IUnknown* coreWindow = null);
	   extension XrStructureType
	   {
		   case XR_TYPE_HOLOGRAPHIC_WINDOW_ATTACHMENT_MSFT = 1000063000;
	   }

	   public static 
	   {
			public const int XR_MSFT_holographic_window_attachment_SPEC_VERSION = 1;
		   public const String XR_MSFT_HOLOGRAPHIC_WINDOW_ATTACHMENT_EXTENSION_NAME = "XR_MSFT_holographic_window_attachment";
	 
	   }
#endif
#if XR_MSFT_composition_layer_reprojection

	   [CRepr]
	   public struct XrCompositionLayerReprojectionInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_COMPOSITION_LAYER_REPROJECTION_INFO_MSFT,
		   void* next = null,
		   XrReprojectionModeMSFT reprojectionMode = default);

	   [CRepr]
	   public struct XrCompositionLayerReprojectionPlaneOverrideMSFT : this(
		   XrStructureType type = .XR_TYPE_COMPOSITION_LAYER_REPROJECTION_PLANE_OVERRIDE_MSFT,
		   void* next = null,
		   XrVector3f position = default,
		   XrVector3f normal = default,
		   XrVector3f velocity = default);
	   public function XrResult PFN_xrEnumerateReprojectionModesMSFT(XrInstance instance, XrSystemId systemId, XrViewConfigurationType viewConfigurationType, uint32 modeCapacityInput, uint32* modeCountOutput, XrReprojectionModeMSFT* modes);
	   extension XrStructureType
	   {
		   case XR_TYPE_COMPOSITION_LAYER_REPROJECTION_INFO_MSFT = 1000066000;
		   case XR_TYPE_COMPOSITION_LAYER_REPROJECTION_PLANE_OVERRIDE_MSFT = 1000066001;
	   }
	   extension XrResult
	   {
		   case XR_ERROR_REPROJECTION_MODE_UNSUPPORTED_MSFT = -1000066000;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrEnumerateReprojectionModesMSFT(XrInstance instance, XrSystemId systemId, XrViewConfigurationType viewConfigurationType, uint32 modeCapacityInput, uint32* modeCountOutput, XrReprojectionModeMSFT* modes);
		   public const int XR_MSFT_composition_layer_reprojection_SPEC_VERSION = 1;
		   public const String XR_MSFT_COMPOSITION_LAYER_REPROJECTION_EXTENSION_NAME = "XR_MSFT_composition_layer_reprojection";
	 
	   }
#endif
#if XR_HUAWEI_controller_interaction

	   public static 
	   {
			public const int XR_HUAWEI_controller_interaction_SPEC_VERSION = 1;
		   public const String XR_HUAWEI_CONTROLLER_INTERACTION_EXTENSION_NAME = "XR_HUAWEI_controller_interaction";
	 
	   }
#endif
#if XR_FB_android_surface_swapchain_create

	   [CRepr]
	   public struct XrAndroidSurfaceSwapchainCreateInfoFB : this(
		   XrStructureType type = .XR_TYPE_ANDROID_SURFACE_SWAPCHAIN_CREATE_INFO_FB,
		   void* next = null,
		   XrAndroidSurfaceSwapchainFlagsFB createFlags = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_ANDROID_SURFACE_SWAPCHAIN_CREATE_INFO_FB = 1000070000;
	   }

	   public static 
	   {
			public const int XR_FB_android_surface_swapchain_create_SPEC_VERSION = 1;
		   public const String XR_FB_ANDROID_SURFACE_SWAPCHAIN_CREATE_EXTENSION_NAME = "XR_FB_android_surface_swapchain_create";
	 
	   }
#endif
#if XR_FB_swapchain_update_state

	   [CRepr]
	   public struct XrSwapchainStateBaseHeaderFB : this(
		   XrStructureType type = default,
		   void* next = null);
	   public function XrResult PFN_xrUpdateSwapchainFB(XrSwapchain swapchain, XrSwapchainStateBaseHeaderFB* state);
	   public function XrResult PFN_xrGetSwapchainStateFB(XrSwapchain swapchain, XrSwapchainStateBaseHeaderFB* state);

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrUpdateSwapchainFB(XrSwapchain swapchain, XrSwapchainStateBaseHeaderFB* state);
	   [CLink]
	   public static extern XrResult xrGetSwapchainStateFB(XrSwapchain swapchain, XrSwapchainStateBaseHeaderFB* state);
		   public const int XR_FB_swapchain_update_state_SPEC_VERSION = 3;
		   public const String XR_FB_SWAPCHAIN_UPDATE_STATE_EXTENSION_NAME = "XR_FB_swapchain_update_state";
	 
	   }
#endif
#if XR_VALVE_analog_threshold

	   [CRepr]
	   public struct XrInteractionProfileAnalogThresholdVALVE : this(
		   XrStructureType type = .XR_TYPE_INTERACTION_PROFILE_ANALOG_THRESHOLD_VALVE,
		   void* next = null,
		   XrAction action = default,
		   XrPath binding = default,
		   float onThreshold = default,
		   float offThreshold = default,
		   XrHapticBaseHeader* onHaptic = null,
		   XrHapticBaseHeader* offHaptic = null);
	   extension XrStructureType
	   {
		   case XR_TYPE_INTERACTION_PROFILE_ANALOG_THRESHOLD_VALVE = 1000079000;
	   }

	   public static 
	   {
			public const int XR_VALVE_analog_threshold_SPEC_VERSION = 1;
		   public const String XR_VALVE_ANALOG_THRESHOLD_EXTENSION_NAME = "XR_VALVE_analog_threshold";
	 
	   }
#endif
#if XR_EXT_hand_joints_motion_range

	   [CRepr]
	   public struct XrHandJointsMotionRangeInfoEXT : this(
		   XrStructureType type = .XR_TYPE_HAND_JOINTS_MOTION_RANGE_INFO_EXT,
		   void* next = null,
		   XrHandJointsMotionRangeEXT handJointsMotionRange = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_HAND_JOINTS_MOTION_RANGE_INFO_EXT = 1000080000;
	   }

	   public static 
	   {
			public const int XR_EXT_hand_joints_motion_range_SPEC_VERSION = 1;
		   public const String XR_EXT_HAND_JOINTS_MOTION_RANGE_EXTENSION_NAME = "XR_EXT_hand_joints_motion_range";
	 
	   }
#endif
#if XR_KHR_loader_init

	   [CRepr]
	   public struct XrLoaderInitInfoBaseHeaderKHR : this(
		   XrStructureType type = default,
		   void* next = null);
	   public function XrResult PFN_xrInitializeLoaderKHR(XrLoaderInitInfoBaseHeaderKHR* loaderInitInfo);

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrInitializeLoaderKHR(XrLoaderInitInfoBaseHeaderKHR* loaderInitInfo);
		   public const int XR_KHR_loader_init_SPEC_VERSION = 1;
		   public const String XR_KHR_LOADER_INIT_EXTENSION_NAME = "XR_KHR_loader_init";
	 
	   }
#endif
#if XR_KHR_loader_init_android

	   [CRepr]
	   public struct XrLoaderInitInfoAndroidKHR : this(
		   XrStructureType type = .XR_TYPE_LOADER_INIT_INFO_ANDROID_KHR,
		   void* next = null,
		   void* applicationVM = null,
		   void* applicationContext = null);
	   extension XrStructureType
	   {
		   case XR_TYPE_LOADER_INIT_INFO_ANDROID_KHR = 1000089000;
	   }

	   public static 
	   {
			public const int XR_KHR_loader_init_android_SPEC_VERSION = 1;
		   public const String XR_KHR_LOADER_INIT_ANDROID_EXTENSION_NAME = "XR_KHR_loader_init_android";
	 
	   }
#endif
#if XR_KHR_vulkan_enable2

	   [CRepr]
	   public struct XrVulkanInstanceCreateInfoKHR : this(
		   XrStructureType type = .XR_TYPE_VULKAN_INSTANCE_CREATE_INFO_KHR,
		   void* next = null,
		   XrSystemId systemId = default,
		   XrVulkanInstanceCreateFlagsKHR createFlags = default,
		   PFN_vkGetInstanceProcAddr pfnGetInstanceProcAddr = default,
		   VkInstanceCreateInfo* vulkanCreateInfo = null,
		   VkAllocationCallbacks* vulkanAllocator = null);

	   [CRepr]
	   public struct XrVulkanDeviceCreateInfoKHR : this(
		   XrStructureType type = .XR_TYPE_VULKAN_DEVICE_CREATE_INFO_KHR,
		   void* next = null,
		   XrSystemId systemId = default,
		   XrVulkanDeviceCreateFlagsKHR createFlags = default,
		   PFN_vkGetInstanceProcAddr pfnGetInstanceProcAddr = default,
		   VkPhysicalDevice vulkanPhysicalDevice = default,
		   VkDeviceCreateInfo* vulkanCreateInfo = null,
		   VkAllocationCallbacks* vulkanAllocator = null);

	   public struct XrGraphicsBindingVulkan2KHR;

	   [CRepr]
	   public struct XrVulkanGraphicsDeviceGetInfoKHR : this(
		   XrStructureType type = .XR_TYPE_VULKAN_GRAPHICS_DEVICE_GET_INFO_KHR,
		   void* next = null,
		   XrSystemId systemId = default,
		   VkInstance vulkanInstance = default);

	   public struct XrSwapchainImageVulkan2KHR;

	   public struct XrGraphicsRequirementsVulkan2KHR;
	   public function XrResult PFN_xrCreateVulkanInstanceKHR(XrInstance instance, XrVulkanInstanceCreateInfoKHR* createInfo, VkInstance* vulkanInstance, VkResult* vulkanResult);
	   public function XrResult PFN_xrCreateVulkanDeviceKHR(XrInstance instance, XrVulkanDeviceCreateInfoKHR* createInfo, VkDevice* vulkanDevice, VkResult* vulkanResult);
	   public function XrResult PFN_xrGetVulkanGraphicsDevice2KHR(XrInstance instance, XrVulkanGraphicsDeviceGetInfoKHR* getInfo, VkPhysicalDevice* vulkanPhysicalDevice);
	   extension XrStructureType
	   {
		   case XR_TYPE_VULKAN_INSTANCE_CREATE_INFO_KHR = 1000090000;
		   case XR_TYPE_VULKAN_DEVICE_CREATE_INFO_KHR = 1000090001;
		   case XR_TYPE_VULKAN_GRAPHICS_DEVICE_GET_INFO_KHR = 1000090003;
		   case XR_TYPE_GRAPHICS_BINDING_VULKAN2_KHR = XR_TYPE_GRAPHICS_BINDING_VULKAN_KHR;
		   case XR_TYPE_SWAPCHAIN_IMAGE_VULKAN2_KHR = XR_TYPE_SWAPCHAIN_IMAGE_VULKAN_KHR;
		   case XR_TYPE_GRAPHICS_REQUIREMENTS_VULKAN2_KHR = XR_TYPE_GRAPHICS_REQUIREMENTS_VULKAN_KHR;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrCreateVulkanInstanceKHR(XrInstance instance, XrVulkanInstanceCreateInfoKHR* createInfo, VkInstance* vulkanInstance, VkResult* vulkanResult);
	   [CLink]
	   public static extern XrResult xrCreateVulkanDeviceKHR(XrInstance instance, XrVulkanDeviceCreateInfoKHR* createInfo, VkDevice* vulkanDevice, VkResult* vulkanResult);
	   [CLink]
	   public static extern XrResult xrGetVulkanGraphicsDevice2KHR(XrInstance instance, XrVulkanGraphicsDeviceGetInfoKHR* getInfo, VkPhysicalDevice* vulkanPhysicalDevice);
		   public const int XR_KHR_vulkan_enable2_SPEC_VERSION = 2;
		   public const String XR_KHR_VULKAN_ENABLE2_EXTENSION_NAME = "XR_KHR_vulkan_enable2";
	 
	   }
#endif
#if XR_KHR_composition_layer_equirect2

	   [CRepr]
	   public struct XrCompositionLayerEquirect2KHR : this(
		   XrStructureType type = .XR_TYPE_COMPOSITION_LAYER_EQUIRECT2_KHR,
		   void* next = null,
		   XrCompositionLayerFlags layerFlags = default,
		   XrSpace space = default,
		   XrEyeVisibility eyeVisibility = default,
		   XrSwapchainSubImage subImage = default,
		   XrPosef pose = default,
		   float radius = default,
		   float centralHorizontalAngle = default,
		   float upperVerticalAngle = default,
		   float lowerVerticalAngle = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_COMPOSITION_LAYER_EQUIRECT2_KHR = 1000091000;
	   }

	   public static 
	   {
			public const int XR_KHR_composition_layer_equirect2_SPEC_VERSION = 1;
		   public const String XR_KHR_COMPOSITION_LAYER_EQUIRECT2_EXTENSION_NAME = "XR_KHR_composition_layer_equirect2";
	 
	   }
#endif
#if XR_EXT_samsung_odyssey_controller

	   public static 
	   {
			public const int XR_EXT_samsung_odyssey_controller_SPEC_VERSION = 1;
		   public const String XR_EXT_SAMSUNG_ODYSSEY_CONTROLLER_EXTENSION_NAME = "XR_EXT_samsung_odyssey_controller";
	 
	   }
#endif
#if XR_EXT_hp_mixed_reality_controller

	   public static 
	   {
			public const int XR_EXT_hp_mixed_reality_controller_SPEC_VERSION = 1;
		   public const String XR_EXT_HP_MIXED_REALITY_CONTROLLER_EXTENSION_NAME = "XR_EXT_hp_mixed_reality_controller";
	 
	   }
#endif
#if XR_MND_swapchain_usage_input_attachment_bit
	   extension XrSwapchainUsageFlagBits
	   {
	   /* Specifies that the image may: be used as a input attachment. */
		   case XR_SWAPCHAIN_USAGE_INPUT_ATTACHMENT_BIT_MND = 7;
	   }

	   public static 
	   {
			public const int XR_MND_swapchain_usage_input_attachment_bit_SPEC_VERSION = 2;
		   public const String XR_MND_SWAPCHAIN_USAGE_INPUT_ATTACHMENT_BIT_EXTENSION_NAME = "XR_MND_swapchain_usage_input_attachment_bit";
	 
	   }
#endif
#if XR_MSFT_scene_understanding

	   [CRepr]
	   public struct XrUuidMSFT : this(
		   uint8[16] bytes = default);

	   [CRepr]
	   public struct XrSceneObserverCreateInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_OBSERVER_CREATE_INFO_MSFT,
		   void* next = null);

	   [CRepr]
	   public struct XrSceneCreateInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_CREATE_INFO_MSFT,
		   void* next = null);

	   [CRepr]
	   public struct XrNewSceneComputeInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_NEW_SCENE_COMPUTE_INFO_MSFT,
		   void* next = null,
		   uint32 requestedFeatureCount = default,
		   XrSceneComputeFeatureMSFT* requestedFeatures = null,
		   XrSceneComputeConsistencyMSFT consistency = default,
		   XrSceneBoundsMSFT bounds = default);

	   [CRepr]
	   public struct XrVisualMeshComputeLodInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_VISUAL_MESH_COMPUTE_LOD_INFO_MSFT,
		   void* next = null,
		   XrMeshComputeLodMSFT lod = default);

	   [CRepr]
	   public struct XrSceneSphereBoundMSFT : this(
		   XrVector3f center = default,
		   float radius = default);

	   [CRepr]
	   public struct XrSceneOrientedBoxBoundMSFT : this(
		   XrPosef pose = default,
		   XrVector3f extents = default);

	   [CRepr]
	   public struct XrSceneFrustumBoundMSFT : this(
		   XrPosef pose = default,
		   XrFovf fov = default,
		   float farDistance = default);

	   [CRepr]
	   public struct XrSceneBoundsMSFT : this(
		   XrSpace space = default,
		   XrTime time = default,
		   uint32 sphereCount = default,
		   XrSceneSphereBoundMSFT* spheres = null,
		   uint32 boxCount = default,
		   XrSceneOrientedBoxBoundMSFT* boxes = null,
		   uint32 frustumCount = default,
		   XrSceneFrustumBoundMSFT* frustums = null);

	   [CRepr]
	   public struct XrSceneComponentMSFT : this(
		   XrSceneComponentTypeMSFT componentType = default,
		   XrUuidMSFT id = default,
		   XrUuidMSFT parentId = default,
		   XrTime updateTime = default);

	   [CRepr]
	   public struct XrSceneComponentsMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_COMPONENTS_MSFT,
		   void* next = null,
		   uint32 componentCapacityInput = default,
		   uint32 componentCountOutput = default,
		   XrSceneComponentMSFT* components = null);

	   [CRepr]
	   public struct XrSceneComponentsGetInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_COMPONENTS_GET_INFO_MSFT,
		   void* next = null,
		   XrSceneComponentTypeMSFT componentType = default);

	   [CRepr]
	   public struct XrSceneComponentLocationMSFT : this(
		   XrSpaceLocationFlags flags = default,
		   XrPosef pose = default);

	   [CRepr]
	   public struct XrSceneComponentLocationsMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_COMPONENT_LOCATIONS_MSFT,
		   void* next = null,
		   uint32 locationCount = default,
		   XrSceneComponentLocationMSFT* locations = null);

	   [CRepr]
	   public struct XrSceneComponentsLocateInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_COMPONENTS_LOCATE_INFO_MSFT,
		   void* next = null,
		   XrSpace baseSpace = default,
		   XrTime time = default,
		   uint32 componentIdCount = default,
		   XrUuidMSFT* componentIds = null);

	   [CRepr]
	   public struct XrSceneObjectMSFT : this(
		   XrSceneObjectTypeMSFT objectType = default);

	   [CRepr]
	   public struct XrSceneObjectsMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_OBJECTS_MSFT,
		   void* next = null,
		   uint32 sceneObjectCount = default,
		   XrSceneObjectMSFT* sceneObjects = null);

	   [CRepr]
	   public struct XrSceneComponentParentFilterInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_COMPONENT_PARENT_FILTER_INFO_MSFT,
		   void* next = null,
		   XrUuidMSFT parentId = default);

	   [CRepr]
	   public struct XrSceneObjectTypesFilterInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_OBJECT_TYPES_FILTER_INFO_MSFT,
		   void* next = null,
		   uint32 objectTypeCount = default,
		   XrSceneObjectTypeMSFT* objectTypes = null);

	   [CRepr]
	   public struct XrScenePlaneMSFT : this(
		   XrScenePlaneAlignmentTypeMSFT alignment = default,
		   XrExtent2Df size = default,
		   uint64 meshBufferId = default,
		   XrBool32 supportsIndicesUint16 = default);

	   [CRepr]
	   public struct XrScenePlanesMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_PLANES_MSFT,
		   void* next = null,
		   uint32 scenePlaneCount = default,
		   XrScenePlaneMSFT* scenePlanes = null);

	   [CRepr]
	   public struct XrScenePlaneAlignmentFilterInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_PLANE_ALIGNMENT_FILTER_INFO_MSFT,
		   void* next = null,
		   uint32 alignmentCount = default,
		   XrScenePlaneAlignmentTypeMSFT* alignments = null);

	   [CRepr]
	   public struct XrSceneMeshMSFT : this(
		   uint64 meshBufferId = default,
		   XrBool32 supportsIndicesUint16 = default);

	   [CRepr]
	   public struct XrSceneMeshesMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_MESHES_MSFT,
		   void* next = null,
		   uint32 sceneMeshCount = default,
		   XrSceneMeshMSFT* sceneMeshes = null);

	   [CRepr]
	   public struct XrSceneMeshBuffersGetInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_MESH_BUFFERS_GET_INFO_MSFT,
		   void* next = null,
		   uint64 meshBufferId = default);

	   [CRepr]
	   public struct XrSceneMeshBuffersMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_MESH_BUFFERS_MSFT,
		   void* next = null);

	   [CRepr]
	   public struct XrSceneMeshVertexBufferMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_MESH_VERTEX_BUFFER_MSFT,
		   void* next = null,
		   uint32 vertexCapacityInput = default,
		   uint32 vertexCountOutput = default,
		   XrVector3f* vertices = null);

	   [CRepr]
	   public struct XrSceneMeshIndicesUint32MSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_MESH_INDICES_UINT32_MSFT,
		   void* next = null,
		   uint32 indexCapacityInput = default,
		   uint32 indexCountOutput = default,
		   uint32* indices = null);

	   [CRepr]
	   public struct XrSceneMeshIndicesUint16MSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_MESH_INDICES_UINT16_MSFT,
		   void* next = null,
		   uint32 indexCapacityInput = default,
		   uint32 indexCountOutput = default,
		   uint16* indices = null);
	   public function XrResult PFN_xrEnumerateSceneComputeFeaturesMSFT(XrInstance instance, XrSystemId systemId, uint32 featureCapacityInput, uint32* featureCountOutput, XrSceneComputeFeatureMSFT* features);
	   public function XrResult PFN_xrCreateSceneObserverMSFT(XrSession session, XrSceneObserverCreateInfoMSFT* createInfo, XrSceneObserverMSFT* sceneObserver);
	   public function XrResult PFN_xrDestroySceneObserverMSFT(XrSceneObserverMSFT sceneObserver);
	   public function XrResult PFN_xrCreateSceneMSFT(XrSceneObserverMSFT sceneObserver, XrSceneCreateInfoMSFT* createInfo, XrSceneMSFT* scene);
	   public function XrResult PFN_xrDestroySceneMSFT(XrSceneMSFT scene);
	   public function XrResult PFN_xrComputeNewSceneMSFT(XrSceneObserverMSFT sceneObserver, XrNewSceneComputeInfoMSFT* computeInfo);
	   public function XrResult PFN_xrGetSceneComputeStateMSFT(XrSceneObserverMSFT sceneObserver, XrSceneComputeStateMSFT* state);
	   public function XrResult PFN_xrGetSceneComponentsMSFT(XrSceneMSFT scene, XrSceneComponentsGetInfoMSFT* getInfo, XrSceneComponentsMSFT* components);
	   public function XrResult PFN_xrLocateSceneComponentsMSFT(XrSceneMSFT scene, XrSceneComponentsLocateInfoMSFT* locateInfo, XrSceneComponentLocationsMSFT* locations);
	   public function XrResult PFN_xrGetSceneMeshBuffersMSFT(XrSceneMSFT scene, XrSceneMeshBuffersGetInfoMSFT* getInfo, XrSceneMeshBuffersMSFT* buffers);
	   extension XrObjectType
	   {
		   case XR_OBJECT_TYPE_SCENE_OBSERVER_MSFT = 1000097000;
		   case XR_OBJECT_TYPE_SCENE_MSFT = 1000097001;
	   }
	   extension XrStructureType
	   {
		   case XR_TYPE_SCENE_OBSERVER_CREATE_INFO_MSFT = 1000097000;
		   case XR_TYPE_SCENE_CREATE_INFO_MSFT = 1000097001;
		   case XR_TYPE_NEW_SCENE_COMPUTE_INFO_MSFT = 1000097002;
		   case XR_TYPE_VISUAL_MESH_COMPUTE_LOD_INFO_MSFT = 1000097003;
		   case XR_TYPE_SCENE_COMPONENTS_MSFT = 1000097004;
		   case XR_TYPE_SCENE_COMPONENTS_GET_INFO_MSFT = 1000097005;
		   case XR_TYPE_SCENE_COMPONENT_LOCATIONS_MSFT = 1000097006;
		   case XR_TYPE_SCENE_COMPONENTS_LOCATE_INFO_MSFT = 1000097007;
		   case XR_TYPE_SCENE_OBJECTS_MSFT = 1000097008;
		   case XR_TYPE_SCENE_COMPONENT_PARENT_FILTER_INFO_MSFT = 1000097009;
		   case XR_TYPE_SCENE_OBJECT_TYPES_FILTER_INFO_MSFT = 1000097010;
		   case XR_TYPE_SCENE_PLANES_MSFT = 1000097011;
		   case XR_TYPE_SCENE_PLANE_ALIGNMENT_FILTER_INFO_MSFT = 1000097012;
		   case XR_TYPE_SCENE_MESHES_MSFT = 1000097013;
		   case XR_TYPE_SCENE_MESH_BUFFERS_GET_INFO_MSFT = 1000097014;
		   case XR_TYPE_SCENE_MESH_BUFFERS_MSFT = 1000097015;
		   case XR_TYPE_SCENE_MESH_VERTEX_BUFFER_MSFT = 1000097016;
		   case XR_TYPE_SCENE_MESH_INDICES_UINT32_MSFT = 1000097017;
		   case XR_TYPE_SCENE_MESH_INDICES_UINT16_MSFT = 1000097018;
	   }
	   extension XrResult
	   {
		   case XR_ERROR_COMPUTE_NEW_SCENE_NOT_COMPLETED_MSFT = -1000097000;
		   case XR_ERROR_SCENE_COMPONENT_ID_INVALID_MSFT = -1000097001;
		   case XR_ERROR_SCENE_COMPONENT_TYPE_MISMATCH_MSFT = -1000097002;
		   case XR_ERROR_SCENE_MESH_BUFFER_ID_INVALID_MSFT = -1000097003;
		   case XR_ERROR_SCENE_COMPUTE_FEATURE_INCOMPATIBLE_MSFT = -1000097004;
		   case XR_ERROR_SCENE_COMPUTE_CONSISTENCY_MISMATCH_MSFT = -1000097005;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrEnumerateSceneComputeFeaturesMSFT(XrInstance instance, XrSystemId systemId, uint32 featureCapacityInput, uint32* featureCountOutput, XrSceneComputeFeatureMSFT* features);
	   [CLink]
	   public static extern XrResult xrCreateSceneObserverMSFT(XrSession session, XrSceneObserverCreateInfoMSFT* createInfo, XrSceneObserverMSFT* sceneObserver);
	   [CLink]
	   public static extern XrResult xrDestroySceneObserverMSFT(XrSceneObserverMSFT sceneObserver);
	   [CLink]
	   public static extern XrResult xrCreateSceneMSFT(XrSceneObserverMSFT sceneObserver, XrSceneCreateInfoMSFT* createInfo, XrSceneMSFT* scene);
	   [CLink]
	   public static extern XrResult xrDestroySceneMSFT(XrSceneMSFT scene);
	   [CLink]
	   public static extern XrResult xrComputeNewSceneMSFT(XrSceneObserverMSFT sceneObserver, XrNewSceneComputeInfoMSFT* computeInfo);
	   [CLink]
	   public static extern XrResult xrGetSceneComputeStateMSFT(XrSceneObserverMSFT sceneObserver, XrSceneComputeStateMSFT* state);
	   [CLink]
	   public static extern XrResult xrGetSceneComponentsMSFT(XrSceneMSFT scene, XrSceneComponentsGetInfoMSFT* getInfo, XrSceneComponentsMSFT* components);
	   [CLink]
	   public static extern XrResult xrLocateSceneComponentsMSFT(XrSceneMSFT scene, XrSceneComponentsLocateInfoMSFT* locateInfo, XrSceneComponentLocationsMSFT* locations);
	   [CLink]
	   public static extern XrResult xrGetSceneMeshBuffersMSFT(XrSceneMSFT scene, XrSceneMeshBuffersGetInfoMSFT* getInfo, XrSceneMeshBuffersMSFT* buffers);
		   public const int XR_MSFT_scene_understanding_SPEC_VERSION = 1;
		   public const String XR_MSFT_SCENE_UNDERSTANDING_EXTENSION_NAME = "XR_MSFT_scene_understanding";
	 
	   }
#endif
#if XR_MSFT_scene_understanding_serialization

	   [CRepr]
	   public struct XrSerializedSceneFragmentDataGetInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SERIALIZED_SCENE_FRAGMENT_DATA_GET_INFO_MSFT,
		   void* next = null,
		   XrUuidMSFT sceneFragmentId = default);

	   [CRepr]
	   public struct XrDeserializeSceneFragmentMSFT : this(
		   uint32 bufferSize = default,
		   uint8* buffer = null);

	   [CRepr]
	   public struct XrSceneDeserializeInfoMSFT : this(
		   XrStructureType type = .XR_TYPE_SCENE_DESERIALIZE_INFO_MSFT,
		   void* next = null,
		   uint32 fragmentCount = default,
		   XrDeserializeSceneFragmentMSFT* fragments = null);
	   public function XrResult PFN_xrDeserializeSceneMSFT(XrSceneObserverMSFT sceneObserver, XrSceneDeserializeInfoMSFT* deserializeInfo);
	   public function XrResult PFN_xrGetSerializedSceneFragmentDataMSFT(XrSceneMSFT scene, XrSerializedSceneFragmentDataGetInfoMSFT* getInfo, uint32 countInput, uint32* readOutput, uint8* buffer);
	   extension XrStructureType
	   {
		   case XR_TYPE_SERIALIZED_SCENE_FRAGMENT_DATA_GET_INFO_MSFT = 1000098000;
		   case XR_TYPE_SCENE_DESERIALIZE_INFO_MSFT = 1000098001;
	   }
	   extension XrSceneComputeFeatureMSFT
	   {
		   case XR_SCENE_COMPUTE_FEATURE_SERIALIZE_SCENE_MSFT = 1000098000;
	   }
	   extension XrSceneComponentTypeMSFT
	   {
		   case XR_SCENE_COMPONENT_TYPE_SERIALIZED_SCENE_FRAGMENT_MSFT = 1000098000;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrDeserializeSceneMSFT(XrSceneObserverMSFT sceneObserver, XrSceneDeserializeInfoMSFT* deserializeInfo);
	   [CLink]
	   public static extern XrResult xrGetSerializedSceneFragmentDataMSFT(XrSceneMSFT scene, XrSerializedSceneFragmentDataGetInfoMSFT* getInfo, uint32 countInput, uint32* readOutput, uint8* buffer);
		   public const int XR_MSFT_scene_understanding_serialization_SPEC_VERSION = 1;
		   public const String XR_MSFT_SCENE_UNDERSTANDING_SERIALIZATION_EXTENSION_NAME = "XR_MSFT_scene_understanding_serialization";
	 
	   }
#endif
#if XR_FB_display_refresh_rate

	   [CRepr]
	   public struct XrEventDataDisplayRefreshRateChangedFB : this(
		   XrStructureType type = .XR_TYPE_EVENT_DATA_DISPLAY_REFRESH_RATE_CHANGED_FB,
		   void* next = null,
		   float fromDisplayRefreshRate = default,
		   float toDisplayRefreshRate = default);
	   public function XrResult PFN_xrEnumerateDisplayRefreshRatesFB(XrSession session, uint32 displayRefreshRateCapacityInput, uint32* displayRefreshRateCountOutput, float* displayRefreshRates);
	   public function XrResult PFN_xrGetDisplayRefreshRateFB(XrSession session, float* displayRefreshRate);
	   public function XrResult PFN_xrRequestDisplayRefreshRateFB(XrSession session, float displayRefreshRate);
	   extension XrStructureType
	   {
		   case XR_TYPE_EVENT_DATA_DISPLAY_REFRESH_RATE_CHANGED_FB = 1000101000;
	   }
	   extension XrResult
	   {
		   case XR_ERROR_DISPLAY_REFRESH_RATE_UNSUPPORTED_FB = -1000101000;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrEnumerateDisplayRefreshRatesFB(XrSession session, uint32 displayRefreshRateCapacityInput, uint32* displayRefreshRateCountOutput, float* displayRefreshRates);
	   [CLink]
	   public static extern XrResult xrGetDisplayRefreshRateFB(XrSession session, float* displayRefreshRate);
	   [CLink]
	   public static extern XrResult xrRequestDisplayRefreshRateFB(XrSession session, float displayRefreshRate);
		   public const int XR_FB_display_refresh_rate_SPEC_VERSION = 1;
		   public const String XR_FB_DISPLAY_REFRESH_RATE_EXTENSION_NAME = "XR_FB_display_refresh_rate";
	 
	   }
#endif
#if XR_HTC_vive_cosmos_controller_interaction

	   public static 
	   {
			public const int XR_HTC_vive_cosmos_controller_interaction_SPEC_VERSION = 1;
		   public const String XR_HTC_VIVE_COSMOS_CONTROLLER_INTERACTION_EXTENSION_NAME = "XR_HTC_vive_cosmos_controller_interaction";
	 
	   }
#endif
#if XR_FB_color_space

	   [CRepr]
	   public struct XrSystemColorSpacePropertiesFB : this(
		   XrStructureType type = .XR_TYPE_SYSTEM_COLOR_SPACE_PROPERTIES_FB,
		   void* next = null,
		   XrColorSpaceFB colorSpace = default);
	   public function XrResult PFN_xrEnumerateColorSpacesFB(XrSession session, uint32 colorSpaceCapacityInput, uint32* colorSpaceCountOutput, XrColorSpaceFB* colorSpaces);
	   public function XrResult PFN_xrSetColorSpaceFB(XrSession session, XrColorSpaceFB colorspace);
	   extension XrStructureType
	   {
		   case XR_TYPE_SYSTEM_COLOR_SPACE_PROPERTIES_FB = 1000108000;
	   }
	   extension XrResult
	   {
		   case XR_ERROR_COLOR_SPACE_UNSUPPORTED_FB = -1000108000;
	   }

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrEnumerateColorSpacesFB(XrSession session, uint32 colorSpaceCapacityInput, uint32* colorSpaceCountOutput, XrColorSpaceFB* colorSpaces);
	   [CLink]
	   public static extern XrResult xrSetColorSpaceFB(XrSession session, XrColorSpaceFB colorspace);
		   public const int XR_FB_color_space_SPEC_VERSION = 1;
		   public const String XR_FB_COLOR_SPACE_EXTENSION_NAME = "XR_FB_color_space";
	 
	   }
#endif
#if XR_KHR_binding_modification

	   [CRepr]
	   public struct XrBindingModificationsKHR : this(
		   XrStructureType type = .XR_TYPE_BINDING_MODIFICATIONS_KHR,
		   void* next = null,
		   uint32 bindingModificationCount = default,
		   XrBindingModificationBaseHeaderKHR** bindingModifications = null);

	   [CRepr]
	   public struct XrBindingModificationBaseHeaderKHR : this(
		   XrStructureType type = default,
		   void* next = null);
	   extension XrStructureType
	   {
		   case XR_TYPE_BINDING_MODIFICATIONS_KHR = 1000120000;
	   }

	   public static 
	   {
			public const int XR_KHR_binding_modification_SPEC_VERSION = 1;
		   public const String XR_KHR_BINDING_MODIFICATION_EXTENSION_NAME = "XR_KHR_binding_modification";
	 
	   }
#endif
#if XR_VARJO_foveated_rendering

	   [CRepr]
	   public struct XrViewLocateFoveatedRenderingVARJO : this(
		   XrStructureType type = .XR_TYPE_VIEW_LOCATE_FOVEATED_RENDERING_VARJO,
		   void* next = null,
		   XrBool32 foveatedRenderingActive = default);

	   [CRepr]
	   public struct XrFoveatedViewConfigurationViewVARJO : this(
		   XrStructureType type = .XR_TYPE_FOVEATED_VIEW_CONFIGURATION_VIEW_VARJO,
		   void* next = null,
		   XrBool32 foveatedRenderingActive = default);

	   [CRepr]
	   public struct XrSystemFoveatedRenderingPropertiesVARJO : this(
		   XrStructureType type = .XR_TYPE_SYSTEM_FOVEATED_RENDERING_PROPERTIES_VARJO,
		   void* next = null,
		   XrBool32 supportsFoveatedRendering = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_VIEW_LOCATE_FOVEATED_RENDERING_VARJO = 1000121000;
		   case XR_TYPE_FOVEATED_VIEW_CONFIGURATION_VIEW_VARJO = 1000121001;
		   case XR_TYPE_SYSTEM_FOVEATED_RENDERING_PROPERTIES_VARJO = 1000121002;
	   }
	   extension XrReferenceSpaceType
	   {
		   case XR_REFERENCE_SPACE_TYPE_COMBINED_EYE_VARJO = 1000121000;
	   }

	   public static 
	   {
			public const int XR_VARJO_foveated_rendering_SPEC_VERSION = 1;
		   public const String XR_VARJO_FOVEATED_RENDERING_EXTENSION_NAME = "XR_VARJO_foveated_rendering";
	 
	   }
#endif
#if XR_VARJO_composition_layer_depth_test

	   [CRepr]
	   public struct XrCompositionLayerDepthTestVARJO : this(
		   XrStructureType type = .XR_TYPE_COMPOSITION_LAYER_DEPTH_TEST_VARJO,
		   void* next = null,
		   float depthTestRangeNearZ = default,
		   float depthTestRangeFarZ = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_COMPOSITION_LAYER_DEPTH_TEST_VARJO = 1000122000;
	   }

	   public static 
	   {
			public const int XR_VARJO_composition_layer_depth_test_SPEC_VERSION = 1;
		   public const String XR_VARJO_COMPOSITION_LAYER_DEPTH_TEST_EXTENSION_NAME = "XR_VARJO_composition_layer_depth_test";
	 
	   }
#endif
#if XR_VARJO_environment_depth_estimation
	   public function XrResult PFN_xrSetEnvironmentDepthEstimationVARJO(XrSession session, XrBool32 enabled);

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrSetEnvironmentDepthEstimationVARJO(XrSession session, XrBool32 enabled);
		   public const int XR_VARJO_environment_depth_estimation_SPEC_VERSION = 1;
		   public const String XR_VARJO_ENVIRONMENT_DEPTH_ESTIMATION_EXTENSION_NAME = "XR_VARJO_environment_depth_estimation";
	 
	   }
#endif
#if XR_OCULUS_audio_device_guid
	   public function XrResult PFN_xrGetAudioOutputDeviceGuidOculus(XrInstance instance, c_wchar[OpenXR.XR_MAX_AUDIO_DEVICE_STR_SIZE_OCULUS] buffer);
	   public function XrResult PFN_xrGetAudioInputDeviceGuidOculus(XrInstance instance, c_wchar[OpenXR.XR_MAX_AUDIO_DEVICE_STR_SIZE_OCULUS] buffer);

	   public static 
	   {
		[CLink]
	   public static extern XrResult xrGetAudioOutputDeviceGuidOculus(XrInstance instance, c_wchar[OpenXR.XR_MAX_AUDIO_DEVICE_STR_SIZE_OCULUS] buffer);
	   [CLink]
	   public static extern XrResult xrGetAudioInputDeviceGuidOculus(XrInstance instance, c_wchar[OpenXR.XR_MAX_AUDIO_DEVICE_STR_SIZE_OCULUS] buffer);
		   public const int XR_OCULUS_audio_device_guid_SPEC_VERSION = 1;
		   public const String XR_OCULUS_AUDIO_DEVICE_GUID_EXTENSION_NAME = "XR_OCULUS_audio_device_guid";
		   public const int XR_MAX_AUDIO_DEVICE_STR_SIZE_OCULUS = 128;
	 
	   }
#endif
#if XR_FB_swapchain_update_state_android_surface

	   [CRepr]
	   public struct XrSwapchainStateAndroidSurfaceDimensionsFB : this(
		   XrStructureType type = .XR_TYPE_SWAPCHAIN_STATE_ANDROID_SURFACE_DIMENSIONS_FB,
		   void* next = null,
		   uint32 width = default,
		   uint32 height = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_SWAPCHAIN_STATE_ANDROID_SURFACE_DIMENSIONS_FB = 1000161000;
	   }

	   public static 
	   {
			public const int XR_FB_swapchain_update_state_android_surface_SPEC_VERSION = 1;
		   public const String XR_FB_SWAPCHAIN_UPDATE_STATE_ANDROID_SURFACE_EXTENSION_NAME = "XR_FB_swapchain_update_state_android_surface";
	 
	   }
#endif
#if XR_FB_swapchain_update_state_opengl_es

	   [CRepr]
	   public struct XrSwapchainStateSamplerOpenGLESFB : this(
		   XrStructureType type = .XR_TYPE_SWAPCHAIN_STATE_SAMPLER_OPENGL_ES_FB,
		   void* next = null,
		   EGLenum minFilter = default,
		   EGLenum magFilter = default,
		   EGLenum wrapModeS = default,
		   EGLenum wrapModeT = default,
		   EGLenum swizzleRed = default,
		   EGLenum swizzleGreen = default,
		   EGLenum swizzleBlue = default,
		   EGLenum swizzleAlpha = default,
		   float maxAnisotropy = default,
		   XrColor4f borderColor = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_SWAPCHAIN_STATE_SAMPLER_OPENGL_ES_FB = 1000162000;
	   }

	   public static 
	   {
			public const int XR_FB_swapchain_update_state_opengl_es_SPEC_VERSION = 1;
		   public const String XR_FB_SWAPCHAIN_UPDATE_STATE_OPENGL_ES_EXTENSION_NAME = "XR_FB_swapchain_update_state_opengl_es";
	 
	   }
#endif
#if XR_FB_swapchain_update_state_vulkan

	   [CRepr]
	   public struct XrSwapchainStateSamplerVulkanFB : this(
		   XrStructureType type = .XR_TYPE_SWAPCHAIN_STATE_SAMPLER_VULKAN_FB,
		   void* next = null,
		   VkFilter minFilter = default,
		   VkFilter magFilter = default,
		   VkSamplerMipmapMode mipmapMode = default,
		   VkSamplerAddressMode wrapModeS = default,
		   VkSamplerAddressMode wrapModeT = default,
		   VkComponentSwizzle swizzleRed = default,
		   VkComponentSwizzle swizzleGreen = default,
		   VkComponentSwizzle swizzleBlue = default,
		   VkComponentSwizzle swizzleAlpha = default,
		   float maxAnisotropy = default,
		   XrColor4f borderColor = default);
	   extension XrStructureType
	   {
		   case XR_TYPE_SWAPCHAIN_STATE_SAMPLER_VULKAN_FB = 1000163000;
	   }

	   public static 
	   {
			public const int XR_FB_swapchain_update_state_vulkan_SPEC_VERSION = 1;
		   public const String XR_FB_SWAPCHAIN_UPDATE_STATE_VULKAN_EXTENSION_NAME = "XR_FB_swapchain_update_state_vulkan";
	 
	   }
#endif
}