; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [162 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 65
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 18
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 60
	i32 134690465, ; 3: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 73
	i32 182336117, ; 4: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 54
	i32 317030064, ; 5: Plugin.SharedTransitions.dll => 0x12e57eb0 => 21
	i32 318968648, ; 6: Xamarin.AndroidX.Activity.dll => 0x13031348 => 36
	i32 321597661, ; 7: System.Numerics => 0x132b30dd => 31
	i32 342366114, ; 8: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 48
	i32 393699800, ; 9: Firebase => 0x177761d8 => 3
	i32 442521989, ; 10: Xamarin.Essentials => 0x1a605985 => 59
	i32 450948140, ; 11: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 46
	i32 465846621, ; 12: mscorlib => 0x1bc4415d => 17
	i32 469710990, ; 13: System.dll => 0x1bff388e => 29
	i32 504143952, ; 14: Plugin.LocalNotification.dll => 0x1e0ca050 => 20
	i32 513247710, ; 15: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 15
	i32 525008092, ; 16: SkiaSharp.dll => 0x1f4afcdc => 23
	i32 527452488, ; 17: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 73
	i32 539058512, ; 18: Microsoft.Extensions.Logging => 0x20216150 => 13
	i32 610194910, ; 19: System.Reactive.dll => 0x245ed5de => 32
	i32 627609679, ; 20: Xamarin.AndroidX.CustomView => 0x2568904f => 44
	i32 663517072, ; 21: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 56
	i32 690569205, ; 22: System.Xml.Linq.dll => 0x29293ff5 => 35
	i32 691348768, ; 23: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 75
	i32 700284507, ; 24: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 70
	i32 720511267, ; 25: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 74
	i32 789151979, ; 26: Microsoft.Extensions.Options => 0x2f0980eb => 14
	i32 809851609, ; 27: System.Drawing.Common.dll => 0x30455ad9 => 78
	i32 886248193, ; 28: Microcharts.Droid => 0x34d31301 => 8
	i32 912572698, ; 29: Xamarin.AndroidX.Biometric => 0x3664c11a => 39
	i32 928116545, ; 30: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 65
	i32 955402788, ; 31: Newtonsoft.Json => 0x38f24a24 => 18
	i32 956575887, ; 32: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 74
	i32 967690846, ; 33: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 48
	i32 974778368, ; 34: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 1012816738, ; 35: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 53
	i32 1028951442, ; 36: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 10
	i32 1035644815, ; 37: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 38
	i32 1042160112, ; 38: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 62
	i32 1052210849, ; 39: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 50
	i32 1084122840, ; 40: Xamarin.Kotlin.StdLib => 0x409e66d8 => 72
	i32 1098259244, ; 41: System => 0x41761b2c => 29
	i32 1275534314, ; 42: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 75
	i32 1293217323, ; 43: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 45
	i32 1365406463, ; 44: System.ServiceModel.Internals.dll => 0x516272ff => 79
	i32 1376866003, ; 45: Xamarin.AndroidX.SavedState => 0x52114ed3 => 53
	i32 1406073936, ; 46: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 41
	i32 1411638395, ; 47: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 33
	i32 1460219004, ; 48: Xamarin.Forms.Xaml => 0x57092c7c => 63
	i32 1469204771, ; 49: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 37
	i32 1470490898, ; 50: Microsoft.Extensions.Primitives => 0x57a5e912 => 15
	i32 1524747670, ; 51: Plugin.LocalNotification => 0x5ae1cd96 => 20
	i32 1582526884, ; 52: Microcharts.Forms.dll => 0x5e5371a4 => 9
	i32 1592978981, ; 53: System.Runtime.Serialization.dll => 0x5ef2ee25 => 1
	i32 1622152042, ; 54: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 51
	i32 1636350590, ; 55: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 43
	i32 1639515021, ; 56: System.Net.Http.dll => 0x61b9038d => 30
	i32 1658251792, ; 57: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 64
	i32 1698840827, ; 58: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 71
	i32 1716860169, ; 59: ProiectIP.dll => 0x66553509 => 22
	i32 1722051300, ; 60: SkiaSharp.Views.Forms => 0x66a46ae4 => 25
	i32 1729485958, ; 61: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 40
	i32 1766324549, ; 62: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 54
	i32 1770582343, ; 63: Microsoft.Extensions.Logging.dll => 0x6988f147 => 13
	i32 1776026572, ; 64: System.Core.dll => 0x69dc03cc => 27
	i32 1788241197, ; 65: Xamarin.AndroidX.Fragment => 0x6a96652d => 46
	i32 1808609942, ; 66: Xamarin.AndroidX.Loader => 0x6bcd3296 => 51
	i32 1813058853, ; 67: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 72
	i32 1813201214, ; 68: Xamarin.Google.Android.Material => 0x6c13413e => 64
	i32 1828688058, ; 69: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 12
	i32 1867746548, ; 70: Xamarin.Essentials.dll => 0x6f538cf4 => 59
	i32 1878053835, ; 71: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 63
	i32 1908813208, ; 72: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 67
	i32 1983156543, ; 73: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 71
	i32 2011961780, ; 74: System.Buffers.dll => 0x77ec19b4 => 26
	i32 2019465201, ; 75: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 50
	i32 2055257422, ; 76: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 49
	i32 2059619953, ; 77: Plugin.SharedTransitions => 0x7ac34e71 => 21
	i32 2097448633, ; 78: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 47
	i32 2126786730, ; 79: Xamarin.Forms.Platform.Android => 0x7ec430aa => 61
	i32 2129483829, ; 80: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 66
	i32 2181898931, ; 81: Microsoft.Extensions.Options.dll => 0x820d22b3 => 14
	i32 2192057212, ; 82: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 12
	i32 2201107256, ; 83: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 76
	i32 2201231467, ; 84: System.Net.Http => 0x8334206b => 30
	i32 2216717168, ; 85: Firebase.Auth.dll => 0x84206b70 => 2
	i32 2279755925, ; 86: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 52
	i32 2428790861, ; 87: Plugin.Fingerprint => 0x90c4684d => 19
	i32 2475788418, ; 88: Java.Interop.dll => 0x93918882 => 5
	i32 2483946094, ; 89: Plugin.Fingerprint.dll => 0x940e026e => 19
	i32 2526443681, ; 90: Xamarin.AndroidX.Biometric.dll => 0x969678a1 => 39
	i32 2605712449, ; 91: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 76
	i32 2620871830, ; 92: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 43
	i32 2634083588, ; 93: ProiectIP.Android => 0x9d00ed04 => 0
	i32 2732626843, ; 94: Xamarin.AndroidX.Activity => 0xa2e0939b => 36
	i32 2737747696, ; 95: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 37
	i32 2738405753, ; 96: ProiectIP => 0xa338c179 => 22
	i32 2766581644, ; 97: Xamarin.Forms.Core => 0xa4e6af8c => 60
	i32 2770495804, ; 98: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 70
	i32 2778768386, ; 99: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 57
	i32 2795602088, ; 100: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 24
	i32 2810250172, ; 101: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 41
	i32 2819470561, ; 102: System.Xml.dll => 0xa80db4e1 => 34
	i32 2847418871, ; 103: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 66
	i32 2853208004, ; 104: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 57
	i32 2855708567, ; 105: Xamarin.AndroidX.Transition => 0xaa36a797 => 55
	i32 2905242038, ; 106: mscorlib.dll => 0xad2a79b6 => 17
	i32 2912489636, ; 107: SkiaSharp.Views.Android => 0xad9910a4 => 24
	i32 2974793899, ; 108: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 25
	i32 2978675010, ; 109: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 45
	i32 3036068679, ; 110: Microcharts.Droid.dll => 0xb4f6bb47 => 8
	i32 3044182254, ; 111: FormsViewGroup => 0xb57288ee => 4
	i32 3058099980, ; 112: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 69
	i32 3111772706, ; 113: System.Runtime.Serialization => 0xb979e222 => 1
	i32 3204380047, ; 114: System.Data.dll => 0xbefef58f => 77
	i32 3230466174, ; 115: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 67
	i32 3247949154, ; 116: Mono.Security => 0xc197c562 => 80
	i32 3258312781, ; 117: Xamarin.AndroidX.CardView => 0xc235e84d => 40
	i32 3289052768, ; 118: ProiectIP.Android.dll => 0xc40af660 => 0
	i32 3317135071, ; 119: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 44
	i32 3317144872, ; 120: System.Data => 0xc5b79d28 => 77
	i32 3322403133, ; 121: Firebase.dll => 0xc607d93d => 3
	i32 3340387945, ; 122: SkiaSharp => 0xc71a4669 => 23
	i32 3353484488, ; 123: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 47
	i32 3353544232, ; 124: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 58
	i32 3362522851, ; 125: Xamarin.AndroidX.Core => 0xc86c06e3 => 42
	i32 3366347497, ; 126: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 127: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 52
	i32 3395150330, ; 128: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 33
	i32 3404865022, ; 129: System.ServiceModel.Internals => 0xcaf21dfe => 79
	i32 3407215217, ; 130: Xamarin.CommunityToolkit => 0xcb15fa71 => 58
	i32 3428513518, ; 131: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 11
	i32 3429136800, ; 132: System.Xml => 0xcc6479a0 => 34
	i32 3455791806, ; 133: Microcharts => 0xcdfb32be => 7
	i32 3476120550, ; 134: Mono.Android => 0xcf3163e6 => 16
	i32 3494395880, ; 135: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 68
	i32 3509114376, ; 136: System.Xml.Linq => 0xd128d608 => 35
	i32 3536029504, ; 137: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 61
	i32 3596207933, ; 138: LiteDB.dll => 0xd659c73d => 6
	i32 3629588173, ; 139: LiteDB => 0xd8571ecd => 6
	i32 3632359727, ; 140: Xamarin.Forms.Platform => 0xd881692f => 62
	i32 3641597786, ; 141: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 49
	i32 3668042751, ; 142: Microcharts.dll => 0xdaa1e3ff => 7
	i32 3672681054, ; 143: Mono.Android.dll => 0xdae8aa5e => 16
	i32 3689375977, ; 144: System.Drawing.Common => 0xdbe768e9 => 78
	i32 3731644420, ; 145: System.Reactive => 0xde6c6004 => 32
	i32 3748608112, ; 146: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 28
	i32 3829621856, ; 147: System.Numerics.dll => 0xe4436460 => 31
	i32 3841636137, ; 148: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 10
	i32 3885922214, ; 149: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 55
	i32 3896760992, ; 150: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 42
	i32 3903721208, ; 151: Microcharts.Forms => 0xe8ae0ef8 => 9
	i32 3921031405, ; 152: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 56
	i32 3955647286, ; 153: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 38
	i32 3967165417, ; 154: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 68
	i32 3970018735, ; 155: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 69
	i32 4024013275, ; 156: Firebase.Auth => 0xefd991db => 2
	i32 4105002889, ; 157: Mono.Security.dll => 0xf4ad5f89 => 80
	i32 4126470640, ; 158: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 11
	i32 4151237749, ; 159: System.Core => 0xf76edc75 => 27
	i32 4213026141, ; 160: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 28
	i32 4260525087 ; 161: System.Buffers => 0xfdf2741f => 26
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [162 x i32] [
	i32 65, i32 18, i32 60, i32 73, i32 54, i32 21, i32 36, i32 31, ; 0..7
	i32 48, i32 3, i32 59, i32 46, i32 17, i32 29, i32 20, i32 15, ; 8..15
	i32 23, i32 73, i32 13, i32 32, i32 44, i32 56, i32 35, i32 75, ; 16..23
	i32 70, i32 74, i32 14, i32 78, i32 8, i32 39, i32 65, i32 18, ; 24..31
	i32 74, i32 48, i32 4, i32 53, i32 10, i32 38, i32 62, i32 50, ; 32..39
	i32 72, i32 29, i32 75, i32 45, i32 79, i32 53, i32 41, i32 33, ; 40..47
	i32 63, i32 37, i32 15, i32 20, i32 9, i32 1, i32 51, i32 43, ; 48..55
	i32 30, i32 64, i32 71, i32 22, i32 25, i32 40, i32 54, i32 13, ; 56..63
	i32 27, i32 46, i32 51, i32 72, i32 64, i32 12, i32 59, i32 63, ; 64..71
	i32 67, i32 71, i32 26, i32 50, i32 49, i32 21, i32 47, i32 61, ; 72..79
	i32 66, i32 14, i32 12, i32 76, i32 30, i32 2, i32 52, i32 19, ; 80..87
	i32 5, i32 19, i32 39, i32 76, i32 43, i32 0, i32 36, i32 37, ; 88..95
	i32 22, i32 60, i32 70, i32 57, i32 24, i32 41, i32 34, i32 66, ; 96..103
	i32 57, i32 55, i32 17, i32 24, i32 25, i32 45, i32 8, i32 4, ; 104..111
	i32 69, i32 1, i32 77, i32 67, i32 80, i32 40, i32 0, i32 44, ; 112..119
	i32 77, i32 3, i32 23, i32 47, i32 58, i32 42, i32 5, i32 52, ; 120..127
	i32 33, i32 79, i32 58, i32 11, i32 34, i32 7, i32 16, i32 68, ; 128..135
	i32 35, i32 61, i32 6, i32 6, i32 62, i32 49, i32 7, i32 16, ; 136..143
	i32 78, i32 32, i32 28, i32 31, i32 10, i32 55, i32 42, i32 9, ; 144..151
	i32 56, i32 38, i32 68, i32 69, i32 2, i32 80, i32 11, i32 27, ; 152..159
	i32 28, i32 26 ; 160..161
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
