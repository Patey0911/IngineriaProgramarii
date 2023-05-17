; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [248 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 72
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 102
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 20
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 97
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 86
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 86
	i32 134690465, ; 6: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 110
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 52
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 87
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 50
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 67
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 121
	i32 261689757, ; 12: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 55
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 71
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 65
	i32 317030064, ; 15: Plugin.SharedTransitions.dll => 0x12e57eb0 => 23
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 41
	i32 321597661, ; 17: System.Numerics => 0x132b30dd => 34
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 69
	i32 385762202, ; 19: System.Memory.dll => 0x16fe439a => 32
	i32 393699800, ; 20: Firebase => 0x177761d8 => 5
	i32 441335492, ; 21: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 54
	i32 442521989, ; 22: Xamarin.Essentials => 0x1a605985 => 96
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 64
	i32 465846621, ; 24: mscorlib => 0x1bc4415d => 19
	i32 469710990, ; 25: System.dll => 0x1bff388e => 31
	i32 476646585, ; 26: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 65
	i32 486930444, ; 27: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 76
	i32 504143952, ; 28: Plugin.LocalNotification.dll => 0x1e0ca050 => 22
	i32 513247710, ; 29: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 17
	i32 525008092, ; 30: SkiaSharp.dll => 0x1f4afcdc => 25
	i32 526420162, ; 31: System.Transactions.dll => 0x1f6088c2 => 115
	i32 527452488, ; 32: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 110
	i32 539058512, ; 33: Microsoft.Extensions.Logging => 0x20216150 => 15
	i32 605376203, ; 34: System.IO.Compression.FileSystem => 0x24154ecb => 119
	i32 610194910, ; 35: System.Reactive.dll => 0x245ed5de => 36
	i32 627609679, ; 36: Xamarin.AndroidX.CustomView => 0x2568904f => 60
	i32 663517072, ; 37: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 92
	i32 666292255, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 46
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 40
	i32 691348768, ; 40: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 112
	i32 700284507, ; 41: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 107
	i32 720511267, ; 42: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 111
	i32 775507847, ; 43: System.IO.Compression => 0x2e394f87 => 118
	i32 789151979, ; 44: Microsoft.Extensions.Options => 0x2f0980eb => 16
	i32 809851609, ; 45: System.Drawing.Common.dll => 0x30455ad9 => 117
	i32 843511501, ; 46: Xamarin.AndroidX.Print => 0x3246f6cd => 83
	i32 886248193, ; 47: Microcharts.Droid => 0x34d31301 => 10
	i32 912572698, ; 48: Xamarin.AndroidX.Biometric => 0x3664c11a => 49
	i32 928116545, ; 49: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 102
	i32 955402788, ; 50: Newtonsoft.Json => 0x38f24a24 => 20
	i32 956575887, ; 51: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 111
	i32 967690846, ; 52: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 69
	i32 974778368, ; 53: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 1012816738, ; 54: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 85
	i32 1028951442, ; 55: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 12
	i32 1035644815, ; 56: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 45
	i32 1042160112, ; 57: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 99
	i32 1052210849, ; 58: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 73
	i32 1084122840, ; 59: Xamarin.Kotlin.StdLib => 0x409e66d8 => 109
	i32 1098259244, ; 60: System => 0x41761b2c => 31
	i32 1175144683, ; 61: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 90
	i32 1178241025, ; 62: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 80
	i32 1204270330, ; 63: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 46
	i32 1267360935, ; 64: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 91
	i32 1275534314, ; 65: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 112
	i32 1293217323, ; 66: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 62
	i32 1365406463, ; 67: System.ServiceModel.Internals.dll => 0x516272ff => 122
	i32 1376866003, ; 68: Xamarin.AndroidX.SavedState => 0x52114ed3 => 85
	i32 1395857551, ; 69: Xamarin.AndroidX.Media.dll => 0x5333188f => 77
	i32 1406073936, ; 70: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 56
	i32 1411638395, ; 71: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 37
	i32 1460219004, ; 72: Xamarin.Forms.Xaml => 0x57092c7c => 100
	i32 1462112819, ; 73: System.IO.Compression.dll => 0x57261233 => 118
	i32 1469204771, ; 74: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 44
	i32 1470490898, ; 75: Microsoft.Extensions.Primitives => 0x57a5e912 => 17
	i32 1524747670, ; 76: Plugin.LocalNotification => 0x5ae1cd96 => 22
	i32 1582372066, ; 77: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 61
	i32 1582526884, ; 78: Microcharts.Forms.dll => 0x5e5371a4 => 11
	i32 1592978981, ; 79: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 80: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 75
	i32 1624863272, ; 81: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 94
	i32 1636350590, ; 82: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 59
	i32 1639515021, ; 83: System.Net.Http.dll => 0x61b9038d => 33
	i32 1657153582, ; 84: System.Runtime => 0x62c6282e => 38
	i32 1658241508, ; 85: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 88
	i32 1658251792, ; 86: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 101
	i32 1670060433, ; 87: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 55
	i32 1698840827, ; 88: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 108
	i32 1716860169, ; 89: ProiectIP.dll => 0x66553509 => 24
	i32 1722051300, ; 90: SkiaSharp.Views.Forms => 0x66a46ae4 => 27
	i32 1729485958, ; 91: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 51
	i32 1766324549, ; 92: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 87
	i32 1770582343, ; 93: Microsoft.Extensions.Logging.dll => 0x6988f147 => 15
	i32 1776026572, ; 94: System.Core.dll => 0x69dc03cc => 29
	i32 1788241197, ; 95: Xamarin.AndroidX.Fragment => 0x6a96652d => 64
	i32 1808609942, ; 96: Xamarin.AndroidX.Loader => 0x6bcd3296 => 75
	i32 1813058853, ; 97: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 109
	i32 1813201214, ; 98: Xamarin.Google.Android.Material => 0x6c13413e => 101
	i32 1818569960, ; 99: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 81
	i32 1828688058, ; 100: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 14
	i32 1867746548, ; 101: Xamarin.Essentials.dll => 0x6f538cf4 => 96
	i32 1878053835, ; 102: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 100
	i32 1885316902, ; 103: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 47
	i32 1904755420, ; 104: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 2
	i32 1908813208, ; 105: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 104
	i32 1919157823, ; 106: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 78
	i32 1983156543, ; 107: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 108
	i32 2011961780, ; 108: System.Buffers.dll => 0x77ec19b4 => 28
	i32 2019465201, ; 109: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 73
	i32 2055257422, ; 110: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 70
	i32 2059619953, ; 111: Plugin.SharedTransitions => 0x7ac34e71 => 23
	i32 2079903147, ; 112: System.Runtime.dll => 0x7bf8cdab => 38
	i32 2090596640, ; 113: System.Numerics.Vectors => 0x7c9bf920 => 35
	i32 2097448633, ; 114: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 66
	i32 2126786730, ; 115: Xamarin.Forms.Platform.Android => 0x7ec430aa => 98
	i32 2129483829, ; 116: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 103
	i32 2181898931, ; 117: Microsoft.Extensions.Options.dll => 0x820d22b3 => 16
	i32 2192057212, ; 118: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 14
	i32 2201107256, ; 119: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 113
	i32 2201231467, ; 120: System.Net.Http => 0x8334206b => 33
	i32 2216717168, ; 121: Firebase.Auth.dll => 0x84206b70 => 4
	i32 2217644978, ; 122: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 90
	i32 2244775296, ; 123: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 76
	i32 2256548716, ; 124: Xamarin.AndroidX.MultiDex => 0x8680336c => 78
	i32 2261435625, ; 125: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 68
	i32 2279755925, ; 126: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 84
	i32 2315684594, ; 127: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 42
	i32 2409053734, ; 128: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 82
	i32 2428790861, ; 129: Plugin.Fingerprint => 0x90c4684d => 21
	i32 2465532216, ; 130: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 54
	i32 2471841756, ; 131: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 132: Java.Interop.dll => 0x93918882 => 7
	i32 2483946094, ; 133: Plugin.Fingerprint.dll => 0x940e026e => 21
	i32 2501346920, ; 134: System.Data.DataSetExtensions => 0x95178668 => 116
	i32 2505896520, ; 135: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 72
	i32 2526443681, ; 136: Xamarin.AndroidX.Biometric.dll => 0x969678a1 => 49
	i32 2581819634, ; 137: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 91
	i32 2605712449, ; 138: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 113
	i32 2620871830, ; 139: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 59
	i32 2624644809, ; 140: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 63
	i32 2633051222, ; 141: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 71
	i32 2634083588, ; 142: ProiectIP.Android => 0x9d00ed04 => 0
	i32 2701096212, ; 143: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 88
	i32 2732626843, ; 144: Xamarin.AndroidX.Activity => 0xa2e0939b => 41
	i32 2737747696, ; 145: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 44
	i32 2738405753, ; 146: ProiectIP => 0xa338c179 => 24
	i32 2766581644, ; 147: Xamarin.Forms.Core => 0xa4e6af8c => 97
	i32 2770495804, ; 148: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 107
	i32 2778768386, ; 149: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 93
	i32 2795602088, ; 150: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 26
	i32 2810250172, ; 151: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 56
	i32 2819470561, ; 152: System.Xml.dll => 0xa80db4e1 => 39
	i32 2847418871, ; 153: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 103
	i32 2853208004, ; 154: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 93
	i32 2855708567, ; 155: Xamarin.AndroidX.Transition => 0xaa36a797 => 89
	i32 2903344695, ; 156: System.ComponentModel.Composition => 0xad0d8637 => 120
	i32 2905242038, ; 157: mscorlib.dll => 0xad2a79b6 => 19
	i32 2912489636, ; 158: SkiaSharp.Views.Android => 0xad9910a4 => 26
	i32 2916838712, ; 159: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 94
	i32 2919462931, ; 160: System.Numerics.Vectors.dll => 0xae037813 => 35
	i32 2921128767, ; 161: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 43
	i32 2974793899, ; 162: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 27
	i32 2978675010, ; 163: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 62
	i32 3024354802, ; 164: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 67
	i32 3036068679, ; 165: Microcharts.Droid.dll => 0xb4f6bb47 => 10
	i32 3044182254, ; 166: FormsViewGroup => 0xb57288ee => 6
	i32 3057625584, ; 167: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 79
	i32 3058099980, ; 168: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 106
	i32 3111772706, ; 169: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3204380047, ; 170: System.Data.dll => 0xbefef58f => 114
	i32 3211777861, ; 171: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 61
	i32 3230466174, ; 172: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 104
	i32 3247949154, ; 173: Mono.Security => 0xc197c562 => 123
	i32 3258312781, ; 174: Xamarin.AndroidX.CardView => 0xc235e84d => 51
	i32 3267021929, ; 175: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 48
	i32 3289052768, ; 176: ProiectIP.Android.dll => 0xc40af660 => 0
	i32 3317135071, ; 177: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 60
	i32 3317144872, ; 178: System.Data => 0xc5b79d28 => 114
	i32 3322403133, ; 179: Firebase.dll => 0xc607d93d => 5
	i32 3340387945, ; 180: SkiaSharp => 0xc71a4669 => 25
	i32 3340431453, ; 181: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 47
	i32 3346324047, ; 182: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 80
	i32 3353484488, ; 183: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 66
	i32 3353544232, ; 184: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 95
	i32 3362522851, ; 185: Xamarin.AndroidX.Core => 0xc86c06e3 => 58
	i32 3366347497, ; 186: Java.Interop => 0xc8a662e9 => 7
	i32 3374999561, ; 187: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 84
	i32 3395150330, ; 188: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 37
	i32 3404865022, ; 189: System.ServiceModel.Internals => 0xcaf21dfe => 122
	i32 3407215217, ; 190: Xamarin.CommunityToolkit => 0xcb15fa71 => 95
	i32 3428513518, ; 191: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 13
	i32 3429136800, ; 192: System.Xml => 0xcc6479a0 => 39
	i32 3430777524, ; 193: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 194: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 63
	i32 3455791806, ; 195: Microcharts => 0xcdfb32be => 9
	i32 3476120550, ; 196: Mono.Android => 0xcf3163e6 => 18
	i32 3486566296, ; 197: System.Transactions => 0xcfd0c798 => 115
	i32 3493954962, ; 198: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 53
	i32 3494395880, ; 199: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 105
	i32 3501239056, ; 200: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 48
	i32 3509114376, ; 201: System.Xml.Linq => 0xd128d608 => 40
	i32 3536029504, ; 202: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 98
	i32 3567349600, ; 203: System.ComponentModel.Composition.dll => 0xd4a16f60 => 120
	i32 3596207933, ; 204: LiteDB.dll => 0xd659c73d => 8
	i32 3618140916, ; 205: Xamarin.AndroidX.Preference => 0xd7a872f4 => 82
	i32 3627220390, ; 206: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 83
	i32 3629588173, ; 207: LiteDB => 0xd8571ecd => 8
	i32 3632359727, ; 208: Xamarin.Forms.Platform => 0xd881692f => 99
	i32 3633644679, ; 209: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 43
	i32 3641597786, ; 210: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 70
	i32 3668042751, ; 211: Microcharts.dll => 0xdaa1e3ff => 9
	i32 3672681054, ; 212: Mono.Android.dll => 0xdae8aa5e => 18
	i32 3676310014, ; 213: System.Web.Services.dll => 0xdb2009fe => 121
	i32 3682565725, ; 214: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 50
	i32 3684561358, ; 215: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 53
	i32 3684933406, ; 216: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 2
	i32 3689375977, ; 217: System.Drawing.Common => 0xdbe768e9 => 117
	i32 3706696989, ; 218: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 57
	i32 3718780102, ; 219: Xamarin.AndroidX.Annotation => 0xdda814c6 => 42
	i32 3724971120, ; 220: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 79
	i32 3731644420, ; 221: System.Reactive => 0xde6c6004 => 36
	i32 3748608112, ; 222: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 30
	i32 3758932259, ; 223: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 68
	i32 3786282454, ; 224: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 52
	i32 3822602673, ; 225: Xamarin.AndroidX.Media => 0xe3d849b1 => 77
	i32 3829621856, ; 226: System.Numerics.dll => 0xe4436460 => 34
	i32 3841636137, ; 227: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 12
	i32 3885922214, ; 228: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 89
	i32 3896760992, ; 229: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 58
	i32 3903721208, ; 230: Microcharts.Forms => 0xe8ae0ef8 => 11
	i32 3920810846, ; 231: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 119
	i32 3921031405, ; 232: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 92
	i32 3931092270, ; 233: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 81
	i32 3945713374, ; 234: System.Data.DataSetExtensions.dll => 0xeb2ecede => 116
	i32 3955647286, ; 235: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 45
	i32 3967165417, ; 236: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 105
	i32 3970018735, ; 237: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 106
	i32 4024013275, ; 238: Firebase.Auth => 0xefd991db => 4
	i32 4025784931, ; 239: System.Memory => 0xeff49a63 => 32
	i32 4105002889, ; 240: Mono.Security.dll => 0xf4ad5f89 => 123
	i32 4126470640, ; 241: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 13
	i32 4151237749, ; 242: System.Core => 0xf76edc75 => 29
	i32 4182413190, ; 243: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 74
	i32 4213026141, ; 244: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 30
	i32 4256097574, ; 245: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 57
	i32 4260525087, ; 246: System.Buffers => 0xfdf2741f => 28
	i32 4292120959 ; 247: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 74
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [248 x i32] [
	i32 72, i32 102, i32 20, i32 97, i32 86, i32 86, i32 110, i32 52, ; 0..7
	i32 87, i32 50, i32 67, i32 121, i32 55, i32 71, i32 65, i32 23, ; 8..15
	i32 41, i32 34, i32 69, i32 32, i32 5, i32 54, i32 96, i32 64, ; 16..23
	i32 19, i32 31, i32 65, i32 76, i32 22, i32 17, i32 25, i32 115, ; 24..31
	i32 110, i32 15, i32 119, i32 36, i32 60, i32 92, i32 46, i32 40, ; 32..39
	i32 112, i32 107, i32 111, i32 118, i32 16, i32 117, i32 83, i32 10, ; 40..47
	i32 49, i32 102, i32 20, i32 111, i32 69, i32 6, i32 85, i32 12, ; 48..55
	i32 45, i32 99, i32 73, i32 109, i32 31, i32 90, i32 80, i32 46, ; 56..63
	i32 91, i32 112, i32 62, i32 122, i32 85, i32 77, i32 56, i32 37, ; 64..71
	i32 100, i32 118, i32 44, i32 17, i32 22, i32 61, i32 11, i32 3, ; 72..79
	i32 75, i32 94, i32 59, i32 33, i32 38, i32 88, i32 101, i32 55, ; 80..87
	i32 108, i32 24, i32 27, i32 51, i32 87, i32 15, i32 29, i32 64, ; 88..95
	i32 75, i32 109, i32 101, i32 81, i32 14, i32 96, i32 100, i32 47, ; 96..103
	i32 2, i32 104, i32 78, i32 108, i32 28, i32 73, i32 70, i32 23, ; 104..111
	i32 38, i32 35, i32 66, i32 98, i32 103, i32 16, i32 14, i32 113, ; 112..119
	i32 33, i32 4, i32 90, i32 76, i32 78, i32 68, i32 84, i32 42, ; 120..127
	i32 82, i32 21, i32 54, i32 1, i32 7, i32 21, i32 116, i32 72, ; 128..135
	i32 49, i32 91, i32 113, i32 59, i32 63, i32 71, i32 0, i32 88, ; 136..143
	i32 41, i32 44, i32 24, i32 97, i32 107, i32 93, i32 26, i32 56, ; 144..151
	i32 39, i32 103, i32 93, i32 89, i32 120, i32 19, i32 26, i32 94, ; 152..159
	i32 35, i32 43, i32 27, i32 62, i32 67, i32 10, i32 6, i32 79, ; 160..167
	i32 106, i32 3, i32 114, i32 61, i32 104, i32 123, i32 51, i32 48, ; 168..175
	i32 0, i32 60, i32 114, i32 5, i32 25, i32 47, i32 80, i32 66, ; 176..183
	i32 95, i32 58, i32 7, i32 84, i32 37, i32 122, i32 95, i32 13, ; 184..191
	i32 39, i32 1, i32 63, i32 9, i32 18, i32 115, i32 53, i32 105, ; 192..199
	i32 48, i32 40, i32 98, i32 120, i32 8, i32 82, i32 83, i32 8, ; 200..207
	i32 99, i32 43, i32 70, i32 9, i32 18, i32 121, i32 50, i32 53, ; 208..215
	i32 2, i32 117, i32 57, i32 42, i32 79, i32 36, i32 30, i32 68, ; 216..223
	i32 52, i32 77, i32 34, i32 12, i32 89, i32 58, i32 11, i32 119, ; 224..231
	i32 92, i32 81, i32 116, i32 45, i32 105, i32 106, i32 4, i32 32, ; 232..239
	i32 123, i32 13, i32 29, i32 74, i32 30, i32 57, i32 28, i32 74 ; 248..247
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
