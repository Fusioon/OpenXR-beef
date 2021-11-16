using System;
using System.Interop;

namespace OpenXR
{
	/* android/native_window.h */
	// public typealias ANativeWindow = int;
	/* jni.h */
	public struct jobject;
	/* CL/cl_gl_ext.h */
	// public typealias CGLContextObj = int;
	/* d3dcommon.h */
	public typealias D3D_FEATURE_LEVEL = int;// @REPLACE
	/* D3D11.h */
	public struct ID3D11Device;
	/* D3D11.h */
	public struct ID3D11Texture2D;
	/* D3D12.h */
	public struct ID3D12CommandQueue;
	/* D3D12.h */
	public struct ID3D12Device;
	/* D3D12.h */
	public struct ID3D12Resource;
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
	public struct IUnknown;
	/* wayland-client.h */
	public struct wl_display;
	/* windows.h */
	public typealias HDC = int;// @REPLACE
	/* windows.h */
	public typealias LUID = int;// @REPLACE
	/* windows.h */
	public struct LARGE_INTEGER;
	/* X11/Xlib.h */
	public struct Display;
	/* X11/Xlib.h */
	// public typealias VisualID = int;
	/* X11/Xlib.h */
	// public typealias Window = int;
	/* xcb/glx.h */
	public typealias xcb_glx_fbconfig_t = int;// @REPLACE
	/* xcb/glx.h */
	public typealias xcb_glx_drawable_t = int;// @REPLACE
	/* xcb/glx.h */
	public typealias xcb_glx_context_t = int;// @REPLACE
	/* xcb/xcb.h */
	public struct xcb_connection_t;
	/* xcb/xcb.h */
	public typealias xcb_visualid_t = int;// @REPLACE
	/* xcb/xcb.h */
	// public typealias xcb_window_t = int;
	/* vulkan/vulkan.h */
	public typealias PFN_vkGetInstanceProcAddr = int;// @REPLACE
	/* vulkan/vulkan.h */
	public struct VkAllocationCallbacks;
	/* vulkan/vulkan.h */
	public typealias VkComponentSwizzle = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkDevice = int;// @REPLACE
	/* vulkan/vulkan.h */
	public struct VkDeviceCreateInfo;
	/* vulkan/vulkan.h */
	public typealias VkFilter = int;// @REPLACE
	/* vulkan/vulkan.h */
	public struct VkFormat;
	/* vulkan/vulkan.h */
	public typealias VkImage = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkInstance = int;// @REPLACE
	/* vulkan/vulkan.h */
	public struct VkInstanceCreateInfo;
	/* vulkan/vulkan.h */
	public typealias VkPhysicalDevice = int;// @REPLACE
	/* vulkan/vulkan.h */
	public struct VkResult;
	/* vulkan/vulkan.h */
	public typealias VkSamplerAddressMode = int;// @REPLACE
	/* vulkan/vulkan.h */
	public typealias VkSamplerMipmapMode = int;// @REPLACE
	/* time.h */
	public struct timespec;
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
	public typealias XrInstanceCreateFlags = XrInstanceCreateFlagBits;// @REPLACE
	public enum XrSessionCreateFlagBits : XrFlags64
	{
	}
	public typealias XrSessionCreateFlags = XrSessionCreateFlagBits;// @REPLACE
	public enum XrSwapchainCreateFlagBits : XrFlags64
	{
		/* Content will be protected from CPU access */
		XR_SWAPCHAIN_CREATE_PROTECTED_CONTENT_BIT = (1 << 0),
		/* Only one image will be acquired from this swapchain over its lifetime */
		XR_SWAPCHAIN_CREATE_STATIC_IMAGE_BIT = (1 << 1),
	}
	public typealias XrSwapchainCreateFlags = XrSwapchainCreateFlagBits;// @REPLACE
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
	public typealias XrSwapchainUsageFlags = XrSwapchainUsageFlagBits;// @REPLACE
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
	public typealias XrViewStateFlags = XrViewStateFlagBits;// @REPLACE
	public enum XrCompositionLayerFlagBits : XrFlags64
	{
		/* Enables chromatic aberration correction when not done by default. */
		XR_COMPOSITION_LAYER_CORRECT_CHROMATIC_ABERRATION_BIT = (1 << 0),
		/* Enables the layer texture alpha channel. */
		XR_COMPOSITION_LAYER_BLEND_TEXTURE_SOURCE_ALPHA_BIT = (1 << 1),
		/* Indicates the texture color channels have not been premultiplied by the texture alpha channel. */
		XR_COMPOSITION_LAYER_UNPREMULTIPLIED_ALPHA_BIT = (1 << 2),
	}
	public typealias XrCompositionLayerFlags = XrCompositionLayerFlagBits;// @REPLACE
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
	public typealias XrSpaceLocationFlags = XrSpaceLocationFlagBits;// @REPLACE
	public enum XrSpaceVelocityFlagBits : XrFlags64
	{
		/* Indicates that the pname:linearVelocity member contains valid data */
		XR_SPACE_VELOCITY_LINEAR_VALID_BIT = (1 << 0),
		/* Indicates that the pname:angularVelocity member contains valid data */
		XR_SPACE_VELOCITY_ANGULAR_VALID_BIT = (1 << 1),
	}
	public typealias XrSpaceVelocityFlags = XrSpaceVelocityFlagBits;// @REPLACE
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
	public typealias XrInputSourceLocalizedNameFlags = XrInputSourceLocalizedNameFlagBits;// @REPLACE
	public enum XrVulkanInstanceCreateFlagBitsKHR : XrFlags64
	{
	}
	public typealias XrVulkanInstanceCreateFlagsKHR = XrVulkanInstanceCreateFlagBitsKHR;// @REPLACE
	public enum XrVulkanDeviceCreateFlagBitsKHR : XrFlags64
	{
	}
	public typealias XrVulkanDeviceCreateFlagsKHR = XrVulkanDeviceCreateFlagBitsKHR;// @REPLACE
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
	public typealias XrDebugUtilsMessageSeverityFlagsEXT = XrDebugUtilsMessageSeverityFlagBitsEXT;// @REPLACE
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
	public typealias XrDebugUtilsMessageTypeFlagsEXT = XrDebugUtilsMessageTypeFlagBitsEXT;// @REPLACE
	public enum XrOverlayMainSessionFlagBitsEXTX : XrFlags64
	{
		/* Indicates the main session enabled `XR_KHR_composition_layer_depth` */
		XR_OVERLAY_MAIN_SESSION_ENABLED_COMPOSITION_LAYER_INFO_DEPTH_BIT_EXTX = (1 << 0),
	}
	public typealias XrOverlayMainSessionFlagsEXTX = XrOverlayMainSessionFlagBitsEXTX;// @REPLACE
	public enum XrOverlaySessionCreateFlagBitsEXTX : XrFlags64
	{
	}
	public typealias XrOverlaySessionCreateFlagsEXTX = XrOverlaySessionCreateFlagBitsEXTX;// @REPLACE
	public enum XrAndroidSurfaceSwapchainFlagBitsFB : XrFlags64
	{
		/* Create the underlying BufferQueue in synchronous mode */
		XR_ANDROID_SURFACE_SWAPCHAIN_SYNCHRONOUS_BIT_FB = (1 << 0),
		/* Acquire most recent buffer whose presentation timestamp is not greater than display time of final composited
		frame */
		XR_ANDROID_SURFACE_SWAPCHAIN_USE_TIMESTAMPS_BIT_FB = (1 << 1),
	}
	public typealias XrAndroidSurfaceSwapchainFlagsFB = XrAndroidSurfaceSwapchainFlagBitsFB;// @REPLACE
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
		float x,
		float y);
	[CRepr]
	public struct XrVector3f : this(
		float x,
		float y,
		float z);
	[CRepr]
	public struct XrVector4f : this(
		float x,
		float y,
		float z,
		float w);
	[CRepr]
	public struct XrColor4f : this(
		float r,
		float g,
		float b,
		float a);
	[CRepr]
	public struct XrQuaternionf : this(
		float x,
		float y,
		float z,
		float w);
	[CRepr]
	public struct XrPosef : this(
		XrQuaternionf orientation,
		XrVector3f position);
	[CRepr]
	public struct XrOffset2Df : this(
		float x,
		float y);
	[CRepr]
	public struct XrExtent2Df : this(
		float width,
		float height);
	[CRepr]
	public struct XrRect2Df : this(
		XrOffset2Df offset,
		XrExtent2Df extent);
	[CRepr]
	public struct XrOffset2Di : this(
		int32 x,
		int32 y);
	[CRepr]
	public struct XrExtent2Di : this(
		int32 width,
		int32 height);
	[CRepr]
	public struct XrRect2Di : this(
		XrOffset2Di offset,
		XrExtent2Di extent);
	[CRepr]
	public struct XrBaseInStructure : this(
		XrStructureType type,
		XrBaseInStructure* next);
	[CRepr]
	public struct XrBaseOutStructure : this(
		XrStructureType type,
		XrBaseOutStructure* next);
	[CRepr]
	public struct XrApiLayerProperties : this(
		XrStructureType type,
		void* next,
		c_char layerName,
		XrVersion specVersion,
		uint32 layerVersion,
		c_char description);
	[CRepr]
	public struct XrExtensionProperties : this(
		XrStructureType type,
		void* next,
		c_char extensionName,
		uint32 extensionVersion);
	[CRepr]
	public struct XrApplicationInfo : this(
		c_char applicationName,
		uint32 applicationVersion,
		c_char engineName,
		uint32 engineVersion,
		XrVersion apiVersion);
	[CRepr]
	public struct XrInstanceCreateInfo : this(
		XrStructureType type,
		void* next,
		XrInstanceCreateFlags createFlags,
		XrApplicationInfo applicationInfo,
		uint32 enabledApiLayerCount,
		c_char** enabledApiLayerNames,
		uint32 enabledExtensionCount,
		c_char** enabledExtensionNames);
	[CRepr]
	public struct XrInstanceProperties : this(
		XrStructureType type,
		void* next,
		XrVersion runtimeVersion,
		c_char runtimeName);
	[CRepr]
	public struct XrSystemGetInfo : this(
		XrStructureType type,
		void* next,
		XrFormFactor formFactor);
	[CRepr]
	public struct XrSystemProperties : this(
		XrStructureType type,
		void* next,
		XrSystemId systemId,
		uint32 vendorId,
		c_char systemName,
		XrSystemGraphicsProperties graphicsProperties,
		XrSystemTrackingProperties trackingProperties);
	[CRepr]
	public struct XrSystemGraphicsProperties : this(
		uint32 maxSwapchainImageHeight,
		uint32 maxSwapchainImageWidth,
		uint32 maxLayerCount);
	[CRepr]
	public struct XrSystemTrackingProperties : this(
		XrBool32 orientationTracking,
		XrBool32 positionTracking);
	[CRepr]
	public struct XrGraphicsBindingOpenGLWin32KHR : this(
		XrStructureType type,
		void* next,
		HDC hDC,
		HGLRC hGLRC);
	[CRepr]
	public struct XrGraphicsBindingOpenGLXlibKHR : this(
		XrStructureType type,
		void* next,
		Display* xDisplay,
		uint32 visualid,
		GLXFBConfig glxFBConfig,
		GLXDrawable glxDrawable,
		GLXContext glxContext);
	[CRepr]
	public struct XrGraphicsBindingOpenGLXcbKHR : this(
		XrStructureType type,
		void* next,
		xcb_connection_t* connection,
		uint32 screenNumber,
		xcb_glx_fbconfig_t fbconfigid,
		xcb_visualid_t visualid,
		xcb_glx_drawable_t glxDrawable,
		xcb_glx_context_t glxContext);
	[CRepr]
	public struct XrGraphicsBindingOpenGLWaylandKHR : this(
		XrStructureType type,
		void* next,
		wl_display* display);
	[CRepr]
	public struct XrGraphicsBindingD3D11KHR : this(
		XrStructureType type,
		void* next,
		ID3D11Device* device);
	[CRepr]
	public struct XrGraphicsBindingD3D12KHR : this(
		XrStructureType type,
		void* next,
		ID3D12Device* device,
		ID3D12CommandQueue* queue);
	[CRepr]
	public struct XrGraphicsBindingOpenGLESAndroidKHR : this(
		XrStructureType type,
		void* next,
		EGLDisplay display,
		EGLConfig config,
		EGLContext context);
	[CRepr]
	public struct XrGraphicsBindingVulkanKHR : this(
		XrStructureType type,
		void* next,
		VkInstance instance,
		VkPhysicalDevice physicalDevice,
		VkDevice device,
		uint32 queueFamilyIndex,
		uint32 queueIndex);
	[CRepr]
	public struct XrSessionCreateInfo : this(
		XrStructureType type,
		void* next,
		XrSessionCreateFlags createFlags,
		XrSystemId systemId);
	[CRepr]
	public struct XrSessionBeginInfo : this(
		XrStructureType type,
		void* next,
		XrViewConfigurationType primaryViewConfigurationType);
	[CRepr]
	public struct XrSwapchainCreateInfo : this(
		XrStructureType type,
		void* next,
		XrSwapchainCreateFlags createFlags,
		XrSwapchainUsageFlags usageFlags,
		int64 format,
		uint32 sampleCount,
		uint32 width,
		uint32 height,
		uint32 faceCount,
		uint32 arraySize,
		uint32 mipCount);
	[CRepr]
	public struct XrSwapchainImageBaseHeader : this(
		XrStructureType type,
		void* next);
	[CRepr]
	public struct XrSwapchainImageOpenGLKHR : this(
		XrStructureType type,
		void* next,
		uint32 image);
	[CRepr]
	public struct XrSwapchainImageOpenGLESKHR : this(
		XrStructureType type,
		void* next,
		uint32 image);
	[CRepr]
	public struct XrSwapchainImageVulkanKHR : this(
		XrStructureType type,
		void* next,
		VkImage image);
	[CRepr]
	public struct XrSwapchainImageD3D11KHR : this(
		XrStructureType type,
		void* next,
		ID3D11Texture2D* texture);
	[CRepr]
	public struct XrSwapchainImageD3D12KHR : this(
		XrStructureType type,
		void* next,
		ID3D12Resource* texture);
	[CRepr]
	public struct XrSwapchainImageAcquireInfo : this(
		XrStructureType type,
		void* next);
	[CRepr]
	public struct XrSwapchainImageWaitInfo : this(
		XrStructureType type,
		void* next,
		XrDuration timeout);
	[CRepr]
	public struct XrSwapchainImageReleaseInfo : this(
		XrStructureType type,
		void* next);
	[CRepr]
	public struct XrReferenceSpaceCreateInfo : this(
		XrStructureType type,
		void* next,
		XrReferenceSpaceType referenceSpaceType,
		XrPosef poseInReferenceSpace);
	[CRepr]
	public struct XrActionSpaceCreateInfo : this(
		XrStructureType type,
		void* next,
		XrAction action,
		XrPath subactionPath,
		XrPosef poseInActionSpace);
	[CRepr]
	public struct XrSpaceLocation : this(
		XrStructureType type,
		void* next,
		XrSpaceLocationFlags locationFlags,
		XrPosef pose);
	[CRepr]
	public struct XrSpaceVelocity : this(
		XrStructureType type,
		void* next,
		XrSpaceVelocityFlags velocityFlags,
		XrVector3f linearVelocity,
		XrVector3f angularVelocity);
	[CRepr]
	public struct XrFovf : this(
		float angleLeft,
		float angleRight,
		float angleUp,
		float angleDown);
	[CRepr]
	public struct XrView : this(
		XrStructureType type,
		void* next,
		XrPosef pose,
		XrFovf fov);
	[CRepr]
	public struct XrViewLocateInfo : this(
		XrStructureType type,
		void* next,
		XrViewConfigurationType viewConfigurationType,
		XrTime displayTime,
		XrSpace space);
	[CRepr]
	public struct XrViewState : this(
		XrStructureType type,
		void* next,
		XrViewStateFlags viewStateFlags);
	[CRepr]
	public struct XrViewConfigurationView : this(
		XrStructureType type,
		void* next,
		uint32 recommendedImageRectWidth,
		uint32 maxImageRectWidth,
		uint32 recommendedImageRectHeight,
		uint32 maxImageRectHeight,
		uint32 recommendedSwapchainSampleCount,
		uint32 maxSwapchainSampleCount);
	[CRepr]
	public struct XrSwapchainSubImage : this(
		XrSwapchain swapchain,
		XrRect2Di imageRect,
		uint32 imageArrayIndex);
	[CRepr]
	public struct XrCompositionLayerBaseHeader : this(
		XrStructureType type,
		void* next,
		XrCompositionLayerFlags layerFlags,
		XrSpace space);
	[CRepr]
	public struct XrCompositionLayerProjectionView : this(
		XrStructureType type,
		void* next,
		XrPosef pose,
		XrFovf fov,
		XrSwapchainSubImage subImage);
	[CRepr]
	public struct XrCompositionLayerProjection : this(
		XrStructureType type,
		void* next,
		XrCompositionLayerFlags layerFlags,
		XrSpace space,
		uint32 viewCount,
		XrCompositionLayerProjectionView* views);
	[CRepr]
	public struct XrCompositionLayerQuad : this(
		XrStructureType type,
		void* next,
		XrCompositionLayerFlags layerFlags,
		XrSpace space,
		XrEyeVisibility eyeVisibility,
		XrSwapchainSubImage subImage,
		XrPosef pose,
		XrExtent2Df size);
	[CRepr]
	public struct XrCompositionLayerCylinderKHR : this(
		XrStructureType type,
		void* next,
		XrCompositionLayerFlags layerFlags,
		XrSpace space,
		XrEyeVisibility eyeVisibility,
		XrSwapchainSubImage subImage,
		XrPosef pose,
		float radius,
		float centralAngle,
		float aspectRatio);
	[CRepr]
	public struct XrCompositionLayerCubeKHR : this(
		XrStructureType type,
		void* next,
		XrCompositionLayerFlags layerFlags,
		XrSpace space,
		XrEyeVisibility eyeVisibility,
		XrSwapchain swapchain,
		uint32 imageArrayIndex,
		XrQuaternionf orientation);
	[CRepr]
	public struct XrCompositionLayerEquirectKHR : this(
		XrStructureType type,
		void* next,
		XrCompositionLayerFlags layerFlags,
		XrSpace space,
		XrEyeVisibility eyeVisibility,
		XrSwapchainSubImage subImage,
		XrPosef pose,
		float radius,
		XrVector2f scale,
		XrVector2f bias);
	[CRepr]
	public struct XrCompositionLayerDepthInfoKHR : this(
		XrStructureType type,
		void* next,
		XrSwapchainSubImage subImage,
		float minDepth,
		float maxDepth,
		float nearZ,
		float farZ);
	[CRepr]
	public struct XrFrameBeginInfo : this(
		XrStructureType type,
		void* next);
	[CRepr]
	public struct XrFrameEndInfo : this(
		XrStructureType type,
		void* next,
		XrTime displayTime,
		XrEnvironmentBlendMode environmentBlendMode,
		uint32 layerCount,
		XrCompositionLayerBaseHeader** layers);
	[CRepr]
	public struct XrFrameWaitInfo : this(
		XrStructureType type,
		void* next);
	[CRepr]
	public struct XrFrameState : this(
		XrStructureType type,
		void* next,
		XrTime predictedDisplayTime,
		XrDuration predictedDisplayPeriod,
		XrBool32 shouldRender);
	[CRepr]
	public struct XrHapticBaseHeader : this(
		XrStructureType type,
		void* next);
	[CRepr]
	public struct XrHapticVibration : this(
		XrStructureType type,
		void* next,
		XrDuration duration,
		float frequency,
		float amplitude);
	[CRepr]
	public struct XrEventDataBaseHeader : this(
		XrStructureType type,
		void* next);
	[CRepr]
	public struct XrEventDataBuffer : this(
		XrStructureType type,
		void* next,
		uint8 varying);
	[CRepr]
	public struct XrEventDataEventsLost : this(
		XrStructureType type,
		void* next,
		uint32 lostEventCount);
	[CRepr]
	public struct XrEventDataInstanceLossPending : this(
		XrStructureType type,
		void* next,
		XrTime lossTime);
	[CRepr]
	public struct XrEventDataSessionStateChanged : this(
		XrStructureType type,
		void* next,
		XrSession session,
		XrSessionState state,
		XrTime time);
	[CRepr]
	public struct XrEventDataReferenceSpaceChangePending : this(
		XrStructureType type,
		void* next,
		XrSession session,
		XrReferenceSpaceType referenceSpaceType,
		XrTime changeTime,
		XrBool32 poseValid,
		XrPosef poseInPreviousSpace);
	[CRepr]
	public struct XrEventDataPerfSettingsEXT : this(
		XrStructureType type,
		void* next,
		XrPerfSettingsDomainEXT domain,
		XrPerfSettingsSubDomainEXT subDomain,
		XrPerfSettingsNotificationLevelEXT fromLevel,
		XrPerfSettingsNotificationLevelEXT toLevel);
	[CRepr]
	public struct XrEventDataVisibilityMaskChangedKHR : this(
		XrStructureType type,
		void* next,
		XrSession session,
		XrViewConfigurationType viewConfigurationType,
		uint32 viewIndex);
	[CRepr]
	public struct XrViewConfigurationProperties : this(
		XrStructureType type,
		void* next,
		XrViewConfigurationType viewConfigurationType,
		XrBool32 fovMutable);
	[CRepr]
	public struct XrActionStateBoolean : this(
		XrStructureType type,
		void* next,
		XrBool32 currentState,
		XrBool32 changedSinceLastSync,
		XrTime lastChangeTime,
		XrBool32 isActive);
	[CRepr]
	public struct XrActionStateFloat : this(
		XrStructureType type,
		void* next,
		float currentState,
		XrBool32 changedSinceLastSync,
		XrTime lastChangeTime,
		XrBool32 isActive);
	[CRepr]
	public struct XrActionStateVector2f : this(
		XrStructureType type,
		void* next,
		XrVector2f currentState,
		XrBool32 changedSinceLastSync,
		XrTime lastChangeTime,
		XrBool32 isActive);
	[CRepr]
	public struct XrActionStatePose : this(
		XrStructureType type,
		void* next,
		XrBool32 isActive);
	[CRepr]
	public struct XrActionStateGetInfo : this(
		XrStructureType type,
		void* next,
		XrAction action,
		XrPath subactionPath);
	[CRepr]
	public struct XrHapticActionInfo : this(
		XrStructureType type,
		void* next,
		XrAction action,
		XrPath subactionPath);
	[CRepr]
	public struct XrActionSetCreateInfo : this(
		XrStructureType type,
		void* next,
		c_char actionSetName,
		c_char localizedActionSetName,
		uint32 priority);
	[CRepr]
	public struct XrActionSuggestedBinding : this(
		XrAction action,
		XrPath binding);
	[CRepr]
	public struct XrInteractionProfileSuggestedBinding : this(
		XrStructureType type,
		void* next,
		XrPath interactionProfile,
		uint32 countSuggestedBindings,
		XrActionSuggestedBinding* suggestedBindings);
	[CRepr]
	public struct XrActiveActionSet : this(
		XrActionSet actionSet,
		XrPath subactionPath);
	[CRepr]
	public struct XrSessionActionSetsAttachInfo : this(
		XrStructureType type,
		void* next,
		uint32 countActionSets,
		XrActionSet* actionSets);
	[CRepr]
	public struct XrActionsSyncInfo : this(
		XrStructureType type,
		void* next,
		uint32 countActiveActionSets,
		XrActiveActionSet* activeActionSets);
	[CRepr]
	public struct XrBoundSourcesForActionEnumerateInfo : this(
		XrStructureType type,
		void* next,
		XrAction action);
	[CRepr]
	public struct XrInputSourceLocalizedNameGetInfo : this(
		XrStructureType type,
		void* next,
		XrPath sourcePath,
		XrInputSourceLocalizedNameFlags whichComponents);
	[CRepr]
	public struct XrEventDataInteractionProfileChanged : this(
		XrStructureType type,
		void* next,
		XrSession session);
	[CRepr]
	public struct XrInteractionProfileState : this(
		XrStructureType type,
		void* next,
		XrPath interactionProfile);
	[CRepr]
	public struct XrActionCreateInfo : this(
		XrStructureType type,
		void* next,
		c_char actionName,
		XrActionType actionType,
		uint32 countSubactionPaths,
		XrPath* subactionPaths,
		c_char localizedActionName);
	[CRepr]
	public struct XrInstanceCreateInfoAndroidKHR : this(
		XrStructureType type,
		void* next,
		void* applicationVM,
		void* applicationActivity);
	[CRepr]
	public struct XrVulkanSwapchainFormatListCreateInfoKHR : this(
		XrStructureType type,
		void* next,
		uint32 viewFormatCount,
		VkFormat* viewFormats);
	[CRepr]
	public struct XrDebugUtilsObjectNameInfoEXT : this(
		XrStructureType type,
		void* next,
		XrObjectType objectType,
		uint64 objectHandle,
		c_char* objectName);
	[CRepr]
	public struct XrDebugUtilsLabelEXT : this(
		XrStructureType type,
		void* next,
		c_char* labelName);
	[CRepr]
	public struct XrDebugUtilsMessengerCallbackDataEXT : this(
		XrStructureType type,
		void* next,
		c_char* messageId,
		c_char* functionName,
		c_char* message,
		uint32 objectCount,
		XrDebugUtilsObjectNameInfoEXT* objects,
		uint32 sessionLabelCount,
		XrDebugUtilsLabelEXT* sessionLabels);
	[CRepr]
	public struct XrDebugUtilsMessengerCreateInfoEXT : this(
		XrStructureType type,
		void* next,
		XrDebugUtilsMessageSeverityFlagsEXT messageSeverities,
		XrDebugUtilsMessageTypeFlagsEXT messageTypes,
		PFN_xrDebugUtilsMessengerCallbackEXT userCallback,
		void* userData);
	[CRepr]
	public struct XrVisibilityMaskKHR : this(
		XrStructureType type,
		void* next,
		uint32 vertexCapacityInput,
		uint32 vertexCountOutput,
		XrVector2f* vertices,
		uint32 indexCapacityInput,
		uint32 indexCountOutput,
		uint32* indices);
	[CRepr]
	public struct XrGraphicsRequirementsOpenGLKHR : this(
		XrStructureType type,
		void* next,
		XrVersion minApiVersionSupported,
		XrVersion maxApiVersionSupported);
	[CRepr]
	public struct XrGraphicsRequirementsOpenGLESKHR : this(
		XrStructureType type,
		void* next,
		XrVersion minApiVersionSupported,
		XrVersion maxApiVersionSupported);
	[CRepr]
	public struct XrGraphicsRequirementsVulkanKHR : this(
		XrStructureType type,
		void* next,
		XrVersion minApiVersionSupported,
		XrVersion maxApiVersionSupported);
	[CRepr]
	public struct XrGraphicsRequirementsD3D11KHR : this(
		XrStructureType type,
		void* next,
		LUID adapterLuid,
		D3D_FEATURE_LEVEL minFeatureLevel);
	[CRepr]
	public struct XrGraphicsRequirementsD3D12KHR : this(
		XrStructureType type,
		void* next,
		LUID adapterLuid,
		D3D_FEATURE_LEVEL minFeatureLevel);
	[CRepr]
	public struct XrVulkanInstanceCreateInfoKHR : this(
		XrStructureType type,
		void* next,
		XrSystemId systemId,
		XrVulkanInstanceCreateFlagsKHR createFlags,
		PFN_vkGetInstanceProcAddr pfnGetInstanceProcAddr,
		VkInstanceCreateInfo* vulkanCreateInfo,
		VkAllocationCallbacks* vulkanAllocator);
	[CRepr]
	public struct XrVulkanDeviceCreateInfoKHR : this(
		XrStructureType type,
		void* next,
		XrSystemId systemId,
		XrVulkanDeviceCreateFlagsKHR createFlags,
		PFN_vkGetInstanceProcAddr pfnGetInstanceProcAddr,
		VkPhysicalDevice vulkanPhysicalDevice,
		VkDeviceCreateInfo* vulkanCreateInfo,
		VkAllocationCallbacks* vulkanAllocator);
	public struct XrGraphicsBindingVulkan2KHR;
	[CRepr]
	public struct XrVulkanGraphicsDeviceGetInfoKHR : this(
		XrStructureType type,
		void* next,
		XrSystemId systemId,
		VkInstance vulkanInstance);
	public struct XrSwapchainImageVulkan2KHR;
	public struct XrGraphicsRequirementsVulkan2KHR;
	[CRepr]
	public struct XrSessionCreateInfoOverlayEXTX : this(
		XrStructureType type,
		void* next,
		XrOverlaySessionCreateFlagsEXTX createFlags,
		uint32 sessionLayersPlacement);
	[CRepr]
	public struct XrEventDataMainSessionVisibilityChangedEXTX : this(
		XrStructureType type,
		void* next,
		XrBool32 visible,
		XrOverlayMainSessionFlagsEXTX flags);
	[CRepr]
	public struct XrEventDataDisplayRefreshRateChangedFB : this(
		XrStructureType type,
		void* next,
		float fromDisplayRefreshRate,
		float toDisplayRefreshRate);
	[CRepr]
	public struct XrViewConfigurationDepthRangeEXT : this(
		XrStructureType type,
		void* next,
		float recommendedNearZ,
		float minNearZ,
		float recommendedFarZ,
		float maxFarZ);
	[CRepr]
	public struct XrViewConfigurationViewFovEPIC : this(
		XrStructureType type,
		void* next,
		XrFovf recommendedFov,
		XrFovf maxMutableFov);
	[CRepr]
	public struct XrInteractionProfileAnalogThresholdVALVE : this(
		XrStructureType type,
		void* next,
		XrAction action,
		XrPath binding,
		float onThreshold,
		float offThreshold,
		XrHapticBaseHeader* onHaptic,
		XrHapticBaseHeader* offHaptic);
	[CRepr]
	public struct XrBindingModificationsKHR : this(
		XrStructureType type,
		void* next,
		uint32 bindingModificationCount,
		XrBindingModificationBaseHeaderKHR** bindingModifications);
	[CRepr]
	public struct XrBindingModificationBaseHeaderKHR : this(
		XrStructureType type,
		void* next);
	public function void PFN_xrVoidFunction();
	public function XrBool32 PFN_xrDebugUtilsMessengerCallbackEXT(XrDebugUtilsMessageSeverityFlagsEXT messageSeverity, XrDebugUtilsMessageTypeFlagsEXT messageTypes, XrDebugUtilsMessengerCallbackDataEXT* callbackData, void* userData);
	[CRepr]
	public struct XrSystemEyeGazeInteractionPropertiesEXT : this(
		XrStructureType type,
		void* next,
		XrBool32 supportsEyeGazeInteraction);
	[CRepr]
	public struct XrEyeGazeSampleTimeEXT : this(
		XrStructureType type,
		void* next,
		XrTime time);
	[CRepr]
	public struct XrSpatialAnchorCreateInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrSpace space,
		XrPosef pose,
		XrTime time);
	[CRepr]
	public struct XrSpatialAnchorSpaceCreateInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrSpatialAnchorMSFT anchor,
		XrPosef poseInAnchorSpace);
	[CRepr]
	public struct XrGraphicsBindingEGLMNDX : this(
		XrStructureType type,
		void* next,
		PFNEGLGETPROCADDRESSPROC getProcAddress,
		EGLDisplay display,
		EGLConfig config,
		EGLContext context);
	[CRepr]
	public struct XrSpatialGraphNodeSpaceCreateInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrSpatialGraphNodeTypeMSFT nodeType,
		uint8 nodeId,
		XrPosef pose);
	[CRepr]
	public struct XrSystemHandTrackingPropertiesEXT : this(
		XrStructureType type,
		void* next,
		XrBool32 supportsHandTracking);
	[CRepr]
	public struct XrHandTrackerCreateInfoEXT : this(
		XrStructureType type,
		void* next,
		XrHandEXT hand,
		XrHandJointSetEXT handJointSet);
	[CRepr]
	public struct XrHandJointsLocateInfoEXT : this(
		XrStructureType type,
		void* next,
		XrSpace baseSpace,
		XrTime time);
	[CRepr]
	public struct XrHandJointLocationEXT : this(
		XrSpaceLocationFlags locationFlags,
		XrPosef pose,
		float radius);
	[CRepr]
	public struct XrHandJointVelocityEXT : this(
		XrSpaceVelocityFlags velocityFlags,
		XrVector3f linearVelocity,
		XrVector3f angularVelocity);
	[CRepr]
	public struct XrHandJointLocationsEXT : this(
		XrStructureType type,
		void* next,
		XrBool32 isActive,
		uint32 jointCount,
		XrHandJointLocationEXT* jointLocations);
	[CRepr]
	public struct XrHandJointVelocitiesEXT : this(
		XrStructureType type,
		void* next,
		uint32 jointCount,
		XrHandJointVelocityEXT* jointVelocities);
	[CRepr]
	public struct XrHandJointsMotionRangeInfoEXT : this(
		XrStructureType type,
		void* next,
		XrHandJointsMotionRangeEXT handJointsMotionRange);
	[CRepr]
	public struct XrHandMeshSpaceCreateInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrHandPoseTypeMSFT handPoseType,
		XrPosef poseInHandMeshSpace);
	[CRepr]
	public struct XrHandMeshUpdateInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrTime time,
		XrHandPoseTypeMSFT handPoseType);
	[CRepr]
	public struct XrHandMeshMSFT : this(
		XrStructureType type,
		void* next,
		XrBool32 isActive,
		XrBool32 indexBufferChanged,
		XrBool32 vertexBufferChanged,
		XrHandMeshIndexBufferMSFT indexBuffer,
		XrHandMeshVertexBufferMSFT vertexBuffer);
	[CRepr]
	public struct XrHandMeshIndexBufferMSFT : this(
		uint32 indexBufferKey,
		uint32 indexCapacityInput,
		uint32 indexCountOutput,
		uint32* indices);
	[CRepr]
	public struct XrHandMeshVertexBufferMSFT : this(
		XrTime vertexUpdateTime,
		uint32 vertexCapacityInput,
		uint32 vertexCountOutput,
		XrHandMeshVertexMSFT* vertices);
	[CRepr]
	public struct XrHandMeshVertexMSFT : this(
		XrVector3f position,
		XrVector3f normal);
	[CRepr]
	public struct XrSystemHandTrackingMeshPropertiesMSFT : this(
		XrStructureType type,
		void* next,
		XrBool32 supportsHandTrackingMesh,
		uint32 maxHandMeshIndexCount,
		uint32 maxHandMeshVertexCount);
	[CRepr]
	public struct XrHandPoseTypeInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrHandPoseTypeMSFT handPoseType);
	[CRepr]
	public struct XrSecondaryViewConfigurationSessionBeginInfoMSFT : this(
		XrStructureType type,
		void* next,
		uint32 viewConfigurationCount,
		XrViewConfigurationType* enabledViewConfigurationTypes);
	[CRepr]
	public struct XrSecondaryViewConfigurationStateMSFT : this(
		XrStructureType type,
		void* next,
		XrViewConfigurationType viewConfigurationType,
		XrBool32 active);
	[CRepr]
	public struct XrSecondaryViewConfigurationFrameStateMSFT : this(
		XrStructureType type,
		void* next,
		uint32 viewConfigurationCount,
		XrSecondaryViewConfigurationStateMSFT* viewConfigurationStates);
	[CRepr]
	public struct XrSecondaryViewConfigurationFrameEndInfoMSFT : this(
		XrStructureType type,
		void* next,
		uint32 viewConfigurationCount,
		XrSecondaryViewConfigurationLayerInfoMSFT* viewConfigurationLayersInfo);
	[CRepr]
	public struct XrSecondaryViewConfigurationLayerInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrViewConfigurationType viewConfigurationType,
		XrEnvironmentBlendMode environmentBlendMode,
		uint32 layerCount,
		XrCompositionLayerBaseHeader** layers);
	[CRepr]
	public struct XrSecondaryViewConfigurationSwapchainCreateInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrViewConfigurationType viewConfigurationType);
	[CRepr]
	public struct XrHolographicWindowAttachmentMSFT : this(
		XrStructureType type,
		void* next,
		IUnknown* holographicSpace,
		IUnknown* coreWindow);
	[CRepr]
	public struct XrAndroidSurfaceSwapchainCreateInfoFB : this(
		XrStructureType type,
		void* next,
		XrAndroidSurfaceSwapchainFlagsFB createFlags);
	[CRepr]
	public struct XrSwapchainStateBaseHeaderFB : this(
		XrStructureType type,
		void* next);
	[CRepr]
	public struct XrSwapchainStateAndroidSurfaceDimensionsFB : this(
		XrStructureType type,
		void* next,
		uint32 width,
		uint32 height);
	[CRepr]
	public struct XrSwapchainStateSamplerOpenGLESFB : this(
		XrStructureType type,
		void* next,
		EGLenum minFilter,
		EGLenum magFilter,
		EGLenum wrapModeS,
		EGLenum wrapModeT,
		EGLenum swizzleRed,
		EGLenum swizzleGreen,
		EGLenum swizzleBlue,
		EGLenum swizzleAlpha,
		float maxAnisotropy,
		XrColor4f borderColor);
	[CRepr]
	public struct XrSwapchainStateSamplerVulkanFB : this(
		XrStructureType type,
		void* next,
		VkFilter minFilter,
		VkFilter magFilter,
		VkSamplerMipmapMode mipmapMode,
		VkSamplerAddressMode wrapModeS,
		VkSamplerAddressMode wrapModeT,
		VkComponentSwizzle swizzleRed,
		VkComponentSwizzle swizzleGreen,
		VkComponentSwizzle swizzleBlue,
		VkComponentSwizzle swizzleAlpha,
		float maxAnisotropy,
		XrColor4f borderColor);
	[CRepr]
	public struct XrLoaderInitInfoBaseHeaderKHR : this(
		XrStructureType type,
		void* next);
	[CRepr]
	public struct XrLoaderInitInfoAndroidKHR : this(
		XrStructureType type,
		void* next,
		void* applicationVM,
		void* applicationContext);
	[CRepr]
	public struct XrCompositionLayerEquirect2KHR : this(
		XrStructureType type,
		void* next,
		XrCompositionLayerFlags layerFlags,
		XrSpace space,
		XrEyeVisibility eyeVisibility,
		XrSwapchainSubImage subImage,
		XrPosef pose,
		float radius,
		float centralHorizontalAngle,
		float upperVerticalAngle,
		float lowerVerticalAngle);
	[CRepr]
	public struct XrCompositionLayerColorScaleBiasKHR : this(
		XrStructureType type,
		void* next,
		XrColor4f colorScale,
		XrColor4f colorBias);
	[CRepr]
	public struct XrControllerModelKeyStateMSFT : this(
		XrStructureType type,
		void* next,
		XrControllerModelKeyMSFT modelKey);
	[CRepr]
	public struct XrControllerModelNodePropertiesMSFT : this(
		XrStructureType type,
		void* next,
		c_char parentNodeName,
		c_char nodeName);
	[CRepr]
	public struct XrControllerModelPropertiesMSFT : this(
		XrStructureType type,
		void* next,
		uint32 nodeCapacityInput,
		uint32 nodeCountOutput,
		XrControllerModelNodePropertiesMSFT* nodeProperties);
	[CRepr]
	public struct XrControllerModelNodeStateMSFT : this(
		XrStructureType type,
		void* next,
		XrPosef nodePose);
	[CRepr]
	public struct XrControllerModelStateMSFT : this(
		XrStructureType type,
		void* next,
		uint32 nodeCapacityInput,
		uint32 nodeCountOutput,
		XrControllerModelNodeStateMSFT* nodeStates);
	public struct XrSceneObserverMSFT : uint64;
	public struct XrSceneMSFT : uint64;
	[CRepr]
	public struct XrUuidMSFT : this(
		uint8 bytes);
	[CRepr]
	public struct XrSceneObserverCreateInfoMSFT : this(
		XrStructureType type,
		void* next);
	[CRepr]
	public struct XrSceneCreateInfoMSFT : this(
		XrStructureType type,
		void* next);
	[CRepr]
	public struct XrNewSceneComputeInfoMSFT : this(
		XrStructureType type,
		void* next,
		uint32 requestedFeatureCount,
		XrSceneComputeFeatureMSFT* requestedFeatures,
		XrSceneComputeConsistencyMSFT consistency,
		XrSceneBoundsMSFT bounds);
	[CRepr]
	public struct XrVisualMeshComputeLodInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrMeshComputeLodMSFT lod);
	[CRepr]
	public struct XrSceneSphereBoundMSFT : this(
		XrVector3f center,
		float radius);
	[CRepr]
	public struct XrSceneOrientedBoxBoundMSFT : this(
		XrPosef pose,
		XrVector3f extents);
	[CRepr]
	public struct XrSceneFrustumBoundMSFT : this(
		XrPosef pose,
		XrFovf fov,
		float farDistance);
	[CRepr]
	public struct XrSceneBoundsMSFT : this(
		XrSpace space,
		XrTime time,
		uint32 sphereCount,
		XrSceneSphereBoundMSFT* spheres,
		uint32 boxCount,
		XrSceneOrientedBoxBoundMSFT* boxes,
		uint32 frustumCount,
		XrSceneFrustumBoundMSFT* frustums);
	[CRepr]
	public struct XrSceneComponentMSFT : this(
		XrSceneComponentTypeMSFT componentType,
		XrUuidMSFT id,
		XrUuidMSFT parentId,
		XrTime updateTime);
	[CRepr]
	public struct XrSceneComponentsMSFT : this(
		XrStructureType type,
		void* next,
		uint32 componentCapacityInput,
		uint32 componentCountOutput,
		XrSceneComponentMSFT* components);
	[CRepr]
	public struct XrSceneComponentsGetInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrSceneComponentTypeMSFT componentType);
	[CRepr]
	public struct XrSceneComponentLocationMSFT : this(
		XrSpaceLocationFlags flags,
		XrPosef pose);
	[CRepr]
	public struct XrSceneComponentLocationsMSFT : this(
		XrStructureType type,
		void* next,
		uint32 locationCount,
		XrSceneComponentLocationMSFT* locations);
	[CRepr]
	public struct XrSceneComponentsLocateInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrSpace baseSpace,
		XrTime time,
		uint32 componentIdCount,
		XrUuidMSFT* componentIds);
	[CRepr]
	public struct XrSceneObjectMSFT : this(
		XrSceneObjectTypeMSFT objectType);
	[CRepr]
	public struct XrSceneObjectsMSFT : this(
		XrStructureType type,
		void* next,
		uint32 sceneObjectCount,
		XrSceneObjectMSFT* sceneObjects);
	[CRepr]
	public struct XrSceneComponentParentFilterInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrUuidMSFT parentId);
	[CRepr]
	public struct XrSceneObjectTypesFilterInfoMSFT : this(
		XrStructureType type,
		void* next,
		uint32 objectTypeCount,
		XrSceneObjectTypeMSFT* objectTypes);
	[CRepr]
	public struct XrScenePlaneMSFT : this(
		XrScenePlaneAlignmentTypeMSFT alignment,
		XrExtent2Df size,
		uint64 meshBufferId,
		XrBool32 supportsIndicesUint16);
	[CRepr]
	public struct XrScenePlanesMSFT : this(
		XrStructureType type,
		void* next,
		uint32 scenePlaneCount,
		XrScenePlaneMSFT* scenePlanes);
	[CRepr]
	public struct XrScenePlaneAlignmentFilterInfoMSFT : this(
		XrStructureType type,
		void* next,
		uint32 alignmentCount,
		XrScenePlaneAlignmentTypeMSFT* alignments);
	[CRepr]
	public struct XrSceneMeshMSFT : this(
		uint64 meshBufferId,
		XrBool32 supportsIndicesUint16);
	[CRepr]
	public struct XrSceneMeshesMSFT : this(
		XrStructureType type,
		void* next,
		uint32 sceneMeshCount,
		XrSceneMeshMSFT* sceneMeshes);
	[CRepr]
	public struct XrSceneMeshBuffersGetInfoMSFT : this(
		XrStructureType type,
		void* next,
		uint64 meshBufferId);
	[CRepr]
	public struct XrSceneMeshBuffersMSFT : this(
		XrStructureType type,
		void* next);
	[CRepr]
	public struct XrSceneMeshVertexBufferMSFT : this(
		XrStructureType type,
		void* next,
		uint32 vertexCapacityInput,
		uint32 vertexCountOutput,
		XrVector3f* vertices);
	[CRepr]
	public struct XrSceneMeshIndicesUint32MSFT : this(
		XrStructureType type,
		void* next,
		uint32 indexCapacityInput,
		uint32 indexCountOutput,
		uint32* indices);
	[CRepr]
	public struct XrSceneMeshIndicesUint16MSFT : this(
		XrStructureType type,
		void* next,
		uint32 indexCapacityInput,
		uint32 indexCountOutput,
		uint16* indices);
	[CRepr]
	public struct XrSerializedSceneFragmentDataGetInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrUuidMSFT sceneFragmentId);
	[CRepr]
	public struct XrDeserializeSceneFragmentMSFT : this(
		uint32 bufferSize,
		uint8* buffer);
	[CRepr]
	public struct XrSceneDeserializeInfoMSFT : this(
		XrStructureType type,
		void* next,
		uint32 fragmentCount,
		XrDeserializeSceneFragmentMSFT* fragments);
	[CRepr]
	public struct XrSystemColorSpacePropertiesFB : this(
		XrStructureType type,
		void* next,
		XrColorSpaceFB colorSpace);
	[CRepr]
	public struct XrCompositionLayerDepthTestVARJO : this(
		XrStructureType type,
		void* next,
		float depthTestRangeNearZ,
		float depthTestRangeFarZ);
	[CRepr]
	public struct XrViewLocateFoveatedRenderingVARJO : this(
		XrStructureType type,
		void* next,
		XrBool32 foveatedRenderingActive);
	[CRepr]
	public struct XrFoveatedViewConfigurationViewVARJO : this(
		XrStructureType type,
		void* next,
		XrBool32 foveatedRenderingActive);
	[CRepr]
	public struct XrSystemFoveatedRenderingPropertiesVARJO : this(
		XrStructureType type,
		void* next,
		XrBool32 supportsFoveatedRendering);
	[CRepr]
	public struct XrCompositionLayerReprojectionInfoMSFT : this(
		XrStructureType type,
		void* next,
		XrReprojectionModeMSFT reprojectionMode);
	[CRepr]
	public struct XrCompositionLayerReprojectionPlaneOverrideMSFT : this(
		XrStructureType type,
		void* next,
		XrVector3f position,
		XrVector3f normal,
		XrVector3f velocity);
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
	public function XrResult PFN_xrResultToString(XrInstance instance, XrResult value, c_char buffer);
	public function XrResult PFN_xrStructureTypeToString(XrInstance instance, XrStructureType value, c_char buffer);
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
	public function XrResult PFN_xrSetAndroidApplicationThreadKHR(XrSession session, XrAndroidThreadTypeKHR threadType, uint32 threadId);
	public function XrResult PFN_xrCreateSwapchainAndroidSurfaceKHR(XrSession session, XrSwapchainCreateInfo* info, XrSwapchain* swapchain, jobject* surface);
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
	public function XrResult PFN_xrGetVulkanInstanceExtensionsKHR(XrInstance instance, XrSystemId systemId, uint32 bufferCapacityInput, uint32* bufferCountOutput, c_char* buffer);
	public function XrResult PFN_xrGetVulkanDeviceExtensionsKHR(XrInstance instance, XrSystemId systemId, uint32 bufferCapacityInput, uint32* bufferCountOutput, c_char* buffer);
	public function XrResult PFN_xrGetVulkanGraphicsDeviceKHR(XrInstance instance, XrSystemId systemId, VkInstance vkInstance, VkPhysicalDevice* vkPhysicalDevice);
	public function XrResult PFN_xrGetOpenGLGraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsOpenGLKHR* graphicsRequirements);
	public function XrResult PFN_xrGetOpenGLESGraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsOpenGLESKHR* graphicsRequirements);
	public function XrResult PFN_xrGetVulkanGraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsVulkanKHR* graphicsRequirements);
	public function XrResult PFN_xrGetD3D11GraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsD3D11KHR* graphicsRequirements);
	public function XrResult PFN_xrGetD3D12GraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsD3D12KHR* graphicsRequirements);
	public function XrResult PFN_xrPerfSettingsSetPerformanceLevelEXT(XrSession session, XrPerfSettingsDomainEXT domain, XrPerfSettingsLevelEXT level);
	public function XrResult PFN_xrThermalGetTemperatureTrendEXT(XrSession session, XrPerfSettingsDomainEXT domain, XrPerfSettingsNotificationLevelEXT* notificationLevel, float* tempHeadroom, float* tempSlope);
	public function XrResult PFN_xrSetDebugUtilsObjectNameEXT(XrInstance instance, XrDebugUtilsObjectNameInfoEXT* nameInfo);
	public function XrResult PFN_xrCreateDebugUtilsMessengerEXT(XrInstance instance, XrDebugUtilsMessengerCreateInfoEXT* createInfo, XrDebugUtilsMessengerEXT* messenger);
	public function XrResult PFN_xrDestroyDebugUtilsMessengerEXT(XrDebugUtilsMessengerEXT messenger);
	public function XrResult PFN_xrSubmitDebugUtilsMessageEXT(XrInstance instance, XrDebugUtilsMessageSeverityFlagsEXT messageSeverity, XrDebugUtilsMessageTypeFlagsEXT messageTypes, XrDebugUtilsMessengerCallbackDataEXT* callbackData);
	public function XrResult PFN_xrSessionBeginDebugUtilsLabelRegionEXT(XrSession session, XrDebugUtilsLabelEXT* labelInfo);
	public function XrResult PFN_xrSessionEndDebugUtilsLabelRegionEXT(XrSession session);
	public function XrResult PFN_xrSessionInsertDebugUtilsLabelEXT(XrSession session, XrDebugUtilsLabelEXT* labelInfo);
	public function XrResult PFN_xrConvertTimeToWin32PerformanceCounterKHR(XrInstance instance, XrTime time, LARGE_INTEGER* performanceCounter);
	public function XrResult PFN_xrConvertWin32PerformanceCounterToTimeKHR(XrInstance instance, LARGE_INTEGER* performanceCounter, XrTime* time);
	public function XrResult PFN_xrCreateVulkanInstanceKHR(XrInstance instance, XrVulkanInstanceCreateInfoKHR* createInfo, VkInstance* vulkanInstance, VkResult* vulkanResult);
	public function XrResult PFN_xrCreateVulkanDeviceKHR(XrInstance instance, XrVulkanDeviceCreateInfoKHR* createInfo, VkDevice* vulkanDevice, VkResult* vulkanResult);
	public function XrResult PFN_xrGetVulkanGraphicsDevice2KHR(XrInstance instance, XrVulkanGraphicsDeviceGetInfoKHR* getInfo, VkPhysicalDevice* vulkanPhysicalDevice);
	public function XrResult PFN_xrConvertTimeToTimespecTimeKHR(XrInstance instance, XrTime time, timespec* timespecTime);
	public function XrResult PFN_xrConvertTimespecTimeToTimeKHR(XrInstance instance, timespec* timespecTime, XrTime* time);
	public function XrResult PFN_xrGetVisibilityMaskKHR(XrSession session, XrViewConfigurationType viewConfigurationType, uint32 viewIndex, XrVisibilityMaskTypeKHR visibilityMaskType, XrVisibilityMaskKHR* visibilityMask);
	public function XrResult PFN_xrCreateSpatialAnchorMSFT(XrSession session, XrSpatialAnchorCreateInfoMSFT* createInfo, XrSpatialAnchorMSFT* anchor);
	public function XrResult PFN_xrCreateSpatialAnchorSpaceMSFT(XrSession session, XrSpatialAnchorSpaceCreateInfoMSFT* createInfo, XrSpace* space);
	public function XrResult PFN_xrDestroySpatialAnchorMSFT(XrSpatialAnchorMSFT anchor);
	public function XrResult PFN_xrSetInputDeviceActiveEXT(XrSession session, XrPath interactionProfile, XrPath topLevelPath, XrBool32 isActive);
	public function XrResult PFN_xrSetInputDeviceStateBoolEXT(XrSession session, XrPath topLevelPath, XrPath inputSourcePath, XrBool32 state);
	public function XrResult PFN_xrSetInputDeviceStateFloatEXT(XrSession session, XrPath topLevelPath, XrPath inputSourcePath, float state);
	public function XrResult PFN_xrSetInputDeviceStateVector2fEXT(XrSession session, XrPath topLevelPath, XrPath inputSourcePath, XrVector2f state);
	public function XrResult PFN_xrSetInputDeviceLocationEXT(XrSession session, XrPath topLevelPath, XrPath inputSourcePath, XrSpace space, XrPosef pose);
	public function XrResult PFN_xrInitializeLoaderKHR(XrLoaderInitInfoBaseHeaderKHR* loaderInitInfo);
	public function XrResult PFN_xrCreateSpatialGraphNodeSpaceMSFT(XrSession session, XrSpatialGraphNodeSpaceCreateInfoMSFT* createInfo, XrSpace* space);
	public function XrResult PFN_xrCreateHandTrackerEXT(XrSession session, XrHandTrackerCreateInfoEXT* createInfo, XrHandTrackerEXT* handTracker);
	public function XrResult PFN_xrDestroyHandTrackerEXT(XrHandTrackerEXT handTracker);
	public function XrResult PFN_xrLocateHandJointsEXT(XrHandTrackerEXT handTracker, XrHandJointsLocateInfoEXT* locateInfo, XrHandJointLocationsEXT* locations);
	public function XrResult PFN_xrCreateHandMeshSpaceMSFT(XrHandTrackerEXT handTracker, XrHandMeshSpaceCreateInfoMSFT* createInfo, XrSpace* space);
	public function XrResult PFN_xrUpdateHandMeshMSFT(XrHandTrackerEXT handTracker, XrHandMeshUpdateInfoMSFT* updateInfo, XrHandMeshMSFT* handMesh);
	public function XrResult PFN_xrGetControllerModelKeyMSFT(XrSession session, XrPath topLevelUserPath, XrControllerModelKeyStateMSFT* controllerModelKeyState);
	public function XrResult PFN_xrLoadControllerModelMSFT(XrSession session, XrControllerModelKeyMSFT modelKey, uint32 bufferCapacityInput, uint32* bufferCountOutput, uint8* buffer);
	public function XrResult PFN_xrGetControllerModelPropertiesMSFT(XrSession session, XrControllerModelKeyMSFT modelKey, XrControllerModelPropertiesMSFT* properties);
	public function XrResult PFN_xrGetControllerModelStateMSFT(XrSession session, XrControllerModelKeyMSFT modelKey, XrControllerModelStateMSFT* state);
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
	public function XrResult PFN_xrDeserializeSceneMSFT(XrSceneObserverMSFT sceneObserver, XrSceneDeserializeInfoMSFT* deserializeInfo);
	public function XrResult PFN_xrGetSerializedSceneFragmentDataMSFT(XrSceneMSFT scene, XrSerializedSceneFragmentDataGetInfoMSFT* getInfo, uint32 countInput, uint32* readOutput, uint8* buffer);
	public function XrResult PFN_xrEnumerateDisplayRefreshRatesFB(XrSession session, uint32 displayRefreshRateCapacityInput, uint32* displayRefreshRateCountOutput, float* displayRefreshRates);
	public function XrResult PFN_xrGetDisplayRefreshRateFB(XrSession session, float* displayRefreshRate);
	public function XrResult PFN_xrRequestDisplayRefreshRateFB(XrSession session, float displayRefreshRate);
	public function XrResult PFN_xrCreateSpatialAnchorFromPerceptionAnchorMSFT(XrSession session, IUnknown* perceptionAnchor, XrSpatialAnchorMSFT* anchor);
	public function XrResult PFN_xrTryGetPerceptionAnchorFromSpatialAnchorMSFT(XrSession session, XrSpatialAnchorMSFT anchor, IUnknown** perceptionAnchor);
	public function XrResult PFN_xrUpdateSwapchainFB(XrSwapchain swapchain, XrSwapchainStateBaseHeaderFB* state);
	public function XrResult PFN_xrGetSwapchainStateFB(XrSwapchain swapchain, XrSwapchainStateBaseHeaderFB* state);
	public function XrResult PFN_xrEnumerateColorSpacesFB(XrSession session, uint32 colorSpaceCapacityInput, uint32* colorSpaceCountOutput, XrColorSpaceFB* colorSpaces);
	public function XrResult PFN_xrSetColorSpaceFB(XrSession session, XrColorSpaceFB colorspace);
	public function XrResult PFN_xrSetEnvironmentDepthEstimationVARJO(XrSession session, XrBool32 enabled);
	public function XrResult PFN_xrEnumerateReprojectionModesMSFT(XrInstance instance, XrSystemId systemId, XrViewConfigurationType viewConfigurationType, uint32 modeCapacityInput, uint32* modeCountOutput, XrReprojectionModeMSFT* modes);
	public function XrResult PFN_xrGetAudioOutputDeviceGuidOculus(XrInstance instance, c_wchar buffer);
	public function XrResult PFN_xrGetAudioInputDeviceGuidOculus(XrInstance instance, c_wchar buffer);

	public static
	{
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
		public static extern XrResult xrResultToString(XrInstance instance, XrResult value, c_char buffer);
		[CLink]
		public static extern XrResult xrStructureTypeToString(XrInstance instance, XrStructureType value, c_char buffer);
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
		public static extern XrResult xrSetAndroidApplicationThreadKHR(XrSession session, XrAndroidThreadTypeKHR threadType, uint32 threadId);
		[CLink]
		public static extern XrResult xrCreateSwapchainAndroidSurfaceKHR(XrSession session, XrSwapchainCreateInfo* info, XrSwapchain* swapchain, jobject* surface);
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
		[CLink]
		public static extern XrResult xrGetVulkanInstanceExtensionsKHR(XrInstance instance, XrSystemId systemId, uint32 bufferCapacityInput, uint32* bufferCountOutput, c_char* buffer);
		[CLink]
		public static extern XrResult xrGetVulkanDeviceExtensionsKHR(XrInstance instance, XrSystemId systemId, uint32 bufferCapacityInput, uint32* bufferCountOutput, c_char* buffer);
		[CLink]
		public static extern XrResult xrGetVulkanGraphicsDeviceKHR(XrInstance instance, XrSystemId systemId, VkInstance vkInstance, VkPhysicalDevice* vkPhysicalDevice);
		[CLink]
		public static extern XrResult xrGetOpenGLGraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsOpenGLKHR* graphicsRequirements);
		[CLink]
		public static extern XrResult xrGetOpenGLESGraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsOpenGLESKHR* graphicsRequirements);
		[CLink]
		public static extern XrResult xrGetVulkanGraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsVulkanKHR* graphicsRequirements);
		[CLink]
		public static extern XrResult xrGetD3D11GraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsD3D11KHR* graphicsRequirements);
		[CLink]
		public static extern XrResult xrGetD3D12GraphicsRequirementsKHR(XrInstance instance, XrSystemId systemId, XrGraphicsRequirementsD3D12KHR* graphicsRequirements);
		[CLink]
		public static extern XrResult xrPerfSettingsSetPerformanceLevelEXT(XrSession session, XrPerfSettingsDomainEXT domain, XrPerfSettingsLevelEXT level);
		[CLink]
		public static extern XrResult xrThermalGetTemperatureTrendEXT(XrSession session, XrPerfSettingsDomainEXT domain, XrPerfSettingsNotificationLevelEXT* notificationLevel, float* tempHeadroom, float* tempSlope);
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
		[CLink]
		public static extern XrResult xrConvertTimeToWin32PerformanceCounterKHR(XrInstance instance, XrTime time, LARGE_INTEGER* performanceCounter);
		[CLink]
		public static extern XrResult xrConvertWin32PerformanceCounterToTimeKHR(XrInstance instance, LARGE_INTEGER* performanceCounter, XrTime* time);
		[CLink]
		public static extern XrResult xrCreateVulkanInstanceKHR(XrInstance instance, XrVulkanInstanceCreateInfoKHR* createInfo, VkInstance* vulkanInstance, VkResult* vulkanResult);
		[CLink]
		public static extern XrResult xrCreateVulkanDeviceKHR(XrInstance instance, XrVulkanDeviceCreateInfoKHR* createInfo, VkDevice* vulkanDevice, VkResult* vulkanResult);
		[CLink]
		public static extern XrResult xrGetVulkanGraphicsDevice2KHR(XrInstance instance, XrVulkanGraphicsDeviceGetInfoKHR* getInfo, VkPhysicalDevice* vulkanPhysicalDevice);
		[CLink]
		public static extern XrResult xrConvertTimeToTimespecTimeKHR(XrInstance instance, XrTime time, timespec* timespecTime);
		[CLink]
		public static extern XrResult xrConvertTimespecTimeToTimeKHR(XrInstance instance, timespec* timespecTime, XrTime* time);
		[CLink]
		public static extern XrResult xrGetVisibilityMaskKHR(XrSession session, XrViewConfigurationType viewConfigurationType, uint32 viewIndex, XrVisibilityMaskTypeKHR visibilityMaskType, XrVisibilityMaskKHR* visibilityMask);
		[CLink]
		public static extern XrResult xrCreateSpatialAnchorMSFT(XrSession session, XrSpatialAnchorCreateInfoMSFT* createInfo, XrSpatialAnchorMSFT* anchor);
		[CLink]
		public static extern XrResult xrCreateSpatialAnchorSpaceMSFT(XrSession session, XrSpatialAnchorSpaceCreateInfoMSFT* createInfo, XrSpace* space);
		[CLink]
		public static extern XrResult xrDestroySpatialAnchorMSFT(XrSpatialAnchorMSFT anchor);
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
		[CLink]
		public static extern XrResult xrInitializeLoaderKHR(XrLoaderInitInfoBaseHeaderKHR* loaderInitInfo);
		[CLink]
		public static extern XrResult xrCreateSpatialGraphNodeSpaceMSFT(XrSession session, XrSpatialGraphNodeSpaceCreateInfoMSFT* createInfo, XrSpace* space);
		[CLink]
		public static extern XrResult xrCreateHandTrackerEXT(XrSession session, XrHandTrackerCreateInfoEXT* createInfo, XrHandTrackerEXT* handTracker);
		[CLink]
		public static extern XrResult xrDestroyHandTrackerEXT(XrHandTrackerEXT handTracker);
		[CLink]
		public static extern XrResult xrLocateHandJointsEXT(XrHandTrackerEXT handTracker, XrHandJointsLocateInfoEXT* locateInfo, XrHandJointLocationsEXT* locations);
		[CLink]
		public static extern XrResult xrCreateHandMeshSpaceMSFT(XrHandTrackerEXT handTracker, XrHandMeshSpaceCreateInfoMSFT* createInfo, XrSpace* space);
		[CLink]
		public static extern XrResult xrUpdateHandMeshMSFT(XrHandTrackerEXT handTracker, XrHandMeshUpdateInfoMSFT* updateInfo, XrHandMeshMSFT* handMesh);
		[CLink]
		public static extern XrResult xrGetControllerModelKeyMSFT(XrSession session, XrPath topLevelUserPath, XrControllerModelKeyStateMSFT* controllerModelKeyState);
		[CLink]
		public static extern XrResult xrLoadControllerModelMSFT(XrSession session, XrControllerModelKeyMSFT modelKey, uint32 bufferCapacityInput, uint32* bufferCountOutput, uint8* buffer);
		[CLink]
		public static extern XrResult xrGetControllerModelPropertiesMSFT(XrSession session, XrControllerModelKeyMSFT modelKey, XrControllerModelPropertiesMSFT* properties);
		[CLink]
		public static extern XrResult xrGetControllerModelStateMSFT(XrSession session, XrControllerModelKeyMSFT modelKey, XrControllerModelStateMSFT* state);
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
		[CLink]
		public static extern XrResult xrDeserializeSceneMSFT(XrSceneObserverMSFT sceneObserver, XrSceneDeserializeInfoMSFT* deserializeInfo);
		[CLink]
		public static extern XrResult xrGetSerializedSceneFragmentDataMSFT(XrSceneMSFT scene, XrSerializedSceneFragmentDataGetInfoMSFT* getInfo, uint32 countInput, uint32* readOutput, uint8* buffer);
		[CLink]
		public static extern XrResult xrEnumerateDisplayRefreshRatesFB(XrSession session, uint32 displayRefreshRateCapacityInput, uint32* displayRefreshRateCountOutput, float* displayRefreshRates);
		[CLink]
		public static extern XrResult xrGetDisplayRefreshRateFB(XrSession session, float* displayRefreshRate);
		[CLink]
		public static extern XrResult xrRequestDisplayRefreshRateFB(XrSession session, float displayRefreshRate);
		[CLink]
		public static extern XrResult xrCreateSpatialAnchorFromPerceptionAnchorMSFT(XrSession session, IUnknown* perceptionAnchor, XrSpatialAnchorMSFT* anchor);
		[CLink]
		public static extern XrResult xrTryGetPerceptionAnchorFromSpatialAnchorMSFT(XrSession session, XrSpatialAnchorMSFT anchor, IUnknown** perceptionAnchor);
		[CLink]
		public static extern XrResult xrUpdateSwapchainFB(XrSwapchain swapchain, XrSwapchainStateBaseHeaderFB* state);
		[CLink]
		public static extern XrResult xrGetSwapchainStateFB(XrSwapchain swapchain, XrSwapchainStateBaseHeaderFB* state);
		[CLink]
		public static extern XrResult xrEnumerateColorSpacesFB(XrSession session, uint32 colorSpaceCapacityInput, uint32* colorSpaceCountOutput, XrColorSpaceFB* colorSpaces);
		[CLink]
		public static extern XrResult xrSetColorSpaceFB(XrSession session, XrColorSpaceFB colorspace);
		[CLink]
		public static extern XrResult xrSetEnvironmentDepthEstimationVARJO(XrSession session, XrBool32 enabled);
		[CLink]
		public static extern XrResult xrEnumerateReprojectionModesMSFT(XrInstance instance, XrSystemId systemId, XrViewConfigurationType viewConfigurationType, uint32 modeCapacityInput, uint32* modeCountOutput, XrReprojectionModeMSFT* modes);
		[CLink]
		public static extern XrResult xrGetAudioOutputDeviceGuidOculus(XrInstance instance, c_wchar buffer);
		[CLink]
		public static extern XrResult xrGetAudioInputDeviceGuidOculus(XrInstance instance, c_wchar buffer);

	}
}